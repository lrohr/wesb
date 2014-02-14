package com.ncl.fusebox;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.URL;
import java.net.URLConnection;
import java.util.Iterator;

import javax.ejb.TimedObject;
import javax.ejb.Timer;
import javax.ejb.TimerService;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

/**
 * Bean implementation class for Enterprise Bean: HealthCheckTimer
 */
public class HealthCheckTimerBean implements javax.ejb.SessionBean, TimedObject {

	static final long serialVersionUID = 3206093459760846163L;
	private javax.ejb.SessionContext mySessionCtx;
	private Log log = LogFactory.getLog(HealthCheckTimerBean.class.getName());

	/**
	 * getSessionContext
	 */
	public javax.ejb.SessionContext getSessionContext() {
		return mySessionCtx;
	}

	/**
	 * setSessionContext
	 */
	public void setSessionContext(javax.ejb.SessionContext ctx) {
		mySessionCtx = ctx;
	}

	/**
	 * ejbCreate
	 */
	public void ejbCreate() throws javax.ejb.CreateException {
	}

	/**
	 * ejbActivate
	 */
	public void ejbActivate() {
	}

	/**
	 * ejbPassivate
	 */
	public void ejbPassivate() {
	}

	/**
	 * ejbRemove
	 */
	public void ejbRemove() {
	}
	
	private String label ="HealthCheckTimer";


	public void ejbTimeout(Timer t) {
		log.info(t.getInfo()+ " Timer called");
		InitialContext ctx;
		try{
			ctx = new InitialContext();
			URL url= (URL)ctx.lookup("java:comp/env/FuseBoxHttpEndpoint");
			log.info("Endpoint url"+url.toExternalForm());
			URL fileURL= (URL)ctx.lookup("java:comp/env/requestFileUrl");
			log.info("fileURL url"+fileURL.getPath());
	        
	        // Send data
	        URLConnection conn = url.openConnection();
	        conn.setDoOutput(true);
	        OutputStreamWriter wr = new OutputStreamWriter(conn.getOutputStream());
	        BufferedReader reader = new BufferedReader(new InputStreamReader(fileURL.openStream()));
	        log.info("Reading Request File and Posting");
	        String line;
	        while ( (line = reader.readLine()) != null){
	        	wr.write(line);
	        }	        
	        wr.flush();
	        log.info("Reading response");
	        // Get the response
	        BufferedReader rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
	        while ((line = rd.readLine()) != null) {
	           log.info(line);
	        }
	        wr.close();
	        rd.close();
	        
	        
		}catch(Exception e){
			e.printStackTrace();
			log.error(e.getMessage());
		}
		
	}

	public void createTimer(String name, int frequency) {
		TimerService theTimerService = mySessionCtx.getTimerService();
		InitialContext ctx;
		try {
			ctx = new InitialContext();
			Context contextEnv = (Context) ctx.lookup("java:comp/env"); 
			Integer freq = (Integer) contextEnv.lookup("HealthCheckTimerFrequency"); 
			
			if( freq != null)
				theTimerService.createTimer(freq,freq, label);
			log.info("Timer "+ label +" Created with frequeny(ms)" +freq );
		} catch (NamingException e) {
			e.printStackTrace();
			theTimerService.createTimer(10000,10000, label);
		}                  
	}

	public void cancelTimer(String name) {
		TimerService theTimerService = mySessionCtx.getTimerService();
		Iterator timers = theTimerService.getTimers().iterator();
		if(timers.hasNext() ){
			Timer timer = (Timer) timers.next();			
			if ( label.equalsIgnoreCase(timer.getInfo().toString())){
				timer.cancel();
				log.info("Timer "+ name+" Canceled");
			}
		}
		
	}

	public void runHealthCheck() {
		
	}

	public String getStatus(String name) {
		TimerService theTimerService = mySessionCtx.getTimerService();
		Iterator timers = theTimerService.getTimers().iterator();
		if(timers.hasNext() ){
			Timer timer = (Timer) timers.next();
			if ( label.equalsIgnoreCase(timer.getInfo().toString())){
				return "Running";
			}			
		}
		return "Stopped";
	}

}

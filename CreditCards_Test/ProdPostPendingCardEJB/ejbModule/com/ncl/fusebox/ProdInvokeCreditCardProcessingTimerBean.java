package com.ncl.fusebox;
import java.util.Iterator;
import java.util.List;

import javax.ejb.TimedObject;
import javax.ejb.Timer;
import javax.ejb.TimerService;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;


/**
 * Bean implementation class for Enterprise Bean: InvokeCreditCardProcessingTimer
 */
public class ProdInvokeCreditCardProcessingTimerBean
implements
javax.ejb.SessionBean ,TimedObject{

	static final long serialVersionUID = 3206093459760846163L;

	private Log log = LogFactory.getLog(ProdInvokeCreditCardProcessingTimerBean.class.getName());
	private String label ="ProdPostPendingCardTimer";

	private javax.ejb.SessionContext mySessionCtx;
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
	public void createTimer(String name,int timeout){
		TimerService theTimerService = mySessionCtx.getTimerService();
		//If the timer does not exists
		if(!checkIfTimerExists(name)){
			theTimerService.createTimer(timeout,timeout, name);
			log.info("Timer "+ name +" Created with frequeny(ms):" +timeout );
		}else{
			log.info("Timer "+ name + " already exists" );
		}
	}	
	public void cancelTimer(String name){
		TimerService theTimerService = mySessionCtx.getTimerService();
		Iterator timers = theTimerService.getTimers().iterator();
		if(timers.hasNext() ){
			Timer timer = (Timer) timers.next();
			if ( name.equalsIgnoreCase(timer.getInfo().toString())){
				log.info("Timer "+name + " Canceled");
			}
			timer.cancel();
		}
	}	
	public void ejbTimeout(Timer theTimer) {
		log.debug("Timer Called");
		runAdHoc();		
	}
	public String getStatus(){
		TimerService theTimerService = mySessionCtx.getTimerService();
		Iterator timers = theTimerService.getTimers().iterator();
		if(timers.hasNext() ){
			Timer timer = (Timer) timers.next();			
			if ( label.equalsIgnoreCase(timer.getInfo().toString())){
				return "Running";
			}else{
				log.info(label+":did not match TimerName:"+timer.getInfo().toString());				
			}
		}
		return "Stopped";
	}
	private boolean checkIfTimerExists(String timerName){
		TimerService theTimerService = mySessionCtx.getTimerService();
		Iterator timers = theTimerService.getTimers().iterator();
		if(timers.hasNext() ){
			Timer timer = (Timer) timers.next();
			log.info("Timer :" + timer.getInfo().toString());
			if ( timerName.equalsIgnoreCase(timer.getInfo().toString())){
				return true;
			}			
		}
		return false;
	}
	public void runAdHoc(){
		List<NclCreditCardInfo> list = DbHelper.readPendingCreditCard();
		if ( list.size()>0){
			log.info("Found pending card txn:"+ list.size());
		}else{
			log.debug("No Pendingcardtransactions found");
		}
		QueueHelper helper = new QueueHelper();
		helper.publishCreditCardMsg(list);
	}	
}

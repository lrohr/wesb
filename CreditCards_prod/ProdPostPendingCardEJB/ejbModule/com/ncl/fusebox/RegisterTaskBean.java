package com.ncl.fusebox;

import java.rmi.RemoteException;

import javax.ejb.CreateException;
import javax.ejb.TimerService;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.rmi.PortableRemoteObject;


/**
 * Bean implementation class for Enterprise Bean: RegisterTask
 */
public class RegisterTaskBean implements javax.ejb.SessionBean {

	static final long serialVersionUID = 3206093459760846163L;
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
	
	public boolean start(){
		System.out.println("Module Started");
		/*
		try {
			InitialContext ctx = new InitialContext();
			InvokeCreditCardProcessingTimerHome home = (InvokeCreditCardProcessingTimerHome)
			PortableRemoteObject.narrow(ctx.lookup("ejb/com/ncl/fusebox/InvokeCreditCardProcessingTimerHome"),
					InvokeCreditCardProcessingTimerHome.class);
			try {
				InvokeCreditCardProcessingTimer bean = home.create();
				bean.createTimer();			
			} catch (RemoteException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (CreateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} catch (NamingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}*/
		return true;
	}
	
	public void stop(){
		TimerService theTimerService = mySessionCtx.getTimerService();
		theTimerService.getTimers();
		System.out.println("Module Stopped");
	}
}

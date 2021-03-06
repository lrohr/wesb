package com.ncl.fusebox;

import com.ibm.websphere.scheduler.TaskStatus;

/**
 * Bean implementation class for Enterprise Bean: PostPendingCardTransaction
 */
public class ProdPostPendingCardTransactionBean implements javax.ejb.SessionBean {

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
	
	public void process(TaskStatus task){
		System.out.println("Task Called");
	}
}

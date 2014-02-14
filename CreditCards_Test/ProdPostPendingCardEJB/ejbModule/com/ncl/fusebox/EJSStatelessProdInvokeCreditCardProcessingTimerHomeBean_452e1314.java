package com.ncl.fusebox;

import com.ibm.ejs.container.*;

/**
 * EJSStatelessInvokeCreditCardProcessingTimerHomeBean_452e1314
 */
public class EJSStatelessProdInvokeCreditCardProcessingTimerHomeBean_452e1314 extends EJSHome {
	static final long serialVersionUID = 61;
	/**
	 * EJSStatelessInvokeCreditCardProcessingTimerHomeBean_452e1314
	 */
	public EJSStatelessProdInvokeCreditCardProcessingTimerHomeBean_452e1314() throws java.rmi.RemoteException {
		super();	}
	/**
	 * create
	 */
	public com.ncl.fusebox.ProdInvokeCreditCardProcessingTimer create() throws javax.ejb.CreateException, java.rmi.RemoteException {
BeanO beanO = null;
com.ncl.fusebox.ProdInvokeCreditCardProcessingTimer result = null;
boolean createFailed = false;
try {
	result = (com.ncl.fusebox.ProdInvokeCreditCardProcessingTimer) super.createWrapper(null);
}
catch (javax.ejb.CreateException ex) {
	createFailed = true;
	throw ex;
} catch (java.rmi.RemoteException ex) {
	createFailed = true;
	throw ex;
} catch (Throwable ex) {
	createFailed = true;
	throw new CreateFailureException(ex);
} finally {
	if (createFailed) {
		super.createFailure(beanO);
	}
}
return result;	}
}

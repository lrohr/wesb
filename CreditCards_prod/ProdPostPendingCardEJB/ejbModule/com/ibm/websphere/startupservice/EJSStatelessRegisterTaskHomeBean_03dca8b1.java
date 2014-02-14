package com.ibm.websphere.startupservice;

import com.ibm.ejs.container.*;

/**
 * EJSStatelessRegisterTaskHomeBean_03dca8b1
 */
public class EJSStatelessRegisterTaskHomeBean_03dca8b1 extends EJSHome {
	static final long serialVersionUID = 61;
	/**
	 * EJSStatelessRegisterTaskHomeBean_03dca8b1
	 */
	public EJSStatelessRegisterTaskHomeBean_03dca8b1() throws java.rmi.RemoteException {
		super();	}
	/**
	 * create
	 */
	public com.ibm.websphere.startupservice.AppStartUp create() throws javax.ejb.CreateException, java.rmi.RemoteException {
BeanO beanO = null;
com.ibm.websphere.startupservice.AppStartUp result = null;
boolean createFailed = false;
try {
	result = (com.ibm.websphere.startupservice.AppStartUp) super.createWrapper(null);
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

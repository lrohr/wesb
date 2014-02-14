package com.ibm.websphere.scheduler;

import com.ibm.ejs.container.*;

/**
 * EJSRemoteStatelessPostPendingCardTransaction_d76337a2
 */
public class EJSRemoteStatelessProdPostPendingCardTransaction_d76337a2 extends EJSWrapper implements TaskHandler {
	/**
	 * EJSRemoteStatelessPostPendingCardTransaction_d76337a2
	 */
	public EJSRemoteStatelessProdPostPendingCardTransaction_d76337a2() throws java.rmi.RemoteException {
		super();	}
	/**
	 * process
	 */
	public void process(com.ibm.websphere.scheduler.TaskStatus arg0) throws java.rmi.RemoteException {
		EJSDeployedSupport _EJS_s = container.getEJSDeployedSupport(this);
		Object[] _jacc_parms = null;
		
		try {
			if (container.doesJaccNeedsEJBArguments( this ))
			{
				_jacc_parms = new Object[1];
				_jacc_parms[0] = arg0;
			}
	com.ncl.fusebox.ProdPostPendingCardTransactionBean beanRef = (com.ncl.fusebox.ProdPostPendingCardTransactionBean)container.preInvoke(this, 0, _EJS_s, _jacc_parms);
			beanRef.process(arg0);
		}
		catch (java.rmi.RemoteException ex) {
			_EJS_s.setUncheckedException(ex);
		}
		catch (Throwable ex) {
			_EJS_s.setUncheckedException(ex);
			throw new java.rmi.RemoteException("bean method raised unchecked exception", ex);
		}

		finally {
			try{
				container.postInvoke(this, 0, _EJS_s);
			} finally {
				container.putEJSDeployedSupport(_EJS_s);
			}
		}
		return ;
	}
}

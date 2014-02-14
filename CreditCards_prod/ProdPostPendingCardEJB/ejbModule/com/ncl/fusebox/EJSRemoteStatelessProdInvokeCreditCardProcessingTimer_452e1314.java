package com.ncl.fusebox;

import com.ibm.ejs.container.*;

/**
 * EJSRemoteStatelessInvokeCreditCardProcessingTimer_452e1314
 */
public class EJSRemoteStatelessProdInvokeCreditCardProcessingTimer_452e1314 extends EJSWrapper implements ProdInvokeCreditCardProcessingTimer {
	/**
	 * EJSRemoteStatelessInvokeCreditCardProcessingTimer_452e1314
	 */
	public EJSRemoteStatelessProdInvokeCreditCardProcessingTimer_452e1314() throws java.rmi.RemoteException {
		super();	}
	/**
	 * getStatus
	 */
	public java.lang.String getStatus() throws java.rmi.RemoteException {
		EJSDeployedSupport _EJS_s = container.getEJSDeployedSupport(this);
		Object[] _jacc_parms = null;
		java.lang.String _EJS_result = null;
		try {
			if (container.doesJaccNeedsEJBArguments( this ))
			{
				_jacc_parms = new Object[0];
			}
	com.ncl.fusebox.ProdInvokeCreditCardProcessingTimerBean beanRef = (com.ncl.fusebox.ProdInvokeCreditCardProcessingTimerBean)container.preInvoke(this, 0, _EJS_s, _jacc_parms);
			_EJS_result = beanRef.getStatus();
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
		return _EJS_result;
	}
	/**
	 * cancelTimer
	 */
	public void cancelTimer(java.lang.String name) throws java.rmi.RemoteException {
		EJSDeployedSupport _EJS_s = container.getEJSDeployedSupport(this);
		Object[] _jacc_parms = null;
		
		try {
			if (container.doesJaccNeedsEJBArguments( this ))
			{
				_jacc_parms = new Object[1];
				_jacc_parms[0] = name;
			}
	com.ncl.fusebox.ProdInvokeCreditCardProcessingTimerBean beanRef = (com.ncl.fusebox.ProdInvokeCreditCardProcessingTimerBean)container.preInvoke(this, 1, _EJS_s, _jacc_parms);
			beanRef.cancelTimer(name);
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
				container.postInvoke(this, 1, _EJS_s);
			} finally {
				container.putEJSDeployedSupport(_EJS_s);
			}
		}
		return ;
	}
	/**
	 * createTimer
	 */
	public void createTimer(java.lang.String name, int timeout) throws java.rmi.RemoteException {
		EJSDeployedSupport _EJS_s = container.getEJSDeployedSupport(this);
		Object[] _jacc_parms = null;
		
		try {
			if (container.doesJaccNeedsEJBArguments( this ))
			{
				_jacc_parms = new Object[2];
				_jacc_parms[0] = name;
				_jacc_parms[1] = new java.lang.Integer(timeout);
			}
	com.ncl.fusebox.ProdInvokeCreditCardProcessingTimerBean beanRef = (com.ncl.fusebox.ProdInvokeCreditCardProcessingTimerBean)container.preInvoke(this, 2, _EJS_s, _jacc_parms);
			beanRef.createTimer(name, timeout);
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
				container.postInvoke(this, 2, _EJS_s);
			} finally {
				container.putEJSDeployedSupport(_EJS_s);
			}
		}
		return ;
	}
	/**
	 * runAdHoc
	 */
	public void runAdHoc() throws java.rmi.RemoteException {
		EJSDeployedSupport _EJS_s = container.getEJSDeployedSupport(this);
		Object[] _jacc_parms = null;
		
		try {
			if (container.doesJaccNeedsEJBArguments( this ))
			{
				_jacc_parms = new Object[0];
			}
	com.ncl.fusebox.ProdInvokeCreditCardProcessingTimerBean beanRef = (com.ncl.fusebox.ProdInvokeCreditCardProcessingTimerBean)container.preInvoke(this, 3, _EJS_s, _jacc_parms);
			beanRef.runAdHoc();
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
				container.postInvoke(this, 3, _EJS_s);
			} finally {
				container.putEJSDeployedSupport(_EJS_s);
			}
		}
		return ;
	}
}

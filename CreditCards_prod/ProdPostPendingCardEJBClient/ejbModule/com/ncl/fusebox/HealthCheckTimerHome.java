package com.ncl.fusebox;

/**
 * Home interface for Enterprise Bean: HealthCheckTimer
 */
public interface HealthCheckTimerHome extends javax.ejb.EJBHome {

	/**
	 * Creates a default instance of Session Bean: HealthCheckTimer
	 */
	public com.ncl.fusebox.HealthCheckTimer create()
		throws javax.ejb.CreateException,
		java.rmi.RemoteException;
}

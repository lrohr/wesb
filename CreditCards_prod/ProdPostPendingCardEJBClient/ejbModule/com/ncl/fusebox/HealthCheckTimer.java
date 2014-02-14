package com.ncl.fusebox;

/**
 * Remote interface for Enterprise Bean: HealthCheckTimer
 */
public interface HealthCheckTimer
	extends
		javax.ejb.EJBObject
		 {
	public void createTimer(String name,int frequency) throws java.rmi.RemoteException;
	public void cancelTimer(String name) throws java.rmi.RemoteException;
	public void runHealthCheck() throws java.rmi.RemoteException;
	public String getStatus(String name) throws java.rmi.RemoteException;
}

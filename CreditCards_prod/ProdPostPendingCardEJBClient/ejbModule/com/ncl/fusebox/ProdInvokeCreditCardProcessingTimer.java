package com.ncl.fusebox;

/**
 * Remote interface for Enterprise Bean: ProdInvokeCreditCardProcessingTimer
 */
public interface ProdInvokeCreditCardProcessingTimer extends javax.ejb.EJBObject{
	public void createTimer(String name,int timeout) throws java.rmi.RemoteException;
	public void cancelTimer(String name) throws java.rmi.RemoteException;
	public void runAdHoc() throws java.rmi.RemoteException;
	public String getStatus() throws java.rmi.RemoteException;
}

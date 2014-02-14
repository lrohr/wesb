package com.ncl.fusebox;

/**
 * Home interface for Enterprise Bean: ProdInvokeCreditCardProcessingTimer
 */
public interface ProdInvokeCreditCardProcessingTimerHome extends javax.ejb.EJBHome {

	/**
	 * Creates a default instance of Session Bean: InvokeCreditCardProcessingTimer
	 */
	public com.ncl.fusebox.ProdInvokeCreditCardProcessingTimer create()
		throws javax.ejb.CreateException,
		java.rmi.RemoteException;
}

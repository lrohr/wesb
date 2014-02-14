

import java.io.IOException;
import java.rmi.RemoteException;

import javax.ejb.CreateException;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.rmi.PortableRemoteObject;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ncl.fusebox.HealthCheckTimer;
import com.ncl.fusebox.HealthCheckTimerHome;
import com.ncl.fusebox.ProdInvokeCreditCardProcessingTimer;
import com.ncl.fusebox.ProdInvokeCreditCardProcessingTimerHome;

/**
 * Servlet implementation class ProdManageTimerServlet
 */
public class ProdManageTimerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ProdManageTimerServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String action =  request.getParameter("action");
		String component =  request.getParameter("component");
		Integer timeout = 10000;
		if (request.getParameter("timeout") != null){
			timeout =  Integer.valueOf(request.getParameter("timeout"));
		}

		try {
			InitialContext ctx = new InitialContext();
			if ( "fuseboxTimer".equalsIgnoreCase(component)){
				ProdInvokeCreditCardProcessingTimerHome home = (ProdInvokeCreditCardProcessingTimerHome)
				PortableRemoteObject.narrow(ctx.lookup("java:comp/env/ejb/ProdInvokeCreditCardProcessingTimer"),
						ProdInvokeCreditCardProcessingTimerHome.class);
				ProdInvokeCreditCardProcessingTimer bean = home.create();
				if ( "start".equalsIgnoreCase(action)){
					bean.createTimer("ProdPostPendingCardTimer",timeout);	
				}
				if ( "stop".equalsIgnoreCase(action)){
					bean.cancelTimer("ProdPostPendingCardTimer");
				}
			}
		} catch (RemoteException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (CreateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();

		} catch (NamingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		response.sendRedirect("/ProdRegisterCreditCardTimer/ProdManageCreditCardTimer.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

	}

}

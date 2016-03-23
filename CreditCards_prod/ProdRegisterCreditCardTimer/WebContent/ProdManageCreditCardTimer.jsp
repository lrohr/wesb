<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page
	import="javax.naming.InitialContext,javax.rmi.PortableRemoteObject,com.ncl.fusebox.*"%>
<%
	ProdInvokeCreditCardProcessingTimer bean = null;
	String status="Stopped";
	try {
		InitialContext ctx = new InitialContext();
		ProdInvokeCreditCardProcessingTimerHome home = (ProdInvokeCreditCardProcessingTimerHome) PortableRemoteObject
				.narrow(ctx.lookup("java:comp/env/ejb/ProdInvokeCreditCardProcessingTimer"),ProdInvokeCreditCardProcessingTimerHome.class);
		bean = home.create();
		status = bean.getStatus();

	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Fusebox Production Timer</title>
<script type="text/javascript">
	function invokeTimerServlet(action){
		var timeout=document.TimerForm.timeout.value;
		if ( timeout < 1000){
			alert("Timeout too low");
		}else{
			var loc = "/ProdRegisterCreditCardTimer/ProdManageTimerServlet?action=" + action+ "&component=fuseboxTimer&"+"timeout="+document.TimerForm.timeout.value;
			//alert("Redirecting to "+ loc);
			window.location.href=loc;
		}
	}

</script>

</head>
<body>
<center>
<h1>Fusebox Timer - Prod 11/28/2015</h1>
</center>
<p></p>


<form name="TimerForm">
<table>
	<tr>
		<td>
			<%
				if( "Stopped".equalsIgnoreCase(status)){
			%>
			<input type="button" name="createFuseBoxTimer" value="Start FuseBox Timer" onclick=invokeTimerServlet("start")>
			<%
				}else{
			%>
				<input type="button" name="createFuseBoxTimer" value="Start FuseBox Timer" onclick=invokeTimerServlet("start") disabled="true">			
			<%
				}
			 %>
		</td>
		<td>Timer frequency</td>
		<td><input type="text" name="timeout" value="2000" /></td>
	</tr>
	<tr>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>
			<%
				if( "Stopped".equalsIgnoreCase(status)){
			%>
			<input type="button" name="cancelFuseBoxTimer" value="Stop FuseBox Timer" onclick=invokeTimerServlet("stop") disabled="true">
			<%
				}else{
			%>
				<input type="button" name="cancelFuseBoxTimer" value="Stop FuseBox Timer" onclick=invokeTimerServlet("stop")>			
			<%
				}
			 %>
		</td>
		<td></td>
		<td></td>
	</tr>
	<tr>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td colspan="2" ><font size="4"><b>Current Status:</b><%=status%></font></td>
		<td></td>
	</tr>
</table>
</form>

</body>
</html>
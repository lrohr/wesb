package com.ncl.wesb;

import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

import com.ibm.websphere.bo.BOFactory;
import com.ibm.websphere.sca.Service;
import com.ibm.websphere.sca.ServiceManager;
import com.ibm.websphere.sibx.smobo.ServiceMessageObject;
import commonj.sdo.DataObject;

public class ErrorHandlerUtils {

	private static final String CLASS_NAME = "com.ncl.wesb.ErrorHandlerUtils";
	private static final String ERROR_OPERATION = "handleAndGetResponse";
	private static final String ERROR_PARTNER = "ErrorHandlerInterfacePartner";
	// private static final String ERROR_OPERATION_ONE_WAY = "handle";

	private static BOFactory boFactory;
	private static Service errorHandlerService;

	/**
	 * This is the error handler routine which creates, populates and returns a
	 * SMO. It accepts a SMO and passes the error info to the ErrorHandlerMod.
	 * Then it creates the appropriate response SMO to send back to the client.
	 * 
	 * This method is to be used by the Generic_Service module only. This is the
	 * service gateway module and only contains the input request as a string of
	 * XML.
	 * 
	 * @param inputSMO
	 * @return response SMO to send back to the client.
	 */
	public static ServiceMessageObject handleGenericSMOAndGetResponseSMO(
			ServiceMessageObject inputSMO) {
		entering("handleGenericSMOAndGetResponseSMO");

		/* Create the error handler input BO */
		DataObject errorHandlerInputBO = createGenericErrorHandlerInputBO(inputSMO);
		logBO("errorHandlerInputBO", errorHandlerInputBO);

		/* Invoke the Error handler reference */
		DataObject errorHandlerOutputBO = (DataObject) getErrorHandlerService()
				.invoke(ERROR_OPERATION, errorHandlerInputBO);
		DataObject response = errorHandlerOutputBO.getDataObject("response");
		logBO("errorHandlerOutputBO", errorHandlerOutputBO);
		logBO("response", response);

		/* Create & return the response SMO */
		ServiceMessageObject responseSMO = createGenericResponseSMO(response);
		logBO("responseSMO", responseSMO);
		exiting("handleGenericSMOAndGetResponseSMO");
		return responseSMO;
	}

	public static ServiceMessageObject createGenericResponseSMO(
			DataObject errorHandlerResponseBO) {
		entering("createGenericResponseSMO");
		logBO("errorHandlerResponseBO", errorHandlerResponseBO);

		ServiceMessageObject genericResponseSMO = NCLDataObjectUtils
				.createGenericServiceResponseSMO();
		String responseXML = NCLDataObjectUtils
				.doToString(errorHandlerResponseBO);
		DataObject body = (DataObject) genericResponseSMO.getBody();
		body.createDataObject("Request_ResponseResponse");
		body.setString("Request_ResponseResponse/message", responseXML);

		exiting("createGenericResponseSMO");
		return genericResponseSMO;
	}

	// /**
	// * This is the error handler routine which creates, populates and returns
	// a
	// * SMO. It accepts a SMO and passes the error info to the ErrorHandlerMod.
	// * Then it creates the appropriate response SMO to send back to the
	// client.
	// *
	// * @param inputSMO
	// * @return response SMO to send back to the client.
	// */
	// public static ServiceMessageObject handleSMOAndGetResponseSMO(
	// ServiceMessageObject inputSMO) {
	// entering("handleSMOAndGetResponseSMO");
	//
	// /* Create the error handler input BO */
	// DataObject errorHandlerInputBO = createErrorHandlerInputBO(inputSMO);
	// logBO("errorHandlerInputBO", errorHandlerInputBO);
	//
	// /* Invoke the Error handler reference */
	// DataObject errorHandlerOutputBO = (DataObject) getErrorHandlerService()
	// .invoke(ERROR_OPERATION, errorHandlerInputBO);
	// DataObject response = errorHandlerOutputBO.getDataObject("response");
	// logBO("errorHandlerOutputBO", errorHandlerOutputBO);
	// logBO("response", response);
	//
	// /* Create & return the response SMO */
	// ServiceMessageObject responseSMO = createNCLResponseSMO(response);
	// logBO("responseSMO", responseSMO);
	// exiting("handleSMOAndGetResponseSMO");
	// return responseSMO;
	// }

	// /**
	// * This is the error handler routine which doesn't return a message. It
	// * accepts a SMO and passes the error info to the ErrorHandlerMod.
	// *
	// * NOT YET USED. Will be used for 1-way error handling routines that
	// * do not require the creation of a response message.
	// *
	// * @param inputSMO
	// * @return
	// */
	// public static void handle(ServiceMessageObject inputSMO) {
	// /* Create the error handler input BO */
	// DataObject errorHandlerInputBO = createErrorHandlerInputBO(inputSMO);
	// errorHandlerService
	// .invoke(ERROR_OPERATION_ONE_WAY, errorHandlerInputBO);
	// }

	/**
	 * This method is invoked inside ErrorHandlerMod, in the request flow,
	 * in custom mediation handleGenericErrorAndGetResponse.
	 * 
	 * Creates the response SMO containing the correct message type
	 * depending on the input string of XML.
	 * 
	 * @param requestXmlStr the inputed string of XML
	 * @param warningMsg the warning message to put in the response
	 * @return the SMO to return from ErrorHandlerMod
	 */
	public static ServiceMessageObject createErrorHandlerResponseSMO(
			String requestXmlStr, String warningMsg) {
		entering("createErrorHandlerResponseSMO");
		logFine("requestXmlStr: " + requestXmlStr);

		ServiceMessageObject NCLResponseSMO = NCLDataObjectUtils
				.createErrorHandlerResponseSMO();
		logBO("NCLResponseSMO", NCLResponseSMO);
		DataObject responseBO = null;

		if (requestXmlStr.contains("NCL_CruiseUserAuthentication")) {
			responseBO = NCLDataObjectUtils
					.createNCL_CruiseUserAuthenticationRS();

		} else if (requestXmlStr.contains("NCL_CruiseGroupContract")) {
			responseBO = NCLDataObjectUtils.createNCL_CruiseGroupContractRS();

		} else if (requestXmlStr.contains("NCL_CruiseFitConfirmation")) {
			responseBO = NCLDataObjectUtils.createNCL_CruiseFitConfirmationRS();

		} else if (requestXmlStr.contains("NCL_CruiseGroupAccountingWorkup")) {
			responseBO = NCLDataObjectUtils
					.createNCL_CruiseGroupAccountingWorkupRS();

		} else if (requestXmlStr.contains("NCL_CruiseLinkReservation")) {
			responseBO = NCLDataObjectUtils.createNCL_CruiseLinkReservationRS();

		} else if (requestXmlStr.contains("NCL_CruiseRetrieveClient")) {
			responseBO = NCLDataObjectUtils.createNCL_CruiseRetrieveClientRS();

		} else if (requestXmlStr.contains("NCL_CruiseRegisterWebAccess")) {
			responseBO = NCLDataObjectUtils
					.createNCL_CruiseRegisterWebAccessRS();

		} else if (requestXmlStr.contains("NCL_CruiseRetrieveAgency")) {
			responseBO = NCLDataObjectUtils.createNCL_CruiseRetrieveAgencyRS();

		} else if (requestXmlStr.contains("NCL_CruiseRetrieveAgent")) {
			responseBO = NCLDataObjectUtils.createNCL_CruiseRetrieveAgentRS();

		} else if (requestXmlStr.contains("NCL_CruiseBookingPayment")) {
			responseBO = NCLDataObjectUtils.createNCL_CruiseBookingPaymentRS();

		} else if (requestXmlStr.contains("NCL_CruiseBookPackages")) {
			responseBO = NCLDataObjectUtils.createNCL_CruiseBookPackagesRS();

		} else if (requestXmlStr.contains("NCL_CruiseCheckBookingStatus")) {
			responseBO = NCLDataObjectUtils
					.createNCL_CruiseCheckBookingStatusRS();

		} else if (requestXmlStr.contains("NCL_CruiseCreateAgency")) {
			responseBO = NCLDataObjectUtils.createNCL_CruiseCreateAgencyRS();

		} else if (requestXmlStr.contains("NCL_CruiseCreateClient")) {
			responseBO = NCLDataObjectUtils.createNCL_CruiseCreateClientRS();

		} else if (requestXmlStr.contains("NCL_CruiseCreateAgent")) {
			responseBO = NCLDataObjectUtils.createNCL_CruiseCreateAgentRS();

		} else if (requestXmlStr.contains("NCL_CruiseRetrieveGroupBookings")) {
			responseBO = NCLDataObjectUtils
					.createNCL_CruiseRetrieveGroupBookingsRS();

		} else if (requestXmlStr.contains("NCL_CruiseRtrvNameList")) {
			responseBO = NCLDataObjectUtils.createNCL_CruiseRtrvNameListRS();

		} else {

		}

		populateResponseBO(responseBO, requestXmlStr, warningMsg);

		DataObject body = (DataObject) NCLResponseSMO.getBody();
		body.createDataObject("handleAndGetResponseResponse");
		body.setDataObject("handleAndGetResponseResponse/response", responseBO);
		exiting("createErrorHandlerResponseSMO");
		return NCLResponseSMO;
	}

	public static ServiceMessageObject createUserAuthenticationResponseSMO(
			DataObject errorHandlerResponseBO) {
		entering("createUserAuthenticationResponseSMO");

		/* Create the SMO */
		ServiceMessageObject responseSMO = NCLDataObjectUtils
				.createUserAuthenticationResponseSMO();

		/* get the body */
		DataObject body = responseSMO.getDataObject("body");

		/* init Perform_NCL_CruiseUserAuthenticationResponse to avoid NPE */
		body.createDataObject("Perform_NCL_CruiseUserAuthenticationResponse");

		body
				.setDataObject(
						"Perform_NCL_CruiseUserAuthenticationResponse/NCL_CruiseUserAuthenticationRS",
						errorHandlerResponseBO);

		exiting("createUserAuthenticationResponseSMO");
		return responseSMO;
	}

	/**
	 * This method is invoked from ErrorHandlerMod when the MessageFilter fires
	 * the Generic output terminal.
	 * 
	 * @param requestXmlStr
	 * @return
	 */
	public static DataObject createUserAuthenticationResponseBO(
			String requestXmlStr, String warningMsg) {
		entering("createUserAuthenticationResponseSMO");

		/* Create the BO */
		DataObject response = NCLDataObjectUtils
				.createNCL_CruiseUserAuthenticationRS();

		/* Now find the TransactionIdentifier in the request xml string */
		String transactionId = getTransactionID(requestXmlStr);

		logFine("transactionId: " + transactionId);

		/* set TransactionIdentifier */
		response.setString("TransactionIdentifier", transactionId);

		/* populate warnings */
		DataObject warnings = response.createDataObject("Warnings");
		DataObject warning = getBOFactory().create("", "WarningType");
		warning.setString("ShortText", warningMsg);
		ArrayList<DataObject> list = new ArrayList<DataObject>();
		list.add(warning);
		warnings.setList("Warning", list);

		/* create empty success tag */
		response.createDataObject("Success");

		logBO("response", response);
		exiting("createUserAuthenticationResponseBO");
		return response;
	}

	public static DataObject populateResponseBO(DataObject response,
			String requestXmlStr, String warningMsg) {
		entering("populateResponseBO");

		/* Now find the TransactionIdentifier in the request xml string */
		String transactionId = getTransactionID(requestXmlStr);

		logFine("transactionId: " + transactionId);

		/* set TransactionIdentifier */
		response.setString("TransactionIdentifier", transactionId);

		/* populate warnings */
		DataObject warnings = response.createDataObject("Warnings");
		DataObject warning = getBOFactory().create("", "WarningType");
		warning.setString("ShortText", warningMsg);
		ArrayList<DataObject> list = new ArrayList<DataObject>();
		list.add(warning);
		warnings.setList("Warning", list);

		/* create empty success tag */
		response.createDataObject("Success");

		logBO("response", response);
		exiting("populateResponseBO");
		return response;
	}

	private static String getTransactionID(String xmlStr) {
		entering("getTransactionID");
		String transaction = null;
		String searchStr = "TransactionIdentifier=\"";
		int position = xmlStr.indexOf(searchStr);
		if (position > 0) {
			transaction = xmlStr.substring(position + searchStr.length());
			int endPosition = transaction.indexOf("\"");
			transaction = transaction.substring(0, endPosition);
		}
		exiting("getTransactionID");
		return transaction;
	}

	//
	// /**
	// * Creates and returns a new SMO for input into the ErrorHandlerMod
	// *
	// * @param inputSMO
	// * @return
	// */
	// public static DataObject createErrorHandlerInputBO(
	// ServiceMessageObject inputSMO) {
	// entering("createErrorHandlerInputSMO");
	// /* Create the ErrorHandlerBO */
	// DataObject errorHandlerInputBO = getBOFactory().create(
	// "http://NCL_WESB_Shared_Library", "ErrorHandlerBO");
	//
	// /*
	// * THIS PART IS KEY TO THE ERROR HANDLER FRAMEWORK. The very first BO
	// * inside the correlation context must be the input request from the
	// * client.
	// *
	// * Get the input message from the correlation context which is always
	// * the first data object inside the correlation context (appcontext)
	// */
	// DataObject inputBO = inputSMO.getDataObject("/context/correlation")
	// .getDataObject(0);
	// logFine("inputBO: " + inputBO);
	//
	// /* Set the input message inside the error handler input SMO */
	// errorHandlerInputBO.setDataObject("input", inputBO);
	//
	// /* Now set the fail info pieces */
	// populateErrorHandlerBO(errorHandlerInputBO, inputSMO);
	//
	// exiting("createErrorHandlerInputSMO");
	// return errorHandlerInputBO;
	// }

	/**
	 * Creates and returns a new SMO for input into the ErrorHandlerMod
	 * 
	 * @param inputSMO the SMO containing the input string of XML
	 * @return an errorHandlerInputBO to be passed into the ErrorHandlerMod
	 */
	public static DataObject createGenericErrorHandlerInputBO(
			ServiceMessageObject inputSMO) {
		entering("createGenericErrorHandlerInputBO");
		/* Create the ErrorHandlerBO */
		DataObject errorHandlerInputBO = getBOFactory().create(
				"http://NCL_WESB_Shared_Library", "ErrorHandlerBO");

		/*
		 * Generic_Service module will not have an input DataObject, only the
		 * inputed String. Copy the inputed request string of XML into the
		 * errorHandlerInputBO.
		 */
		String request = inputSMO.getString("/context/correlation/request");
		logFine("request: " + request);

		/* Set the input message inside the error handler input SMO */
		errorHandlerInputBO.setString("inputString", request);

		/* Now set the fail info pieces */
		populateErrorHandlerBO(errorHandlerInputBO, inputSMO);

		exiting("createGenericErrorHandlerInputBO");
		return errorHandlerInputBO;
	}

	private static void populateErrorHandlerBO(DataObject errorHandlerInputBO,
			ServiceMessageObject inputSMO) {
		/* Now set the fail info pieces */
		String failureString = null, origin = null, primitive = null, inTerminal = null, outTerminal = null;
		DataObject failInfo = inputSMO.getDataObject("/context/failInfo");

		logFine("failInfo: " + failInfo);

		if (failInfo != null) {
			failureString = failInfo.getString("failureString");
			origin = failInfo.getString("origin");

			DataObject invocationPath = failInfo
					.getDataObject("invocationPath");
			if (invocationPath != null) {

				/* Get the first primitive details, if it exists */
				DataObject primitiveBO = invocationPath
						.getDataObject("primitive[1]");
				if (primitiveBO != null) {
					primitive = primitiveBO.getString("name");
					inTerminal = primitiveBO.getString("inTerminal");
					outTerminal = primitiveBO.getString("outTerminal");
				}
			}

			logFine("failureString: " + failureString);
			logFine("origin: " + origin);
			logFine("primitive: " + primitive);
			logFine("inTerminal: " + inTerminal);
			logFine("outTerminal: " + outTerminal);

			errorHandlerInputBO.setString("failureString", failureString);
			errorHandlerInputBO.setString("origin", origin);
			errorHandlerInputBO.setString("primitive", primitive);
			errorHandlerInputBO.setString("inTerminal", inTerminal);
			errorHandlerInputBO.setString("outTerminal", outTerminal);
		}
	}

	// /**
	// * This method is called from the service mediations. It transforms
	// * the error handler response BO into a ServiceMessageObject. The
	// * ServiceMessageObject type is determined by the inputed responseBO.
	// *
	// * @param responseBO
	// * @return
	// */
	// public static ServiceMessageObject createNCLResponseSMO(
	// DataObject responseBO) {
	// entering("createNCLResponseSMO");
	// ServiceMessageObject NCLResponseSMO = null;
	// String responseType = responseBO.getType().getName();
	// logFine("responseType: " + responseType);
	// if (responseType.contains("NCL_CruiseUserAuthentication")) {
	// NCLResponseSMO = createUserAuthenticationResponseSMO(responseBO);
	// } else if (responseType.contains("NCL_CruiseGroupContract")) {
	// NCLResponseSMO = createGroupContractResponseSMO(responseBO);
	//
	// } else if (responseType.contains("NCL_CruiseFitConfirmation")) {
	// NCLResponseSMO = createFitConfirmationResponseSMO(responseBO);
	//
	// } else if (responseType.contains("NCL_CruiseGroupAccountingWorkup")) {
	// NCLResponseSMO = createGroupAccountingWorkupResponseSMO(responseBO);
	//
	// } else if (responseType.contains("NCL_CruiseLinkReservation")) {
	// NCLResponseSMO = createLinkReservationResponseSMO(responseBO);
	//
	// } else if (responseType.contains("NCL_CruiseRetrieveClient")) {
	// NCLResponseSMO = createRetrieveClientResponseSMO(responseBO);
	//
	// } else if (responseType.contains("NCL_CruiseRegisterWebAccess")) {
	// NCLResponseSMO = createRegisterWebAccessResponseSMO(responseBO);
	//
	// } else if (responseType.contains("NCL_CruiseRetrieveAgency")) {
	// NCLResponseSMO = createRetrieveAgencyResponseSMO(responseBO);
	//
	// } else if (responseType.contains("NCL_CruiseRetrieveAgent")) {
	// NCLResponseSMO = createRetrieveAgentResponseSMO(responseBO);
	//
	// } else if (responseType.contains("NCL_CruiseBookingPayment")) {
	// NCLResponseSMO = createBookingPaymentResponseSMO(responseBO);
	//
	// } else if (responseType.contains("NCL_CruiseBookPackages")) {
	// NCLResponseSMO = createBookPackagesResponseSMO(responseBO);
	//
	// } else if (responseType.contains("NCL_CruiseCheckBookingStatus")) {
	// NCLResponseSMO = createCheckBookingStatusResponseSMO(responseBO);
	//
	// } else if (responseType.contains("NCL_CruiseCreateAgency")) {
	// NCLResponseSMO = createCreateAgencyResponseSMO(responseBO);
	//
	// } else if (responseType.contains("NCL_CruiseCreateClient")) {
	// NCLResponseSMO = createCreateClientResponseSMO(responseBO);
	//
	// } else if (responseType.contains("NCL_CruiseCreateAgent")) {
	// NCLResponseSMO = createCreateAgentResponseSMO(responseBO);
	//
	// } else if (responseType.contains("NCL_CruiseRetrieveGroupBookings")) {
	// NCLResponseSMO = createRetrieveGroupBookingsResponseSMO(responseBO);
	//
	// } else if (responseType.contains("NCL_CruiseRtrvNameList")) {
	// NCLResponseSMO = createRtrvNameListResponseSMO(responseBO);
	//
	// } else {
	//
	// }
	//
	// exiting("createNCLResponseSMO");
	// return NCLResponseSMO;
	// }

	// private static DataObject createRetrieveGroupBookingsResponseBO(
	// String requestXmlStr, String warningMsg) {
	// // TODO Auto-generated method stub
	// /* Create the BO */
	// DataObject responseBO = NCLDataObjectUtils
	// .createNCL_CruiseRetrieveGroupBookingsRS();
	// return responseBO;
	// }
	//
	// private static DataObject createCreateAgentResponseBO(
	// String requestXmlStr, String warningMsg) {
	// // TODO Auto-generated method stub
	// /* Create the BO */
	// DataObject responseBO = NCLDataObjectUtils
	// .createNCL_CruiseCreateAgentRS();
	// return responseBO;
	// }
	//
	// private static DataObject createCreateClientResponseBO(
	// String requestXmlStr, String warningMsg) {
	// // TODO Auto-generated method stub
	// /* Create the BO */
	// DataObject responseBO = NCLDataObjectUtils
	// .createNCL_CruiseCreateClientRS();
	// return responseBO;
	// }
	//
	// private static DataObject createCreateAgencyResponseBO(
	// String requestXmlStr, String warningMsg) {
	// // TODO Auto-generated method stub
	// /* Create the BO */
	// DataObject responseBO = NCLDataObjectUtils
	// .createNCL_CruiseCreateAgencyRS();
	// return responseBO;
	// }
	//
	// private static DataObject createCheckBookingStatusResponseBO(
	// String requestXmlStr, String warningMsg) {
	// entering("createCheckBookingStatusResponseBO");
	// /* Create the BO */
	// DataObject responseBO = NCLDataObjectUtils
	// .createNCL_CruiseCheckBookingStatusRS();
	//
	// /* Now find the TransactionIdentifier in the request xml string */
	// String transactionId = getTransactionID(requestXmlStr);
	//
	// logFine("transactionId: " + transactionId);
	//
	// /* set TransactionIdentifier */
	// responseBO.setString("TransactionIdentifier", transactionId);
	//
	// /* populate warnings */
	// DataObject warnings = responseBO.createDataObject("Warnings");
	// DataObject warning = getBOFactory().create("", "WarningType");
	// warning.setString("ShortText", warningMsg);
	// ArrayList<DataObject> list = new ArrayList<DataObject>();
	// list.add(warning);
	// warnings.setList("Warning", list);
	//
	// /* create empty success tag */
	// responseBO.createDataObject("Success");
	//
	// logBO("responseBO", responseBO);
	// exiting("createCheckBookingStatusResponseBO");
	// return responseBO;
	// }
	//
	// private static DataObject createBookPackagesResponseBO(
	// String requestXmlStr, String warningMsg) {
	// entering("createBookPackagesResponseBO");
	// // TODO Auto-generated method stub
	// /* Create the BO */
	// DataObject responseBO = NCLDataObjectUtils
	// .createNCL_CruiseBookPackagesRS();
	// /* Now find the TransactionIdentifier in the request xml string */
	// String transactionId = getTransactionID(requestXmlStr);
	//
	// logFine("transactionId: " + transactionId);
	//
	// /* set TransactionIdentifier */
	// responseBO.setString("TransactionIdentifier", transactionId);
	//
	// /* populate warnings */
	// DataObject warnings = responseBO.createDataObject("Warnings");
	// DataObject warning = getBOFactory().create("", "WarningType");
	// warning.setString("ShortText", warningMsg);
	// ArrayList<DataObject> list = new ArrayList<DataObject>();
	// list.add(warning);
	// warnings.setList("Warning", list);
	//
	// /* create empty success tag */
	// responseBO.createDataObject("Success");
	//
	// logBO("responseBO", responseBO);
	// exiting("createBookPackagesResponseBO");
	// return responseBO;
	// }
	//
	// private static DataObject createBookingPaymentResponseBO(
	// String requestXmlStr, String warningMsg) {
	// entering("createBookingPaymentResponseBO");
	// // TODO Auto-generated method stub
	//
	// /* Create the BO */
	// DataObject responseBO = NCLDataObjectUtils
	// .createNCL_CruiseBookingPaymentRS();
	// exiting("createBookingPaymentResponseBO");
	// return responseBO;
	// }
	//
	// private static DataObject createFitConfirmationResponseBO(
	// String requestXmlStr, String warningMsg) {
	// entering("createFitConfirmationResponseBO");
	// // TODO Auto-generated method stub
	//
	// /* Create the BO */
	// DataObject responseBO = NCLDataObjectUtils
	// .createNCL_CruiseFitConfirmationRS();
	// exiting("createFitConfirmationResponseBO");
	// return responseBO;
	// }
	//
	// private static DataObject createGroupAccountingWorkupResponseBO(
	// String requestXmlStr, String warningMsg) {
	// entering("createGroupAccountingWorkupResponseBO");
	// // TODO Auto-generated method stub
	// /* Create the BO */
	// DataObject responseBO = NCLDataObjectUtils
	// .createNCL_CruiseGroupAccountingWorkupRS();
	// exiting("createGroupAccountingWorkupResponseBO");
	// return responseBO;
	// }
	//
	// private static DataObject createLinkReservationResponseBO(
	// String requestXmlStr, String warningMsg) {
	// entering("createLinkReservationResponseBO");
	// // TODO Auto-generated method stub
	// /* Create the BO */
	// DataObject responseBO = NCLDataObjectUtils
	// .createNCL_CruiseLinkReservationRS();
	// exiting("createLinkReservationResponseBO");
	// return responseBO;
	// }
	//
	// private static DataObject createRetrieveAgencyResponseBO(
	// String requestXmlStr, String warningMsg) {
	// // TODO Auto-generated method stub
	// /* Create the BO */
	// DataObject responseBO = NCLDataObjectUtils
	// .createNCL_CruiseRetrieveAgencyRS();
	// return responseBO;
	// }
	//
	// private static DataObject createRetrieveAgentResponseBO(
	// String requestXmlStr, String warningMsg) {
	// // TODO Auto-generated method stub
	// /* Create the BO */
	// DataObject responseBO = NCLDataObjectUtils
	// .createNCL_CruiseRetrieveAgentRS();
	// return responseBO;
	// }
	//
	// private static DataObject createRetrieveClientResponseBO(
	// String requestXmlStr, String warningMsg) {
	// // TODO Auto-generated method stub
	// /* Create the BO */
	// DataObject responseBO =
	// NCLDataObjectUtils.createNCL_CruiseRetrieveClientRS();
	// return responseBO;
	// }
	//
	// private static DataObject createRegisterWebAccessResponseBO(
	// String requestXmlStr, String warningMsg) {
	// // TODO Auto-generated method stub
	// /* Create the BO */
	// DataObject responseBO =
	// NCLDataObjectUtils.createNCL_CruiseRegisterWebAccessRS();
	// return responseBO;
	// }
	//
	// private static DataObject createGroupContractResponseBO(
	// String requestXmlStr, String warningMsg) {
	// // TODO Auto-generated method stub
	// /* Create the BO */
	// DataObject responseBO = NCLDataObjectUtils
	// .createNCL_CruiseGroupContractRS();
	// return responseBO;
	// }
	//	
	// private static DataObject createRtrvNameListResponseBO(String
	// requestXmlStr, String warningMsg) {
	// // TODO Auto-generated method stub
	// /* Create the BO */
	// DataObject responseBO = NCLDataObjectUtils
	// .createNCL_CruiseRtrvNameListRS();
	// return responseBO;
	// }
	//	
	// ///////////////////////////////////////////////
	//	
	// private static ServiceMessageObject createRtrvNameListResponseSMO(
	// DataObject errorHandlerResponseSMO) {
	// // TODO Auto-generated method stub
	// /* Create the SMO */
	// ServiceMessageObject responseSMO = NCLDataObjectUtils
	// .createRtrvNameListResponseSMO();
	// return responseSMO;
	// }
	//
	// private static ServiceMessageObject
	// createRetrieveGroupBookingsResponseSMO(
	// DataObject errorHandlerResponseSMO) {
	// entering("createRtrvNameListResponseSMO");
	// /* Create the SMO */
	// ServiceMessageObject responseSMO = NCLDataObjectUtils
	// .createRetrieveGroupBookingsResponseSMO();
	//
	// /* get the body */
	// DataObject body = responseSMO.getDataObject("body");
	//
	// /* init Perform_NCL_CruiseRtrvNameListResponse to avoid NPE */
	// body.createDataObject("Perform_NCL_CruiseRtrvNameListResponse");
	//
	// DataObject NCL_CruiseRtrvNameListRS = errorHandlerResponseSMO
	// .getDataObject("/body/handleAndGetResponseResponse/response");
	// body
	// .setDataObject(
	// "Perform_NCL_CruiseRtrvNameListResponse/NCL_CruiseRtrvNameListRS",
	// NCL_CruiseRtrvNameListRS);
	//
	// exiting("createRtrvNameListResponseSMO");
	// return responseSMO;
	// }

	// private static ServiceMessageObject createCreateAgentResponseSMO(
	// DataObject errorHandlerResponseSMO) {
	// // TODO Auto-generated method stub
	// /* Create the SMO */
	// ServiceMessageObject responseSMO = NCLDataObjectUtils
	// .createCreateAgentResponseSMO();
	// return responseSMO;
	// }
	//
	// private static ServiceMessageObject createCreateClientResponseSMO(
	// DataObject errorHandlerResponseSMO) {
	// // TODO Auto-generated method stub
	// /* Create the SMO */
	// ServiceMessageObject responseSMO = NCLDataObjectUtils
	// .createCreateClientResponseSMO();
	// return responseSMO;
	// }
	//
	// private static ServiceMessageObject createCreateAgencyResponseSMO(
	// DataObject errorHandlerResponseSMO) {
	// // TODO Auto-generated method stub
	// /* Create the SMO */
	// ServiceMessageObject responseSMO = NCLDataObjectUtils
	// .createCreateAgencyResponseSMO();
	// return responseSMO;
	// }
	//
	// private static ServiceMessageObject createCheckBookingStatusResponseSMO(
	// DataObject errorHandlerResponseSMO) {
	// // TODO Auto-generated method stub
	// /* Create the SMO */
	// ServiceMessageObject responseSMO = NCLDataObjectUtils
	// .createCheckBookingStatusResponseSMO();
	// return responseSMO;
	// }
	//
	// private static ServiceMessageObject createBookPackagesResponseSMO(
	// DataObject errorHandlerResponseSMO) {
	// // TODO Auto-generated method stub
	// /* Create the SMO */
	// ServiceMessageObject responseSMO = NCLDataObjectUtils
	// .createBookPackagesResponseSMO();
	// return responseSMO;
	// }
	//
	// private static ServiceMessageObject createBookingPaymentResponseSMO(
	// DataObject errorHandlerResponseSMO) {
	// // TODO Auto-generated method stub
	//
	// /* Create the SMO */
	// ServiceMessageObject responseSMO = NCLDataObjectUtils
	// .createBookingPaymentResponseSMO();
	// return responseSMO;
	// }
	//
	// private static ServiceMessageObject createFitConfirmationResponseSMO(
	// DataObject errorHandlerResponseSMO) {
	// // TODO Auto-generated method stub
	//
	// /* Create the SMO */
	// ServiceMessageObject responseSMO = NCLDataObjectUtils
	// .createFitConfirmationResponseSMO();
	// return responseSMO;
	// }
	//
	// private static ServiceMessageObject
	// createGroupAccountingWorkupResponseSMO(
	// DataObject errorHandlerResponseSMO) {
	// // TODO Auto-generated method stub
	// /* Create the SMO */
	// ServiceMessageObject responseSMO = NCLDataObjectUtils
	// .createGroupAccountingWorkupResponseSMO();
	// return responseSMO;
	// }
	//
	// private static ServiceMessageObject createLinkReservationResponseSMO(
	// DataObject errorHandlerResponseSMO) {
	// // TODO Auto-generated method stub
	// /* Create the SMO */
	// ServiceMessageObject responseSMO = NCLDataObjectUtils
	// .createLinkReservationResponseSMO();
	// return responseSMO;
	// }
	//
	// private static ServiceMessageObject createRetrieveAgencyResponseSMO(
	// DataObject errorHandlerResponseSMO) {
	// // TODO Auto-generated method stub
	// /* Create the SMO */
	// ServiceMessageObject responseSMO = NCLDataObjectUtils
	// .createRetrieveAgencyResponseSMO();
	// return responseSMO;
	// }
	//
	// private static ServiceMessageObject createRetrieveAgentResponseSMO(
	// DataObject errorHandlerResponseSMO) {
	// // TODO Auto-generated method stub
	// /* Create the SMO */
	// ServiceMessageObject responseSMO = NCLDataObjectUtils
	// .createRetrieveAgentResponseSMO();
	// return responseSMO;
	// }
	//
	// private static ServiceMessageObject createRetrieveClientResponseSMO(
	// DataObject errorHandlerResponseSMO) {
	// // TODO Auto-generated method stub
	// /* Create the SMO */
	// ServiceMessageObject responseSMO = NCLDataObjectUtils
	// .createRetrieveClientResponseSMO();
	// return responseSMO;
	// }
	//
	// private static ServiceMessageObject createRegisterWebAccessResponseSMO(
	// DataObject errorHandlerResponseSMO) {
	// // TODO Auto-generated method stub
	// /* Create the SMO */
	// ServiceMessageObject responseSMO = NCLDataObjectUtils
	// .createRegisterWebAccessResponseSMO();
	// return responseSMO;
	// }
	//
	// private static ServiceMessageObject createGroupContractResponseSMO(
	// DataObject errorHandlerResponseSMO) {
	// // TODO Auto-generated method stub
	// /* Create the SMO */
	// ServiceMessageObject responseSMO = NCLDataObjectUtils
	// .createGroupContractResponseSMO();
	// return responseSMO;
	// }

	public static String getEmailBody(DataObject errorBO) {
		entering("getEmailBody");

		StringBuffer buf = new StringBuffer(
				"The following errorBO was logged: \n\n");
		String errorString = NCLDataObjectUtils.doToString(errorBO);
		buf.append(errorString);

		logFine("errorString: " + errorString);
		exiting("getEmailBody");
		return buf.toString();
	}

	private static final void logFine(String msg) {
		Logger logger = Logger.getLogger(CLASS_NAME);
		if (logger.isLoggable(Level.FINE)) {
			logger.fine(msg);
		}
	}

	private static final void entering(String method) {
		Logger logger = Logger.getLogger(CLASS_NAME);
		if (logger.isLoggable(Level.FINE)) {
			logger.entering(CLASS_NAME, method);
		}
	}

	private static final void exiting(String method) {
		Logger logger = Logger.getLogger(CLASS_NAME);
		if (logger.isLoggable(Level.FINE)) {
			logger.exiting(CLASS_NAME, method);
		}
	}

	private static final void logBO(String variableName, DataObject bo) {
		Logger logger = Logger.getLogger(CLASS_NAME);
		if (logger.isLoggable(Level.FINE)) {
			String msg = variableName + ": ";
			if (bo == null) {
				msg += "null";
			} else {
				msg += NCLDataObjectUtils.doToString(bo);
			}
			logger.fine(msg);
		}
	}

	/**
	 * Returns the cached boFactory service. Looks it up if null.
	 * 
	 * @return The BOFactory service
	 */
	private static final BOFactory getBOFactory() {
		if (boFactory == null) {
			boFactory = (BOFactory) ServiceManager.INSTANCE
					.locateService("com/ibm/websphere/bo/BOFactory");
		}
		return boFactory;
	}

	/**
	 * Returns the cached error handler service. Looks it up if null. All
	 * mediations that use the ErrorHandlerMod module should have a reference to
	 * the ErrorHandlerMod called, "ErrorHandlerInterfacePartner".
	 * 
	 * @return The Error Handler service
	 */
	private static final Service getErrorHandlerService() {
		if (errorHandlerService == null) {
			errorHandlerService = (Service) ServiceManager.INSTANCE
					.locateService(ERROR_PARTNER);
		}
		return errorHandlerService;
	}
}

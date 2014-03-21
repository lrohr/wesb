package com.ncl.wesb;

import java.io.ByteArrayOutputStream;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import commonj.sdo.DataObject;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.xml.namespace.QName;

import com.ibm.websphere.bo.BOFactory;
import com.ibm.websphere.bo.BOXMLSerializer;
import com.ibm.websphere.sca.ServiceManager;
import com.ibm.websphere.sca.ServiceRuntimeException;
import com.ibm.websphere.sibx.smobo.ServiceMessageObject;
import com.ibm.websphere.sibx.smobo.ServiceMessageObjectFactory;
import com.ibm.ws.bo.service.BOXMLSerializerImpl;

public class NCLDataObjectUtils {

	/* this is the logger name which used to lookup the logger for this class */
	private static final String CLASS_NAME = "com.ncl.wesb.NCLDataObjectUtils";

	/* this is the logger used for this class */
	private static Logger logger = null;
	

	private static BOFactory boFactory;
	
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
	 * Returns the logger for this class
	 * 
	 * @return the logger for this class
	 */
	private static Logger getLogger() {
		if (logger == null) {
			logger = Logger.getLogger(CLASS_NAME);
		}
		return logger;
	}

	/**
	 * Logs a fine string
	 * 
	 * @param msg
	 *            the message to log
	 */
	private static final void logFine(String msg) {
		if (getLogger().isLoggable(Level.FINE)) {
			getLogger().fine(msg);
		}
	}

	/**
	 * Logs an entering statement for a method. Use this method to log the start
	 * of a method.
	 * 
	 * @param method
	 *            the method name
	 */
	private static final void entering(String method) {
		if (getLogger().isLoggable(Level.FINE)) {
			getLogger().entering(CLASS_NAME, method);
		}
	}

	/**
	 * Logs an exiting statement for a method. Use this method to log the end of
	 * a method.
	 * 
	 * @param method
	 *            the method name
	 */
	private static final void exiting(String method) {
		if (getLogger().isLoggable(Level.FINE)) {
			getLogger().exiting(CLASS_NAME, method);
		}
	}

	/**
	 * Logs the passed in business object (DataObject)
	 * 
	 * @param variableName
	 *            the name of the variable in the calling method
	 * @param bo
	 *            the business object (DataObject)
	 */
	private static final void logBO(String variableName, DataObject bo) {
		if (getLogger().isLoggable(Level.FINE)) {
			String msg = variableName + ": ";
			if (bo == null) {
				msg += "null";
			} else {
				msg += NCLDataObjectUtils.doToString(bo);
			}
			getLogger().fine(msg);
		}
	}

	/**
	 * Converts the inputed business object (DataObject) to a string
	 * 
	 * @param dataDO
	 * @return the business object as a String
	 */
	public static String doToString(DataObject dataDO) {
		BOXMLSerializer serializer = new BOXMLSerializerImpl();
		ByteArrayOutputStream bos = new ByteArrayOutputStream();

		try {
			serializer.writeDataObject(dataDO, dataDO.getType().getURI(),
					dataDO.getType().getName(), bos);
		} catch (Exception e) {
			throw new ServiceRuntimeException(e.getMessage(), e);
		}

		String data = bos.toString();
		return data;
	}

	/**
	 * 
	 * @param dateString
	 *            the string which holds the date value
	 * @param formatIn
	 *            the format of dateString coming in
	 * @param formatOut
	 *            the desired format of the string returned
	 * @return a newly formatted string which is a date
	 */
	public static String formatDateString(String dateString, String formatIn,
			String formatOut) {
		entering("formatDateString");
		logFine("dateString: " + dateString);
		logFine("formatIn: " + formatIn);
		logFine("formatOut: " + formatOut);

		String output = null;

		try {

			DateFormat formatterIn = new SimpleDateFormat(formatIn);
			DateFormat formatterOut = new SimpleDateFormat(formatOut);
			Date dateInput = formatterIn.parse(dateString);
			output = formatterOut.format(dateInput);

		} catch (ParseException e) {
			e.printStackTrace();

			logFine("An exception occurred while formatting the date");
			logFine(e.getMessage());
			logFine(e.getLocalizedMessage());
			throw new RuntimeException(e.getMessage());
		}

		logFine("returning the following value: " + output);
		exiting("formatDateString");
		return output;
	}

	/**
	 * Loops through the child Warnings structure and unsets all warnings if one
	 * is empty
	 * 
	 * @param dataObject
	 *            the message (ex: NCL_CruiseRetrieveClientRS
	 * @return
	 */
	public static void removeEmptyWarnings(DataObject dataObject) {
		/* Get the warnings structure from the message */
		entering("removeEmptyWarnings");
		logBO("dataObject", dataObject);
		logFine("dataObject.getType().getName(): "
				+ dataObject.getType().getName());
		logFine("dataObject.getType().getURI(): "
				+ dataObject.getType().getURI());

		DataObject warnings = dataObject.getDataObject("Warnings");

		if (warnings != null) {
			/* warnings structure is present */
			logFine("Warnings structure is present");

			List warningList = warnings.getList("Warning");

			if (warningList != null) {
				Iterator it = warningList.iterator();
				while (it.hasNext()) {
					/* get the next warning in the list */
					DataObject warning = (DataObject) it.next();
					String shortText = warning.getString("ShortText");
					String code = warning.getString("Code");

					logFine("shortText: " + shortText);
					logFine("code: " + code);

					if (isEmpty(shortText) && isEmpty(code)) {
						/* this warning is empty therefore reset all Warnings */

						logFine("unsetting all warnings b/c one warning was empty in the array");

						dataObject.unset("Warnings");
						break; // stop looping
					}
				}

			} else {
				/* array is empty therefore reset all Warnings */
				logFine("unsetting all warnings b/c array is empty");
				dataObject.unset("Warnings");
			}

		} else {
			/* warnings structure was not present and we do nothing */
			logFine("Warnings structure was not present and we do nothing");
		}

		exiting("removeEmptyWarnings");
	}

	/**
	 * Checks if the inputed string is null or an empty string (double quotes:
	 * "")
	 * 
	 * @param value
	 * @return true if the inputed string is null, or an empty string (double
	 *         quotes: "")
	 * @return false if the inputed string is not null & contains something
	 *         other than an empty string (double quotes: "")
	 */
	private static boolean isEmpty(String value) {
		return (value == null) || (value.equals(""));
	}
	
	public static ServiceMessageObject createGenericServiceResponseSMO() {
		/* Create the SMO */
		QName qName = new QName("http://Generic_Service/Generic", "Request_ResponseResponseMsg");
		ServiceMessageObjectFactory smoFactory = ServiceMessageObjectFactory.eINSTANCE; 
		ServiceMessageObject responseSMO = smoFactory.createServiceMessageObject(qName);
		return responseSMO;
	}
	
	
	
	public static ServiceMessageObject createUserAuthenticationResponseSMO() {
		/* Create the SMO */
		QName qName = new QName("http://NCL_WESB_Shared_Library/NCL_CruiseUserAuthentication_Interface","Perform_NCL_CruiseUserAuthenticationResponseMsg");
		ServiceMessageObjectFactory smoFactory = ServiceMessageObjectFactory.eINSTANCE; 
		ServiceMessageObject responseSMO = smoFactory.createServiceMessageObject(qName);
		return responseSMO;
	}
	
	public static ServiceMessageObject createRetrieveGroupBookingsResponseSMO() {
		/* Create the SMO */
		QName qName = new QName("http://NCL_WESB_Shared_Library/NCL_CruiseRetrieveGroupBookings_Interface", "Perform_NCL_CruiseRetrieveGroupBookingsResponseMsg");
		ServiceMessageObjectFactory smoFactory = ServiceMessageObjectFactory.eINSTANCE; 
		ServiceMessageObject responseSMO = smoFactory.createServiceMessageObject(qName);
		return responseSMO;
	}

	public static ServiceMessageObject createCreateAgentResponseSMO() {
		/* Create the SMO */
		QName qName = new QName("http://NCL_WESB_Shared_Library/NCL_CruiseCreateAgent_Interface", "Perform_NCL_CruiseCreateAgentResponseMsg");
		ServiceMessageObjectFactory smoFactory = ServiceMessageObjectFactory.eINSTANCE; 
		ServiceMessageObject responseSMO = smoFactory.createServiceMessageObject(qName);
		return responseSMO;
	}

	public static ServiceMessageObject createCreateClientResponseSMO() {
		/* Create the SMO */
		QName qName = new QName("http://NCL_WESB_Shared_Library/NCL_CruiseCreateClient_Interface", "Perform_NCL_CruiseCreateClientResponseMsg");
		ServiceMessageObjectFactory smoFactory = ServiceMessageObjectFactory.eINSTANCE; 
		ServiceMessageObject responseSMO = smoFactory.createServiceMessageObject(qName);
		return responseSMO;
	}

	public static ServiceMessageObject createCreateAgencyResponseSMO() {
		/* Create the SMO */
		QName qName = new QName("http://NCL_WESB_Shared_Library/NCL_CruiseCreateAgency_Interface", "Perform_NCL_CruiseCreateAgencyResponseMsg");
		ServiceMessageObjectFactory smoFactory = ServiceMessageObjectFactory.eINSTANCE; 
		ServiceMessageObject responseSMO = smoFactory.createServiceMessageObject(qName);
		return responseSMO;
	}

	public static ServiceMessageObject createCheckBookingStatusResponseSMO() {
		/* Create the SMO */
		QName qName = new QName("http://NCL_WESB_Shared_Library/NCL_CruiseCheckBookingStatus_Interface", "Perform_NCL_CruiseCheckBookingStatusResponseMsg");
		ServiceMessageObjectFactory smoFactory = ServiceMessageObjectFactory.eINSTANCE; 
		ServiceMessageObject responseSMO = smoFactory.createServiceMessageObject(qName);
		return responseSMO;
	}

	public static ServiceMessageObject createBookPackagesResponseSMO() {
		/* Create the SMO */
		QName qName = new QName("http://NCL_WESB_Shared_Library/NCL_CruiseBookPackages_Interface", "Perform_NCL_CruiseBookPackagesResponseMsg");
		ServiceMessageObjectFactory smoFactory = ServiceMessageObjectFactory.eINSTANCE; 
		ServiceMessageObject responseSMO = smoFactory.createServiceMessageObject(qName);
		return responseSMO;
	}

	public static ServiceMessageObject createBookingPaymentResponseSMO() {
		/* Create the SMO */
		QName qName = new QName("http://NCL_WESB_Shared_Library/NCL_CruiseBookingPayment_Interface", "Perform_NCL_CruiseBookingPaymentResponseMsg"); 
		ServiceMessageObjectFactory smoFactory = ServiceMessageObjectFactory.eINSTANCE; 
		ServiceMessageObject responseSMO = smoFactory.createServiceMessageObject(qName);
		return responseSMO;
	}

	public static ServiceMessageObject createFitConfirmationResponseSMO() {
		/* Create the SMO */
		QName qName = new QName("http://NCL_WESB_Shared_Library/NCL_CruiseFitConfirmation_Interface", "Perform_NCL_CruiseFitConfirmationResponseMsg");
		ServiceMessageObjectFactory smoFactory = ServiceMessageObjectFactory.eINSTANCE; 
		ServiceMessageObject responseSMO = smoFactory.createServiceMessageObject(qName);
		return responseSMO;
	}

	public static ServiceMessageObject createGroupAccountingWorkupResponseSMO() {
		/* Create the SMO */
		QName qName = new QName("http://NCL_WESB_Shared_Library/NCL_CruiseGroupAccountingWorkup_Interface", "Perform_NCL_CruiseGroupAccountingWorkupResponseMsg");
		ServiceMessageObjectFactory smoFactory = ServiceMessageObjectFactory.eINSTANCE; 
		ServiceMessageObject responseSMO = smoFactory.createServiceMessageObject(qName);
		return responseSMO;
	}

	public static ServiceMessageObject createLinkReservationResponseSMO() {
		/* Create the SMO */
		QName qName = new QName("http://NCL_WESB_Shared_Library/NCL_CruiseLinkReservation_Interface", "Perform_NCL_CruiseLinkReservationResponseMsg");
		ServiceMessageObjectFactory smoFactory = ServiceMessageObjectFactory.eINSTANCE; 
		ServiceMessageObject responseSMO = smoFactory.createServiceMessageObject(qName);
		return responseSMO;
	}

	public static ServiceMessageObject createRetrieveAgencyResponseSMO() {
		/* Create the SMO */
		QName qName = new QName("http://NCL_WESB_Shared_Library/NCL_CruiseRetrieveAgency_Interface", "Perform_NCL_CruiseRetrieveAgencyResponseMsg");
		ServiceMessageObjectFactory smoFactory = ServiceMessageObjectFactory.eINSTANCE; 
		ServiceMessageObject responseSMO = smoFactory.createServiceMessageObject(qName);
		return responseSMO;
	}

	public static ServiceMessageObject createRetrieveAgentResponseSMO() {
		/* Create the SMO */
		QName qName = new QName("http://NCL_WESB_Shared_Library/NCL_CruiseRetrieveAgent_Interface", "Perform_NCL_CruiseRetrieveAgentResponseMsg");
		ServiceMessageObjectFactory smoFactory = ServiceMessageObjectFactory.eINSTANCE; 
		ServiceMessageObject responseSMO = smoFactory.createServiceMessageObject(qName);
		return responseSMO;
	}

	public static ServiceMessageObject createRetrieveClientResponseSMO() {
		/* Create the SMO */
		QName qName = new QName("http://NCL_WESB_Shared_Library/NCL_CruiseRetrieveClient_Interface", "Perform_NCL_CruiseRetrieveClientResponseMsg");
		ServiceMessageObjectFactory smoFactory = ServiceMessageObjectFactory.eINSTANCE; 
		ServiceMessageObject responseSMO = smoFactory.createServiceMessageObject(qName);
		return responseSMO;
	}

	public static ServiceMessageObject createRegisterWebAccessResponseSMO() {
		/* Create the SMO */
		QName qName = new QName("http://NCL_WESB_Shared_Library/NCL_CruiseRegisterWebAccess_Interface", "Perform_NCL_CruiseRegisterWebAccessResponseMsg");
		ServiceMessageObjectFactory smoFactory = ServiceMessageObjectFactory.eINSTANCE; 
		ServiceMessageObject responseSMO = smoFactory.createServiceMessageObject(qName);
		return responseSMO;
	}

	public static ServiceMessageObject createGroupContractResponseSMO() {
		/* Create the SMO */
		QName qName = new QName("http://NCL_WESB_Shared_Library/NCL_CruiseGroupContract_Interface", "Perform_NCL_CruiseGroupContractResponseMsg");
		ServiceMessageObjectFactory smoFactory = ServiceMessageObjectFactory.eINSTANCE; 
		ServiceMessageObject responseSMO = smoFactory.createServiceMessageObject(qName);
		return responseSMO;
	}
	
	public static ServiceMessageObject createRtrvNameListResponseSMO() {
		/* Create the SMO */
		QName qName = new QName("http://NCL_WESB_Shared_Library/NCL_CruiseRtrvNameList_Interface", "Perform_NCL_CruiseRtrvNameListResponseMsg");
		ServiceMessageObjectFactory smoFactory = ServiceMessageObjectFactory.eINSTANCE; 
		ServiceMessageObject responseSMO = smoFactory.createServiceMessageObject(qName);
		return responseSMO;
	}
	
	public static ServiceMessageObject createErrorHandlerResponseSMO() {
		/* Create the SMO */
		QName qName = new QName("http://NCL_WESB_Shared_Library/ErrorHandlerInterface", "handleAndGetResponseResponseMsg");
		ServiceMessageObjectFactory smoFactory = ServiceMessageObjectFactory.eINSTANCE; 
		ServiceMessageObject responseSMO = smoFactory.createServiceMessageObject(qName);
		return responseSMO;
	}
	
	public static DataObject createNCL_CruiseGroupContractRS() {
		return getBOFactory().createByElement("http://nclapi/schemas","NCL_CruiseGroupContractRS");
	}
	
	public static DataObject createNCL_CruiseGroupAccountingWorkupRS() {
		return getBOFactory().createByElement("http://nclapi/schemas","NCL_CruiseGroupAccountingWorkupRS");
	}
	public static DataObject createNCL_CruiseFitConfirmationRS() {
		return getBOFactory().createByElement("http://nclapi/schemas","NCL_CruiseFitConfirmationRS");
	}
	public static DataObject createNCL_CruiseRetrieveClientRS() {
		return getBOFactory().createByElement("http://nclapi/schemas","NCL_CruiseRetrieveClientRS");
	}
	public static DataObject createNCL_CruiseCreateClientRS() {
		return getBOFactory().createByElement("http://nclapi/schemas","NCL_CruiseCreateClientRS");
	}
	public static DataObject createNCL_CruiseBookingPaymentRS() {
		return getBOFactory().createByElement("http://nclapi/schemas","NCL_CruiseBookingPaymentRS");
	}
	public static DataObject createNCL_CruiseLinkReservationRS() {
		return getBOFactory().createByElement("http://nclapi/schemas","NCL_CruiseLinkReservationRS");
	}
	public static DataObject createNCL_CruiseRegisterWebAccessRS() {
		return getBOFactory().createByElement("http://nclapi/schemas","NCL_CruiseRegisterWebAccessRS");
	}
	public static DataObject createNCL_CruiseRetrieveAgencyRS() {
		return getBOFactory().createByElement("http://nclapi/schemas","NCL_CruiseRetrieveAgencyRS");
	}
	public static DataObject createNCL_CruiseRetrieveAgentRS() {
		return getBOFactory().createByElement("http://nclapi/schemas","NCL_CruiseRetrieveAgentRS");
	}
	public static DataObject createNCL_CruiseUserAuthenticationRS() {
		return getBOFactory().createByElement("http://nclapi/schemas","NCL_CruiseUserAuthenticationRS");
	}
	public static DataObject createNCL_CruiseRtrvNameListRS() {
		return getBOFactory().createByElement("http://nclapi/schemas","NCL_CruiseRtrvNameListRS");
	}
	public static DataObject createNCL_CruiseRetrieveGroupBookingsRS() {
		return getBOFactory().createByElement("http://nclapi/schemas","NCL_CruiseRetrieveGroupBookingsRS");
	}
	public static DataObject createNCL_CruiseCreateAgentRS() {
		return getBOFactory().createByElement("http://nclapi/schemas","NCL_CruiseCreateAgentRS");
	}
	public static DataObject createNCL_CruiseCreateAgencyRS() {
		return getBOFactory().createByElement("http://nclapi/schemas","NCL_CruiseCreateAgencyRS");
	}
	public static DataObject createNCL_CruiseCheckBookingStatusRS() {
		return getBOFactory().createByElement("http://nclapi/schemas","NCL_CruiseCheckBookingStatusRS");
	}
	public static DataObject createNCL_CruiseBookPackagesRS() {
		return getBOFactory().createByElement("http://nclapi/schemas","NCL_CruiseBookPackagesRS");
	}

}

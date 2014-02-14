package sca.component.mediation.java;

import com.ibm.websphere.sibx.smobo.ServiceMessageObject;
import com.ibm.wsspi.sibx.mediation.InputTerminal;
import com.ibm.wsspi.sibx.mediation.MediationBusinessException;
import com.ibm.wsspi.sibx.mediation.MediationConfigurationException;
import com.ibm.wsspi.sibx.mediation.OutputTerminal;
import com.ibm.wsspi.sibx.mediation.esb.ESBMediationPrimitive;
import commonj.sdo.DataObject;
import com.ibm.wsspi.sibx.mediation.MediationServices;

/**
 * @generated
 *  Flow: FuseBoxMediationSubFlow Interface: subflow Operation:  Type: request Custom Mediation: LogResponseUpdateFailure
 */
public class Custom1353404499218 extends ESBMediationPrimitive {

	private InputTerminal in;
	private OutputTerminal out;

	/* state of primitive initialization */
	private boolean __initPassed = false;

	/* primitive display name */
	private String __primitiveDisplayName = null;

	/* 
	 * @generated
	 * (non-Javadoc)
	 * @see com.ibm.wsspi.sibx.mediation.Mediation#init()
	 */
	public void init() throws MediationConfigurationException {
		/* Get the mediation service */
		MediationServices mediationServices = this.getMediationServices();
		if (mediationServices == null)
			throw new MediationConfigurationException(
					"MediationServices object not set.");

		/* Get the primitive display name for use in exception messages */
		__primitiveDisplayName = mediationServices.getMediationDisplayName();

		in = mediationServices.getInputTerminal("in");
		if (in == null) {
			throw new MediationConfigurationException(
					"No terminal named in defined for mediation primitive "
							+ __primitiveDisplayName);
		}

		out = mediationServices.getOutputTerminal("out");
		if (out == null) {
			throw new MediationConfigurationException(
					"No terminal named out defined for mediation primitive "
							+ __primitiveDisplayName);
		}

		/* Initialization completed */
		__initPassed = true;
	}

	/* 
	 * @generated
	 * (non-Javadoc)
	 * @see com.ibm.wsspi.sibx.mediation.Mediation#mediate(com.ibm.wsspi.sibx.mediation.InputTerminal, commonj.sdo.DataObject)
	 */
	public void mediate(InputTerminal inputTerminal, DataObject message)
			throws MediationConfigurationException, MediationBusinessException {
		/* If initialization didn't complete, try again */
		if (!__initPassed) {
			init();
		}

		try {
			doMediate(inputTerminal, (ServiceMessageObject) message);
		} catch (Exception e) {
			if (e instanceof MediationBusinessException) {
				throw (MediationBusinessException) e;
			} else if (e instanceof MediationConfigurationException) {
				throw (MediationConfigurationException) e;
			} else {
				throw new MediationBusinessException(e);
			}
		}
	}

	/**
	 * @generated
	 */
	public void doMediate(InputTerminal inputTerminal, ServiceMessageObject smo)
			throws MediationConfigurationException, MediationBusinessException {
		commonj.sdo.DataObject __smo = (commonj.sdo.DataObject) smo;

		commonj.sdo.DataObject __result__3 = __smo.getDataObject("context")
				.getDataObject("failInfo");

		try {

			{// print BO to log

				com.ibm.websphere.bo.BOXMLSerializer srv = (com.ibm.websphere.bo.BOXMLSerializer) new com.ibm.websphere.sca.ServiceManager()
						.locateService("com/ibm/websphere/bo/BOXMLSerializer");
				commonj.sdo.Type type = __result__3.getType();
				srv.writeDataObject(__result__3, type.getURI(), type.getName(),
						java.lang.System.out);

			}

		}

		catch (java.io.IOException ex) {

		}

		out.fire(__smo);

		//@generated:com.ibm.wbit.activity.ui
		//<?xml version="1.0" encoding="UTF-8"?>
		//<com.ibm.wbit.activity:CompositeActivity xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:com.ibm.wbit.activity="http:///com/ibm/wbit/activity.ecore" name="ActivityMethod">
		//  <parameters name="inputTerminal">
		//    <type xsi:type="com.ibm.wbit.activity:JavaElementType" name="com.ibm.wsspi.sibx.mediation.InputTerminal"/>
		//  </parameters>
		//  <parameters name="smo" objectType="true">
		//    <type xsi:type="com.ibm.wbit.activity:XSDElementType" name="ServiceMessageObject" namespace="http://www.ibm.com/websphere/sibx/smo/v6.0.1"/>
		//  </parameters>
		//  <exceptions>
		//    <type xsi:type="com.ibm.wbit.activity:JavaElementType" name="com.ibm.wsspi.sibx.mediation.MediationBusinessException"/>
		//  </exceptions>
		//  <exceptions>
		//    <type xsi:type="com.ibm.wbit.activity:JavaElementType" name="com.ibm.wsspi.sibx.mediation.MediationConfigurationException"/>
		//  </exceptions>
		//  <executableElements xsi:type="com.ibm.wbit.activity:Expression" value="out" variable="true">
		//    <dataOutputs target="//@executableElements.5/@parameters.0"/>
		//    <type xsi:type="com.ibm.wbit.activity:JavaElementType" name="com.ibm.wsspi.sibx.mediation.OutputTerminal"/>
		//  </executableElements>
		//  <executableElements xsi:type="com.ibm.wbit.activity:Expression" value="smo" variable="true" assignable="false" input="true">
		//    <dataOutputs target="//@executableElements.5/@parameters.1"/>
		//    <type xsi:type="com.ibm.wbit.activity:XSDElementType" name="ServiceMessageObject" namespace="http://www.ibm.com/websphere/sibx/smo/v6.0.1" nillable="false"/>
		//  </executableElements>
		//  <executableElements xsi:type="com.ibm.wbit.activity:Expression" value="smo.context.failInfo" field="true">
		//    <dataOutputs target="//@executableElements.3/@parameters.0"/>
		//    <type xsi:type="com.ibm.wbit.activity:XSDElementType" name="FailInfoType" namespace="http://www.ibm.com/websphere/sibx/smo/v6.0.1"/>
		//  </executableElements>
		//  <executableElements xsi:type="com.ibm.wbit.activity:LibraryActivity" name="print BO to log" description="Print a text representation of the input BO to System.out" category="utility" template="com.ibm.websphere.bo.BOXMLSerializer srv = (com.ibm.websphere.bo.BOXMLSerializer) new com.ibm.websphere.sca.ServiceManager().locateService(&quot;com/ibm/websphere/bo/BOXMLSerializer&quot;);&#xA;commonj.sdo.Type type = &lt;%businessObject%>.getType();&#xA;srv.writeDataObject(&lt;%businessObject%>, type.getURI(), type.getName(), java.lang.System.out);">
		//    <parameters name="businessObject" dataInputs="//@executableElements.2/@dataOutputs.0" displayName="business object">
		//      <type xsi:type="com.ibm.wbit.activity:JavaElementType" name="commonj.sdo.DataObject"/>
		//    </parameters>
		//    <exceptions>
		//      <dataOutputs target="//@executableElements.4/@parameters.0"/>
		//      <type xsi:type="com.ibm.wbit.activity:JavaElementType" name="java.io.IOException"/>
		//    </exceptions>
		//  </executableElements>
		//  <executableElements xsi:type="com.ibm.wbit.activity:ExceptionHandler" name="Exception Handler">
		//    <parameters name="ex" dataInputs="//@executableElements.3/@exceptions.0/@dataOutputs.0">
		//      <type xsi:type="com.ibm.wbit.activity:JavaElementType" name="java.io.IOException"/>
		//    </parameters>
		//    <executableElements xsi:type="com.ibm.wbit.activity:Expression" value="ex" variable="true">
		//      <type xsi:type="com.ibm.wbit.activity:JavaElementType" name="java.io.IOException"/>
		//    </executableElements>
		//    <executableGroups executableElements="//@executableElements.4/@executableElements.0"/>
		//  </executableElements>
		//  <executableElements xsi:type="com.ibm.wbit.activity:JavaActivity" name="fire" category="com.ibm.wsspi.sibx.mediation.OutputTerminal" className="com.ibm.wsspi.sibx.mediation.OutputTerminal" memberName="fire">
		//    <parameters name="OutputTerminal" dataInputs="//@executableElements.0/@dataOutputs.0">
		//      <type xsi:type="com.ibm.wbit.activity:JavaElementType" name="com.ibm.wsspi.sibx.mediation.OutputTerminal"/>
		//    </parameters>
		//    <parameters name="smo" dataInputs="//@executableElements.1/@dataOutputs.0">
		//      <type xsi:type="com.ibm.wbit.activity:XSDElementType" name="ServiceMessageObject" namespace="http://www.ibm.com/websphere/sibx/smo/v6.0.1" nillable="false"/>
		//    </parameters>
		//  </executableElements>
		//  <executableGroups executableElements="//@executableElements.2 //@executableElements.3 //@executableElements.4"/>
		//  <executableGroups executableElements="//@executableElements.0 //@executableElements.1 //@executableElements.5"/>
		//</com.ibm.wbit.activity:CompositeActivity>
		//@generated:end
		//!SMAP!*S WBIACTDBG

		//!SMAP!*L

		//!SMAP!3:2,1

		//!SMAP!4:4,5

		//!SMAP!7:12,1

		//!SMAP!1000000:77,1
	}
}

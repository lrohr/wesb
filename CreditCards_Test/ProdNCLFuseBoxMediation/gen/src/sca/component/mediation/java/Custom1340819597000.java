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
 *  Flow: ProdNCLFuseBoxMediation Interface: ProcessCreditCard Operation: process Type: request Custom Mediation: SetTransientContext
 */
public class Custom1340819597000 extends ESBMediationPrimitive {

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
		java.lang.String __result__4 = "FuseBoxInput";
		try {
			{// Log Level: FINEST
				final String FQCN = getClass().getName();
				java.util.logging.Logger l = java.util.logging.Logger
						.getLogger(FQCN);
				if (l.isLoggable(java.util.logging.Level.FINEST)) {
					com.ibm.websphere.bo.BOXMLSerializer serializer = (com.ibm.websphere.bo.BOXMLSerializer) com.ibm.websphere.sca.ServiceManager.INSTANCE
							.locateService("com/ibm/websphere/bo/BOXMLSerializer");
					java.io.ByteArrayOutputStream stream = new java.io.ByteArrayOutputStream();
					serializer.writeDataObject(__smo, __smo.getType().getURI(),
							__smo.getType().getName(), stream);
					l.logp(java.util.logging.Level.FINEST,
							FQCN.substring(FQCN.lastIndexOf('.') + 1),
							"snippet",
							String.format("%s: %s", __result__4,
									stream.toString()));
				}
			}
		} catch (java.io.IOException ex2) {
		}
		// Set the Transient Context variable used later in the process
		java.lang.String __result__3 = __smo.getDataObject("body")
				.getDataObject("process").getDataObject("cardInfo")
				.getString("credCrdNbr");
		__smo.getDataObject("context").getDataObject("transient")
				.setString("CRED_CRD_NBR", __result__3);
		java.lang.String __result__10 = __smo.getDataObject("body")
				.getDataObject("process").getDataObject("cardInfo")
				.getString("currencyCd");
		__smo.getDataObject("context").getDataObject("transient")
				.setString("CURRENCY_CD", __result__10);
		java.lang.String __result__12 = __smo.getDataObject("body")
				.getDataObject("process").getDataObject("cardInfo")
				.getString("uniqueValId");
		__smo.getDataObject("context").getDataObject("transient")
				.setString("UNIQUE_VAL_ID", __result__12);
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
		//    <dataOutputs target="//@executableElements.13/@parameters.0"/>
		//    <type xsi:type="com.ibm.wbit.activity:JavaElementType" name="com.ibm.wsspi.sibx.mediation.OutputTerminal"/>
		//  </executableElements>
		//  <executableElements xsi:type="com.ibm.wbit.activity:Expression" value="smo" variable="true" assignable="false" input="true">
		//    <dataOutputs target="//@executableElements.13/@parameters.1"/>
		//    <type xsi:type="com.ibm.wbit.activity:XSDElementType" name="ServiceMessageObject" namespace="http://www.ibm.com/websphere/sibx/smo/v6.0.1" nillable="false"/>
		//  </executableElements>
		//  <executableElements xsi:type="com.ibm.wbit.activity:Expression" value="smo.body.process.cardInfo.credCrdNbr" field="true">
		//    <dataOutputs target="//@executableElements.8"/>
		//    <type xsi:type="com.ibm.wbit.activity:XSDElementType" name="string" namespace="http://www.w3.org/2001/XMLSchema" nillable="false"/>
		//  </executableElements>
		//  <executableElements xsi:type="com.ibm.wbit.activity:Expression" value="&quot;FuseBoxInput&quot;" assignable="false">
		//    <dataOutputs target="//@executableElements.5/@parameters.0"/>
		//    <type xsi:type="com.ibm.wbit.activity:XSDElementType" name="string" namespace="http://www.w3.org/2001/XMLSchema"/>
		//  </executableElements>
		//  <executableElements xsi:type="com.ibm.wbit.activity:Expression" value="smo" variable="true" assignable="false" input="true">
		//    <dataOutputs target="//@executableElements.5/@parameters.1"/>
		//    <type xsi:type="com.ibm.wbit.activity:XSDElementType" name="ServiceMessageObject" namespace="http://www.ibm.com/websphere/sibx/smo/v6.0.1"/>
		//  </executableElements>
		//  <executableElements xsi:type="com.ibm.wbit.activity:LibraryActivity" name="Log Level: FINEST" description="BO print to logger" category="utility" template="final String FQCN = getClass().getName();&#xA;java.util.logging.Logger l = java.util.logging.Logger.getLogger(FQCN);&#xA;if(l.isLoggable(java.util.logging.Level.FINEST))&#xA; {&#xA;com.ibm.websphere.bo.BOXMLSerializer serializer =(com.ibm.websphere.bo.BOXMLSerializer) com.ibm.websphere.sca.ServiceManager.INSTANCE.locateService(&quot;com/ibm/websphere/bo/BOXMLSerializer&quot;);&#xA;java.io.ByteArrayOutputStream stream = new java.io.ByteArrayOutputStream();&#xA;serializer.writeDataObject(&lt;%object%>,&lt;%object%>.getType().getURI(),&lt;%object%>.getType().getName(),stream);&#xA;l.logp(java.util.logging.Level.FINEST, FQCN.substring(FQCN.lastIndexOf('.') + 1), &quot;snippet&quot;, String.format(&quot;%s: %s&quot;,&lt;%logMessage%> ,stream.toString() ));&#xA;}">
		//    <parameters name="logMessage" dataInputs="//@executableElements.3/@dataOutputs.0" displayName="Log Message">
		//      <type xsi:type="com.ibm.wbit.activity:JavaElementType" name="java.lang.String"/>
		//    </parameters>
		//    <parameters name="object" dataInputs="//@executableElements.4/@dataOutputs.0" displayName="object">
		//      <type xsi:type="com.ibm.wbit.activity:JavaElementType" name="commonj.sdo.DataObject"/>
		//    </parameters>
		//    <exceptions>
		//      <dataOutputs target="//@executableElements.6/@parameters.0"/>
		//      <type xsi:type="com.ibm.wbit.activity:JavaElementType" name="java.io.IOException"/>
		//    </exceptions>
		//  </executableElements>
		//  <executableElements xsi:type="com.ibm.wbit.activity:ExceptionHandler" name="Exception Handler">
		//    <parameters name="ex2" dataInputs="//@executableElements.5/@exceptions.0/@dataOutputs.0">
		//      <type xsi:type="com.ibm.wbit.activity:JavaElementType" name="java.io.IOException"/>
		//    </parameters>
		//  </executableElements>
		//  <executableElements xsi:type="com.ibm.wbit.activity:Expression" value="&quot;/**/Set the Transient Context variable used later in the process&quot;" assignable="false">
		//    <type xsi:type="com.ibm.wbit.activity:XSDElementType" name="string" namespace="http://www.w3.org/2001/XMLSchema"/>
		//  </executableElements>
		//  <executableElements xsi:type="com.ibm.wbit.activity:Expression" dataInputs="//@executableElements.2/@dataOutputs.0" value="smo.context.transient.CRED_CRD_NBR" field="true">
		//    <type xsi:type="com.ibm.wbit.activity:XSDElementType" name="string" namespace="http://www.w3.org/2001/XMLSchema" nillable="false"/>
		//  </executableElements>
		//  <executableElements xsi:type="com.ibm.wbit.activity:Expression" value="smo.body.process.cardInfo.currencyCd" field="true">
		//    <dataOutputs target="//@executableElements.10"/>
		//    <type xsi:type="com.ibm.wbit.activity:XSDElementType" name="string" namespace="http://www.w3.org/2001/XMLSchema" nillable="false"/>
		//  </executableElements>
		//  <executableElements xsi:type="com.ibm.wbit.activity:Expression" dataInputs="//@executableElements.9/@dataOutputs.0" value="smo.context.transient.CURRENCY_CD" field="true">
		//    <type xsi:type="com.ibm.wbit.activity:XSDElementType" name="string" namespace="http://www.w3.org/2001/XMLSchema" nillable="false"/>
		//  </executableElements>
		//  <executableElements xsi:type="com.ibm.wbit.activity:Expression" value="smo.body.process.cardInfo.uniqueValId" field="true">
		//    <dataOutputs target="//@executableElements.12"/>
		//    <type xsi:type="com.ibm.wbit.activity:XSDElementType" name="string" namespace="http://www.w3.org/2001/XMLSchema" nillable="false"/>
		//  </executableElements>
		//  <executableElements xsi:type="com.ibm.wbit.activity:Expression" dataInputs="//@executableElements.11/@dataOutputs.0" value="smo.context.transient.UNIQUE_VAL_ID" field="true">
		//    <type xsi:type="com.ibm.wbit.activity:XSDElementType" name="string" namespace="http://www.w3.org/2001/XMLSchema" nillable="false"/>
		//  </executableElements>
		//  <executableElements xsi:type="com.ibm.wbit.activity:JavaActivity" name="fire" category="com.ibm.wsspi.sibx.mediation.OutputTerminal" className="com.ibm.wsspi.sibx.mediation.OutputTerminal" memberName="fire">
		//    <parameters name="OutputTerminal" dataInputs="//@executableElements.0/@dataOutputs.0">
		//      <type xsi:type="com.ibm.wbit.activity:JavaElementType" name="com.ibm.wsspi.sibx.mediation.OutputTerminal"/>
		//    </parameters>
		//    <parameters name="smo" dataInputs="//@executableElements.1/@dataOutputs.0">
		//      <type xsi:type="com.ibm.wbit.activity:XSDElementType" name="ServiceMessageObject" namespace="http://www.ibm.com/websphere/sibx/smo/v6.0.1" nillable="false"/>
		//    </parameters>
		//  </executableElements>
		//  <executableGroups executableElements="//@executableElements.3 //@executableElements.4 //@executableElements.5 //@executableElements.6"/>
		//  <executableGroups executableElements="//@executableElements.7"/>
		//  <executableGroups executableElements="//@executableElements.2 //@executableElements.8"/>
		//  <executableGroups executableElements="//@executableElements.9 //@executableElements.10"/>
		//  <executableGroups executableElements="//@executableElements.11 //@executableElements.12"/>
		//  <executableGroups executableElements="//@executableElements.0 //@executableElements.1 //@executableElements.13"/>
		//</com.ibm.wbit.activity:CompositeActivity>
		//@generated:end
		//!SMAP!*S WBIACTDBG
		//!SMAP!*L
		//!SMAP!3:19,1
		//!SMAP!4:2,1
		//!SMAP!6:4,11
		//!SMAP!7:17,1
		//!SMAP!9:20,1
		//!SMAP!10:21,1
		//!SMAP!11:22,1
		//!SMAP!12:23,1
		//!SMAP!13:24,1
		//!SMAP!14:25,1
		//!SMAP!1000000:128,1
	}
}

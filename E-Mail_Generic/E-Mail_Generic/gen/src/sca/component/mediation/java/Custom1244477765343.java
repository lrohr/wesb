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
 *  Flow: E-Mail_Generic Interface: E-Mail_Interface Operation: Send_Email1 Type: request Custom Mediation: Determine_if_blackout_period
 */
public class Custom1244477765343 extends ESBMediationPrimitive {

	private InputTerminal in;
	private OutputTerminal DoNotSendEmail;
	private OutputTerminal SendEmail;

	private int Start_Hour;
	private int End_Hour;

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

		DoNotSendEmail = mediationServices.getOutputTerminal("out");
		if (DoNotSendEmail == null) {
			throw new MediationConfigurationException(
					"No terminal named out defined for mediation primitive "
							+ __primitiveDisplayName);
		}

		SendEmail = mediationServices.getOutputTerminal("out1");
		if (SendEmail == null) {
			throw new MediationConfigurationException(
					"No terminal named out1 defined for mediation primitive "
							+ __primitiveDisplayName);
		}

		/* Initialization completed */
		__initPassed = true;
	}

	/**
	 * @generated
	 * @return Returns the Start_Hour
	 */
	public int getStart_Hour() {
		return Start_Hour;
	}

	/**
	 * @generated
	 * @param Start_Hour The Start_Hour to set.
	 */
	public void setStart_Hour(int Start_Hour) {
		this.Start_Hour = Start_Hour;
	}

	/**
	 * @generated
	 * @return Returns the End_Hour
	 */
	public int getEnd_Hour() {
		return End_Hour;
	}

	/**
	 * @generated
	 * @param End_Hour The End_Hour to set.
	 */
	public void setEnd_Hour(int End_Hour) {
		this.End_Hour = End_Hour;
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
		java.util.Date __result__2;
		{// current date and time
			__result__2 = new java.util.Date();
		}
		java.util.Date currentTime = __result__2;
		int __result__5 = currentTime.getHours();
		int currentHour = __result__5;
		boolean __result__9;
		{// greater than or equal to
			__result__9 = currentHour >= Start_Hour;
		}
		boolean isGreater = __result__9;
		boolean __result__13;
		{// less than or equal to
			__result__13 = currentHour <= End_Hour;
		}
		boolean isLess = __result__13;
		// If current time is greater than START and less than END, ....
		boolean __result__1 = isGreater && isLess;
		if (__result__1) {
			// DO NOT SEND
			DoNotSendEmail.fire(__smo);
		} else {
			// SEND
			SendEmail.fire(__smo);
		}

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
		//  <executableElements xsi:type="com.ibm.wbit.activity:Expression" value="isGreater &amp;&amp; isLess" assignable="false">
		//    <dataOutputs target="//@executableElements.15"/>
		//    <type xsi:type="com.ibm.wbit.activity:JavaElementType" name="boolean"/>
		//  </executableElements>
		//  <executableElements xsi:type="com.ibm.wbit.activity:LibraryActivity" name="current date and time" description="The current date and time" category="date" template="&lt;%return%> new java.util.Date();">
		//    <result name="dateTimeNow" displayName="date time now">
		//      <dataOutputs target="//@executableElements.2"/>
		//      <type xsi:type="com.ibm.wbit.activity:JavaElementType" name="java.util.Date"/>
		//    </result>
		//  </executableElements>
		//  <executableElements xsi:type="com.ibm.wbit.activity:Expression" dataInputs="//@executableElements.1/@result/@dataOutputs.0" value="currentTime" localVariable="//@localVariables.0" variable="true">
		//    <type xsi:type="com.ibm.wbit.activity:JavaElementType" name="java.util.Date"/>
		//  </executableElements>
		//  <executableElements xsi:type="com.ibm.wbit.activity:Expression" value="currentTime" localVariable="//@localVariables.0" variable="true">
		//    <dataOutputs target="//@executableElements.4/@parameters.0"/>
		//    <type xsi:type="com.ibm.wbit.activity:JavaElementType" name="java.util.Date"/>
		//  </executableElements>
		//  <executableElements xsi:type="com.ibm.wbit.activity:JavaActivity" name="getHours" category="java.util.Date" className="java.util.Date" memberName="getHours">
		//    <parameters name="Date" dataInputs="//@executableElements.3/@dataOutputs.0">
		//      <type xsi:type="com.ibm.wbit.activity:JavaElementType" name="java.util.Date"/>
		//    </parameters>
		//    <result>
		//      <dataOutputs target="//@executableElements.5"/>
		//      <type xsi:type="com.ibm.wbit.activity:JavaElementType" name="int"/>
		//    </result>
		//  </executableElements>
		//  <executableElements xsi:type="com.ibm.wbit.activity:Expression" dataInputs="//@executableElements.4/@result/@dataOutputs.0" value="currentHour" localVariable="//@localVariables.1" variable="true">
		//    <type xsi:type="com.ibm.wbit.activity:JavaElementType" name="int"/>
		//  </executableElements>
		//  <executableElements xsi:type="com.ibm.wbit.activity:Expression" value="currentHour" localVariable="//@localVariables.1" variable="true">
		//    <dataOutputs target="//@executableElements.8/@parameters.0"/>
		//    <type xsi:type="com.ibm.wbit.activity:JavaElementType" name="int"/>
		//  </executableElements>
		//  <executableElements xsi:type="com.ibm.wbit.activity:Expression" value="Start_Hour" variable="true">
		//    <dataOutputs target="//@executableElements.8/@parameters.1"/>
		//    <type xsi:type="com.ibm.wbit.activity:JavaElementType" name="int"/>
		//  </executableElements>
		//  <executableElements xsi:type="com.ibm.wbit.activity:LibraryActivity" name="greater than or equal to" description="True if the value of the first input is greater than or equal to the value of the second input" category="math" template="&lt;%return%> &lt;%input1%> >= &lt;%input2%>;">
		//    <parameters name="input1" dataInputs="//@executableElements.6/@dataOutputs.0" displayName="input 1">
		//      <type xsi:type="com.ibm.wbit.activity:JavaElementType" name="double"/>
		//    </parameters>
		//    <parameters name="input2" dataInputs="//@executableElements.7/@dataOutputs.0" displayName="input 2">
		//      <type xsi:type="com.ibm.wbit.activity:JavaElementType" name="double"/>
		//    </parameters>
		//    <result name="result" displayName="result">
		//      <dataOutputs target="//@executableElements.9"/>
		//      <type xsi:type="com.ibm.wbit.activity:JavaElementType" name="boolean"/>
		//    </result>
		//  </executableElements>
		//  <executableElements xsi:type="com.ibm.wbit.activity:Expression" dataInputs="//@executableElements.8/@result/@dataOutputs.0" value="isGreater" localVariable="//@localVariables.2" variable="true">
		//    <type xsi:type="com.ibm.wbit.activity:JavaElementType" name="boolean"/>
		//  </executableElements>
		//  <executableElements xsi:type="com.ibm.wbit.activity:Expression" value="currentHour" localVariable="//@localVariables.1" variable="true">
		//    <dataOutputs target="//@executableElements.12/@parameters.0"/>
		//    <type xsi:type="com.ibm.wbit.activity:JavaElementType" name="int"/>
		//  </executableElements>
		//  <executableElements xsi:type="com.ibm.wbit.activity:Expression" value="End_Hour" variable="true">
		//    <dataOutputs target="//@executableElements.12/@parameters.1"/>
		//    <type xsi:type="com.ibm.wbit.activity:JavaElementType" name="int"/>
		//  </executableElements>
		//  <executableElements xsi:type="com.ibm.wbit.activity:LibraryActivity" name="less than or equal to" description="True if the value of the first input is less than or equal to the value of the second input" category="math" template="&lt;%return%> &lt;%input1%> &lt;= &lt;%input2%>;">
		//    <parameters name="input1" dataInputs="//@executableElements.10/@dataOutputs.0" displayName="input 1">
		//      <type xsi:type="com.ibm.wbit.activity:JavaElementType" name="double"/>
		//    </parameters>
		//    <parameters name="input2" dataInputs="//@executableElements.11/@dataOutputs.0" displayName="input 2">
		//      <type xsi:type="com.ibm.wbit.activity:JavaElementType" name="double"/>
		//    </parameters>
		//    <result name="result" displayName="result">
		//      <dataOutputs target="//@executableElements.13"/>
		//      <type xsi:type="com.ibm.wbit.activity:JavaElementType" name="boolean"/>
		//    </result>
		//  </executableElements>
		//  <executableElements xsi:type="com.ibm.wbit.activity:Expression" dataInputs="//@executableElements.12/@result/@dataOutputs.0" value="isLess" localVariable="//@localVariables.3" variable="true">
		//    <type xsi:type="com.ibm.wbit.activity:JavaElementType" name="boolean"/>
		//  </executableElements>
		//  <executableElements xsi:type="com.ibm.wbit.activity:Expression" value="&quot;/**/If current time is greater than START and less than END, ....&quot;" assignable="false">
		//    <type xsi:type="com.ibm.wbit.activity:NullElementType"/>
		//  </executableElements>
		//  <executableElements xsi:type="com.ibm.wbit.activity:BranchElement" dataInputs="//@executableElements.0/@dataOutputs.0">
		//    <conditionalActivities>
		//      <executableElements xsi:type="com.ibm.wbit.activity:Expression" value="&quot;/**/DO NOT SEND&quot;" assignable="false">
		//        <type xsi:type="com.ibm.wbit.activity:XSDElementType" name="string" namespace="http://www.w3.org/2001/XMLSchema"/>
		//      </executableElements>
		//      <executableElements xsi:type="com.ibm.wbit.activity:Expression" value="DoNotSendEmail" variable="true">
		//        <dataOutputs target="//@executableElements.15/@conditionalActivities.0/@executableElements.3/@parameters.0"/>
		//        <type xsi:type="com.ibm.wbit.activity:JavaElementType" name="com.ibm.wsspi.sibx.mediation.OutputTerminal"/>
		//      </executableElements>
		//      <executableElements xsi:type="com.ibm.wbit.activity:Expression" value="smo" variable="true" assignable="false" input="true">
		//        <dataOutputs target="//@executableElements.15/@conditionalActivities.0/@executableElements.3/@parameters.1"/>
		//        <type xsi:type="com.ibm.wbit.activity:XSDElementType" name="ServiceMessageObject" namespace="http://www.ibm.com/websphere/sibx/smo/v6.0.1"/>
		//      </executableElements>
		//      <executableElements xsi:type="com.ibm.wbit.activity:JavaActivity" name="fire" category="com.ibm.wsspi.sibx.mediation.OutputTerminal" className="com.ibm.wsspi.sibx.mediation.OutputTerminal" memberName="fire">
		//        <parameters name="OutputTerminal" dataInputs="//@executableElements.15/@conditionalActivities.0/@executableElements.1/@dataOutputs.0">
		//          <type xsi:type="com.ibm.wbit.activity:JavaElementType" name="com.ibm.wsspi.sibx.mediation.OutputTerminal"/>
		//        </parameters>
		//        <parameters name="smo" dataInputs="//@executableElements.15/@conditionalActivities.0/@executableElements.2/@dataOutputs.0">
		//          <type xsi:type="com.ibm.wbit.activity:XSDElementType" name="ServiceMessageObject" namespace="http://www.ibm.com/websphere/sibx/smo/v6.0.1" nillable="false"/>
		//        </parameters>
		//      </executableElements>
		//      <executableGroups executableElements="//@executableElements.15/@conditionalActivities.0/@executableElements.0"/>
		//      <executableGroups executableElements="//@executableElements.15/@conditionalActivities.0/@executableElements.1 //@executableElements.15/@conditionalActivities.0/@executableElements.2 //@executableElements.15/@conditionalActivities.0/@executableElements.3"/>
		//      <condition value="true"/>
		//    </conditionalActivities>
		//    <conditionalActivities>
		//      <executableElements xsi:type="com.ibm.wbit.activity:Expression" value="smo" variable="true" assignable="false" input="true">
		//        <dataOutputs target="//@executableElements.15/@conditionalActivities.1/@executableElements.3/@parameters.1"/>
		//        <type xsi:type="com.ibm.wbit.activity:XSDElementType" name="ServiceMessageObject" namespace="http://www.ibm.com/websphere/sibx/smo/v6.0.1" nillable="false"/>
		//      </executableElements>
		//      <executableElements xsi:type="com.ibm.wbit.activity:Expression" value="SendEmail" variable="true">
		//        <dataOutputs target="//@executableElements.15/@conditionalActivities.1/@executableElements.3/@parameters.0"/>
		//        <type xsi:type="com.ibm.wbit.activity:JavaElementType" name="com.ibm.wsspi.sibx.mediation.OutputTerminal"/>
		//      </executableElements>
		//      <executableElements xsi:type="com.ibm.wbit.activity:Expression" value="&quot;/**/SEND&quot;" assignable="false">
		//        <type xsi:type="com.ibm.wbit.activity:XSDElementType" name="string" namespace="http://www.w3.org/2001/XMLSchema"/>
		//      </executableElements>
		//      <executableElements xsi:type="com.ibm.wbit.activity:JavaActivity" name="fire" category="com.ibm.wsspi.sibx.mediation.OutputTerminal" className="com.ibm.wsspi.sibx.mediation.OutputTerminal" memberName="fire">
		//        <parameters name="OutputTerminal" dataInputs="//@executableElements.15/@conditionalActivities.1/@executableElements.1/@dataOutputs.0">
		//          <type xsi:type="com.ibm.wbit.activity:JavaElementType" name="com.ibm.wsspi.sibx.mediation.OutputTerminal"/>
		//        </parameters>
		//        <parameters name="smo" dataInputs="//@executableElements.15/@conditionalActivities.1/@executableElements.0/@dataOutputs.0">
		//          <type xsi:type="com.ibm.wbit.activity:XSDElementType" name="ServiceMessageObject" namespace="http://www.ibm.com/websphere/sibx/smo/v6.0.1" nillable="false"/>
		//        </parameters>
		//      </executableElements>
		//      <executableGroups executableElements="//@executableElements.15/@conditionalActivities.1/@executableElements.2"/>
		//      <executableGroups executableElements="//@executableElements.15/@conditionalActivities.1/@executableElements.0 //@executableElements.15/@conditionalActivities.1/@executableElements.1 //@executableElements.15/@conditionalActivities.1/@executableElements.3"/>
		//      <condition value=""/>
		//    </conditionalActivities>
		//  </executableElements>
		//  <localVariables name="currentTime">
		//    <type xsi:type="com.ibm.wbit.activity:JavaElementType" name="java.util.Date"/>
		//  </localVariables>
		//  <localVariables name="currentHour">
		//    <type xsi:type="com.ibm.wbit.activity:JavaElementType" name="int"/>
		//  </localVariables>
		//  <localVariables name="isGreater">
		//    <type xsi:type="com.ibm.wbit.activity:JavaElementType" name="boolean"/>
		//  </localVariables>
		//  <localVariables name="isLess">
		//    <type xsi:type="com.ibm.wbit.activity:JavaElementType" name="boolean"/>
		//  </localVariables>
		//  <executableGroups executableElements="//@executableElements.1 //@executableElements.2"/>
		//  <executableGroups executableElements="//@executableElements.3 //@executableElements.4 //@executableElements.5"/>
		//  <executableGroups executableElements="//@executableElements.6 //@executableElements.7 //@executableElements.8 //@executableElements.9"/>
		//  <executableGroups executableElements="//@executableElements.10 //@executableElements.11 //@executableElements.12 //@executableElements.13"/>
		//  <executableGroups executableElements="//@executableElements.14"/>
		//  <executableGroups executableElements="//@executableElements.0 //@executableElements.15"/>
		//</com.ibm.wbit.activity:CompositeActivity>
		//@generated:end
		//!SMAP!*S WBIACTDBG
		//!SMAP!*L
		//!SMAP!1:20,1
		//!SMAP!2:2,4
		//!SMAP!3:6,1
		//!SMAP!5:7,1
		//!SMAP!6:8,1
		//!SMAP!9:9,4
		//!SMAP!10:13,1
		//!SMAP!13:14,4
		//!SMAP!14:18,2
		//!SMAP!16:21,1
		//!SMAP!17:22,1
		//!SMAP!21:23,1
		//!SMAP!26:27,1
		//!SMAP!1000000:209,1
	}
}

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
 *  Flow: Generic_Service Interface: NCL_WESB_Generic_ReqRsp Operation: Request_Response Type: response Custom Mediation: handleError
 */
public class Custom1259625342281 extends ESBMediationPrimitive {

	private InputTerminal in;
	private InputTerminal in1;
	private InputTerminal in2;
	private InputTerminal in3;
	private InputTerminal in4;
	private InputTerminal in5;
	private InputTerminal in6;
	private InputTerminal in7;
	private InputTerminal in8;
	private InputTerminal in9;
	private InputTerminal in10;
	private InputTerminal in11;
	private InputTerminal in12;
	private InputTerminal in13;
	private InputTerminal in14;
	private InputTerminal in15;
	private InputTerminal in16;
	private InputTerminal in17;
	private InputTerminal in18;
	private InputTerminal in19;
	private InputTerminal in20;
	private InputTerminal in21;
	private InputTerminal in22;
	private InputTerminal in23;
	private InputTerminal in24;
	private InputTerminal in25;
	private InputTerminal in26;
	private InputTerminal in27;
	private InputTerminal in28;
	private InputTerminal in29;
	private InputTerminal in30;
	private InputTerminal in31;
	private InputTerminal in32;
	private InputTerminal in33;
	private InputTerminal in34;
	private InputTerminal in35;
	private InputTerminal in36;
	private InputTerminal in37;
	private InputTerminal in38;
	private InputTerminal in39;
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

		in1 = mediationServices.getInputTerminal("in1");
		if (in1 == null) {
			throw new MediationConfigurationException(
					"No terminal named in1 defined for mediation primitive "
							+ __primitiveDisplayName);
		}

		in2 = mediationServices.getInputTerminal("in2");
		if (in2 == null) {
			throw new MediationConfigurationException(
					"No terminal named in2 defined for mediation primitive "
							+ __primitiveDisplayName);
		}

		in3 = mediationServices.getInputTerminal("in3");
		if (in3 == null) {
			throw new MediationConfigurationException(
					"No terminal named in3 defined for mediation primitive "
							+ __primitiveDisplayName);
		}

		in4 = mediationServices.getInputTerminal("in4");
		if (in4 == null) {
			throw new MediationConfigurationException(
					"No terminal named in4 defined for mediation primitive "
							+ __primitiveDisplayName);
		}

		in5 = mediationServices.getInputTerminal("in5");
		if (in5 == null) {
			throw new MediationConfigurationException(
					"No terminal named in5 defined for mediation primitive "
							+ __primitiveDisplayName);
		}

		in6 = mediationServices.getInputTerminal("in6");
		if (in6 == null) {
			throw new MediationConfigurationException(
					"No terminal named in6 defined for mediation primitive "
							+ __primitiveDisplayName);
		}

		in7 = mediationServices.getInputTerminal("in7");
		if (in7 == null) {
			throw new MediationConfigurationException(
					"No terminal named in7 defined for mediation primitive "
							+ __primitiveDisplayName);
		}

		in8 = mediationServices.getInputTerminal("in8");
		if (in8 == null) {
			throw new MediationConfigurationException(
					"No terminal named in8 defined for mediation primitive "
							+ __primitiveDisplayName);
		}

		in9 = mediationServices.getInputTerminal("in9");
		if (in9 == null) {
			throw new MediationConfigurationException(
					"No terminal named in9 defined for mediation primitive "
							+ __primitiveDisplayName);
		}

		in10 = mediationServices.getInputTerminal("in10");
		if (in10 == null) {
			throw new MediationConfigurationException(
					"No terminal named in10 defined for mediation primitive "
							+ __primitiveDisplayName);
		}

		in11 = mediationServices.getInputTerminal("in11");
		if (in11 == null) {
			throw new MediationConfigurationException(
					"No terminal named in11 defined for mediation primitive "
							+ __primitiveDisplayName);
		}

		in12 = mediationServices.getInputTerminal("in12");
		if (in12 == null) {
			throw new MediationConfigurationException(
					"No terminal named in12 defined for mediation primitive "
							+ __primitiveDisplayName);
		}

		in13 = mediationServices.getInputTerminal("in13");
		if (in13 == null) {
			throw new MediationConfigurationException(
					"No terminal named in13 defined for mediation primitive "
							+ __primitiveDisplayName);
		}

		in14 = mediationServices.getInputTerminal("in14");
		if (in14 == null) {
			throw new MediationConfigurationException(
					"No terminal named in14 defined for mediation primitive "
							+ __primitiveDisplayName);
		}

		in15 = mediationServices.getInputTerminal("in15");
		if (in15 == null) {
			throw new MediationConfigurationException(
					"No terminal named in15 defined for mediation primitive "
							+ __primitiveDisplayName);
		}

		in16 = mediationServices.getInputTerminal("in16");
		if (in16 == null) {
			throw new MediationConfigurationException(
					"No terminal named in16 defined for mediation primitive "
							+ __primitiveDisplayName);
		}

		in17 = mediationServices.getInputTerminal("in17");
		if (in17 == null) {
			throw new MediationConfigurationException(
					"No terminal named in17 defined for mediation primitive "
							+ __primitiveDisplayName);
		}

		in18 = mediationServices.getInputTerminal("in18");
		if (in18 == null) {
			throw new MediationConfigurationException(
					"No terminal named in18 defined for mediation primitive "
							+ __primitiveDisplayName);
		}

		in19 = mediationServices.getInputTerminal("in19");
		if (in19 == null) {
			throw new MediationConfigurationException(
					"No terminal named in19 defined for mediation primitive "
							+ __primitiveDisplayName);
		}

		in20 = mediationServices.getInputTerminal("in20");
		if (in20 == null) {
			throw new MediationConfigurationException(
					"No terminal named in20 defined for mediation primitive "
							+ __primitiveDisplayName);
		}

		in21 = mediationServices.getInputTerminal("in21");
		if (in21 == null) {
			throw new MediationConfigurationException(
					"No terminal named in21 defined for mediation primitive "
							+ __primitiveDisplayName);
		}

		in22 = mediationServices.getInputTerminal("in22");
		if (in22 == null) {
			throw new MediationConfigurationException(
					"No terminal named in22 defined for mediation primitive "
							+ __primitiveDisplayName);
		}

		in23 = mediationServices.getInputTerminal("in23");
		if (in23 == null) {
			throw new MediationConfigurationException(
					"No terminal named in23 defined for mediation primitive "
							+ __primitiveDisplayName);
		}

		in24 = mediationServices.getInputTerminal("in24");
		if (in24 == null) {
			throw new MediationConfigurationException(
					"No terminal named in24 defined for mediation primitive "
							+ __primitiveDisplayName);
		}

		in25 = mediationServices.getInputTerminal("in25");
		if (in25 == null) {
			throw new MediationConfigurationException(
					"No terminal named in25 defined for mediation primitive "
							+ __primitiveDisplayName);
		}

		in26 = mediationServices.getInputTerminal("in26");
		if (in26 == null) {
			throw new MediationConfigurationException(
					"No terminal named in26 defined for mediation primitive "
							+ __primitiveDisplayName);
		}

		in27 = mediationServices.getInputTerminal("in27");
		if (in27 == null) {
			throw new MediationConfigurationException(
					"No terminal named in27 defined for mediation primitive "
							+ __primitiveDisplayName);
		}

		in28 = mediationServices.getInputTerminal("in28");
		if (in28 == null) {
			throw new MediationConfigurationException(
					"No terminal named in28 defined for mediation primitive "
							+ __primitiveDisplayName);
		}

		in29 = mediationServices.getInputTerminal("in29");
		if (in29 == null) {
			throw new MediationConfigurationException(
					"No terminal named in29 defined for mediation primitive "
							+ __primitiveDisplayName);
		}

		in30 = mediationServices.getInputTerminal("in30");
		if (in30 == null) {
			throw new MediationConfigurationException(
					"No terminal named in30 defined for mediation primitive "
							+ __primitiveDisplayName);
		}

		in31 = mediationServices.getInputTerminal("in31");
		if (in31 == null) {
			throw new MediationConfigurationException(
					"No terminal named in31 defined for mediation primitive "
							+ __primitiveDisplayName);
		}

		in32 = mediationServices.getInputTerminal("in32");
		if (in32 == null) {
			throw new MediationConfigurationException(
					"No terminal named in32 defined for mediation primitive "
							+ __primitiveDisplayName);
		}

		in33 = mediationServices.getInputTerminal("in33");
		if (in33 == null) {
			throw new MediationConfigurationException(
					"No terminal named in33 defined for mediation primitive "
							+ __primitiveDisplayName);
		}

		in34 = mediationServices.getInputTerminal("in34");
		if (in34 == null) {
			throw new MediationConfigurationException(
					"No terminal named in34 defined for mediation primitive "
							+ __primitiveDisplayName);
		}

		in35 = mediationServices.getInputTerminal("in35");
		if (in35 == null) {
			throw new MediationConfigurationException(
					"No terminal named in35 defined for mediation primitive "
							+ __primitiveDisplayName);
		}

		in36 = mediationServices.getInputTerminal("in36");
		if (in36 == null) {
			throw new MediationConfigurationException(
					"No terminal named in36 defined for mediation primitive "
							+ __primitiveDisplayName);
		}

		in37 = mediationServices.getInputTerminal("in37");
		if (in37 == null) {
			throw new MediationConfigurationException(
					"No terminal named in37 defined for mediation primitive "
							+ __primitiveDisplayName);
		}

		in38 = mediationServices.getInputTerminal("in38");
		if (in38 == null) {
			throw new MediationConfigurationException(
					"No terminal named in38 defined for mediation primitive "
							+ __primitiveDisplayName);
		}

		in39 = mediationServices.getInputTerminal("in39");
		if (in39 == null) {
			throw new MediationConfigurationException(
					"No terminal named in39 defined for mediation primitive "
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
		com.ibm.websphere.sibx.smobo.ServiceMessageObject __result__3 = com.ncl.wesb.ErrorHandlerUtils
				.handleGenericSMOAndGetResponseSMO((com.ibm.websphere.sibx.smobo.ServiceMessageObject) __smo);
		out.fire(__result__3);

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
		//    <dataOutputs target="//@executableElements.3/@parameters.0"/>
		//    <type xsi:type="com.ibm.wbit.activity:JavaElementType" name="com.ibm.wsspi.sibx.mediation.OutputTerminal"/>
		//  </executableElements>
		//  <executableElements xsi:type="com.ibm.wbit.activity:Expression" value="smo" variable="true" assignable="false" input="true">
		//    <dataOutputs target="//@executableElements.2/@parameters.0"/>
		//    <type xsi:type="com.ibm.wbit.activity:XSDElementType" name="ServiceMessageObject" namespace="http://www.ibm.com/websphere/sibx/smo/v6.0.1"/>
		//  </executableElements>
		//  <executableElements xsi:type="com.ibm.wbit.activity:JavaActivity" name="handleGenericSMOAndGetResponseSMO" category="com.ncl.wesb.ErrorHandlerUtils" className="com.ncl.wesb.ErrorHandlerUtils" static="true" memberName="handleGenericSMOAndGetResponseSMO">
		//    <parameters name="inputSMO" dataInputs="//@executableElements.1/@dataOutputs.0">
		//      <type xsi:type="com.ibm.wbit.activity:JavaElementType" name="com.ibm.websphere.sibx.smobo.ServiceMessageObject"/>
		//    </parameters>
		//    <result>
		//      <dataOutputs target="//@executableElements.3/@parameters.1"/>
		//      <type xsi:type="com.ibm.wbit.activity:JavaElementType" name="com.ibm.websphere.sibx.smobo.ServiceMessageObject"/>
		//    </result>
		//  </executableElements>
		//  <executableElements xsi:type="com.ibm.wbit.activity:JavaActivity" name="fire" category="com.ibm.wsspi.sibx.mediation.OutputTerminal" className="com.ibm.wsspi.sibx.mediation.OutputTerminal" memberName="fire">
		//    <parameters name="OutputTerminal" dataInputs="//@executableElements.0/@dataOutputs.0">
		//      <type xsi:type="com.ibm.wbit.activity:JavaElementType" name="com.ibm.wsspi.sibx.mediation.OutputTerminal"/>
		//    </parameters>
		//    <parameters name="smo" dataInputs="//@executableElements.2/@result/@dataOutputs.0">
		//      <type xsi:type="com.ibm.wbit.activity:XSDElementType" name="ServiceMessageObject" namespace="http://www.ibm.com/websphere/sibx/smo/v6.0.1" nillable="false"/>
		//    </parameters>
		//  </executableElements>
		//  <executableGroups executableElements="//@executableElements.0 //@executableElements.1 //@executableElements.2 //@executableElements.3"/>
		//</com.ibm.wbit.activity:CompositeActivity>
		//@generated:end
		//!SMAP!*S WBIACTDBG
		//!SMAP!*L
		//!SMAP!3:2,1
		//!SMAP!4:3,1
		//!SMAP!1000000:53,1
	}
}

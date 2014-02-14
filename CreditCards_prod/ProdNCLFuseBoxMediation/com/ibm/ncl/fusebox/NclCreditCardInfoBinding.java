package com.ibm.ncl.fusebox;

import javax.jms.JMSException; 
import javax.jms.Message; 
import javax.jms.ObjectMessage;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.ibm.websphere.sca.jms.data.JMSDataBinding; 
import com.ncl.fusebox.NclCreditCardInfo;

import commonj.connector.runtime.DataBindingException; 
import commonj.sdo.DataObject; 
import com.ibm.websphere.sca.ServiceManager;
import com.ibm.websphere.bo.BOFactory;

/*
 * This class converts the JMS message to SDO Business Object NclCreditCardInfo
 * 
 */
public class NclCreditCardInfoBinding implements JMSDataBinding { 

	/**
	 * 
	 */
	private DataObject creditCardBO = null;
	private static final long serialVersionUID = 1L;

	private Log log = LogFactory.getLog(NclCreditCardInfoBinding.class.getName());

	public int getMessageType() {return 0;} 
	public void read(Message message) throws JMSException {
		log.debug("Inside Binding Handler");
		ServiceManager serviceManager = new ServiceManager(); 
		BOFactory factory = (BOFactory) serviceManager 
		.locateService("com/ibm/websphere/bo/BOFactory"); 

		NclCreditCardInfo nclObj = (NclCreditCardInfo) ((ObjectMessage) message).getObject(); 
		DataObject nclCreditCardBO = factory.create("http://FuseBoxLib", "NclCreditCardInfo"); 
		try {
			nclCreditCardBO.setString("currencyCd", nclObj.getCurrencyCd());
			nclCreditCardBO.setString("credCrdNbr", nclObj.getCredCrdNbr());
			nclCreditCardBO.setString("transAmt", nclObj.getTransAmt());
			nclCreditCardBO.setString("ccExpDat", nclObj.getCcExpDat());
			nclCreditCardBO.setString("uniqueValId", nclObj.getUniqueValId());
			nclCreditCardBO.setString("transId", nclObj.getTransId());
			nclCreditCardBO.setString("arrivalDat", nclObj.getArrivalDat());
			nclCreditCardBO.setString("departureDat", nclObj.getDepartureDat());
			nclCreditCardBO.setString("shipNam", nclObj.getShipNam());
			nclCreditCardBO.setString("destEntityId", nclObj.getDestEntityId());
			nclCreditCardBO.setString("ccTransId", nclObj.getCcTransId());
			nclCreditCardBO.setString("manAuthCodeTxt", nclObj.getManAuthCodeTxt());
			nclCreditCardBO.setString("transTypeTxt", nclObj.getTransTypeTxt());
			nclCreditCardBO.setString("srcEntityId", nclObj.getSrcEntityId());
			nclCreditCardBO.setString("resGrpId", nclObj.getResGrpId());
			nclCreditCardBO.setString("shipCd", nclObj.getShipCd());
			nclCreditCardBO.setString("inputResId", nclObj.getInputResId());
			nclCreditCardBO.setString("inputGroupId", nclObj.getInputGroupId());
			nclCreditCardBO.setString("officeCodeTxt", nclObj.getOfficeCodeTxt());
			nclCreditCardBO.setString("srcEntityTxt", nclObj.getSrcEntityTxt());
			nclCreditCardBO.setString("destEntityTxt", nclObj.getDestEntityTxt());
			nclCreditCardBO.setString("ccTypeTxt", nclObj.getCcTypeTxt());
			nclCreditCardBO.setString("terminalId", nclObj.getTerminalId());
			nclCreditCardBO.setString("sourceTxt", nclObj.getSourceTxt());
			setDataObject(nclCreditCardBO);
		} catch (DataBindingException e) {
			log.error("Inside Data Binding : Failed" + e.getLocalizedMessage());
			e.printStackTrace();
		}		
	} 
	public void write(Message arg0) throws JMSException {} 
	public boolean isBusinessException() {return false;} 
	public void setBusinessException(boolean arg0) {} 
	public DataObject getDataObject() throws DataBindingException {return creditCardBO;} 
	public void setDataObject(DataObject bo) throws DataBindingException {
		this.creditCardBO = bo;
	} 
}
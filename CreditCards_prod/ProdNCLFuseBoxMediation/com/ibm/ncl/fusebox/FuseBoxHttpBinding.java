package com.ibm.ncl.fusebox;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.ArrayList;

import javax.xml.parsers.DocumentBuilderFactory;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.xpath.XPathAPI;
import org.w3c.dom.Document;
import org.w3c.dom.Node;

import com.ibm.websphere.bo.BOFactory;
import com.ibm.websphere.bo.BOXMLSerializer;
import com.ibm.websphere.http.data.bindings.HTTPStreamDataBinding;
import com.ibm.websphere.http.data.streams.HTTPInputStream;
import com.ibm.websphere.http.data.streams.HTTPOutputStream;
import com.ibm.websphere.http.headers.HTTPControl;
import com.ibm.websphere.http.headers.HTTPHeaders;
import com.ibm.websphere.sca.ServiceManager;
import commonj.connector.runtime.DataBindingException;
import commonj.sdo.DataObject;
public class FuseBoxHttpBinding implements HTTPStreamDataBinding 
{

	/**
	 * 20140211   added edits aproval code and response text   with Raghu's help
	 */
	private static final long serialVersionUID = 1L;
	private DataObject creditCardResponse;
	private HTTPControl httpControl;
	private HTTPHeaders httpHeaders;
	private boolean isBusinessException = false;
	private transient ByteArrayOutputStream nativeData;
	private Log log = LogFactory.getLog(FuseBoxHttpBinding.class.getName());
	public FuseBoxHttpBinding() {
		nativeData = new ByteArrayOutputStream();
	}

	public void convertToNativeData() throws DataBindingException {
		DataObject inputDataObject = getDataObject();


		BOXMLSerializer serializer = (BOXMLSerializer)new ServiceManager().locateService("com/ibm/websphere/bo/BOXMLSerializer");
		try {
			serializer.writeDataObject(inputDataObject,inputDataObject.getType().getURI(),"Request",nativeData);			
		} catch (IOException e) {
			e.printStackTrace();
			log.error(e.getMessage());
		}
		log.debug("Data object on request :" + nativeData.toString());
		
	}

	public void convertFromNativeData(HTTPInputStream arg0) throws DataBindingException, IOException {
		ServiceManager serviceManager = ServiceManager.INSTANCE;
		BOFactory bofactory = (BOFactory) serviceManager.locateService("com/ibm/websphere/bo/BOFactory");
		DataObject creditCardResponseBO = bofactory.createByElement(null,"Response");
		if ( creditCardResponseBO == null ){
			log.error("Cannot Create Response BO");
			throw new DataBindingException("Cannot Create Response BO");
		}

		nativeData.reset();
		byte[] buf = new byte[1024];
		int read = -1;
		while((read = arg0.read(buf, 0, 1024)) != -1) {
			nativeData.write(buf,0, read);
		}	
		if ( nativeData.size() ==0){
			throw new DataBindingException("Empty Request in convertFromNativeData");
		}
		
		log.debug("In Binding handler convertFromNativeData");
		log.debug("nativeData:"+nativeData);
		DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
		factory.setNamespaceAware(false);
		try {
			Document rdf = factory.newDocumentBuilder().parse(new ByteArrayInputStream(nativeData.toByteArray()));
				
			String chainCode = getXpathNodeValue(rdf, "/Response/Field[@name='Chain_Code']/text()");
			String locationId = getXpathNodeValue(rdf, "/Response/Field[@name='Location_ID']/text()");
			String venueId = getXpathNodeValue(rdf, "/Response/Field[@name='Venue_ID']/text()");
			String messageID = getXpathNodeValue(rdf, "/Response/Field[@name='Message_ID']/text()");
			String invoiceNbr = getXpathNodeValue(rdf, "/Response/Field[@name='Invoice_Nbr']/text()");
			String approvalCode = getXpathNodeValue(rdf, "/Response/Field[@name='Approval_Code']/text()");
			String responseCode = getXpathNodeValue(rdf, "/Response/Field[@name='Response_Code']/text()");
			String responseText = getXpathNodeValue(rdf, "/Response/Field[@name='Response_Text']/text()");


			log.info("Message_ID: = "+ messageID+" approvalCode:"+approvalCode + " Response Code:"+ responseCode);
			java.util.List list = new ArrayList();
			list.add(createFieldElement(bofactory,"Chain_Code",chainCode));
			list.add(createFieldElement(bofactory,"Location_ID",locationId));
			list.add(createFieldElement(bofactory,"Venue_ID",venueId));
			list.add(createFieldElement(bofactory,"Message_ID",messageID));
			list.add(createFieldElement(bofactory,"Invoice_Nbr",invoiceNbr));
			if (responseCode!=null &&!("".equals(responseCode.trim()))){
				list.add(createFieldElement(bofactory,"Response_Code",responseCode));
			}
			if (approvalCode != null && !("".equals(approvalCode.trim()))){
				list.add(createFieldElement(bofactory,"Approval_Code",approvalCode));	
			}
			if (responseText != null && !("".equals(responseText.trim()))) {
			list.add(createFieldElement(bofactory,"Response_Text",responseText));
			}
			creditCardResponseBO.setList("Field", list);
		}catch(Exception e) {
			e.printStackTrace();
		}

		creditCardResponse = creditCardResponseBO;
	}
	private String getXpathNodeValue(Document doc,String xpath){
		try{
			Node n = XPathAPI.selectSingleNode(doc, xpath);

			if ( n != null){
				return n.getNodeValue();
			}
		}catch( javax.xml.transform.TransformerException ex){

		}
		return null;
	}

	private DataObject createFieldElement(BOFactory bofactory,String fieldName,String value){
		DataObject fieldBO = bofactory.createByElement(null,"Field");
		fieldBO.setString("@name",fieldName);
		fieldBO.setString("value", value);
		return fieldBO;
	}

	public HTTPControl getControlParameters() {
		return httpControl;
	}



	public HTTPHeaders getHeaders() {
		return httpHeaders;
	}



	public boolean isBusinessException() {
		return isBusinessException;
	}



	public void setBusinessException(boolean arg0) {
		isBusinessException = arg0;

	}



	public void setControlParameters(HTTPControl arg0) {
		httpControl = arg0;
	}



	public void setHeaders(HTTPHeaders arg0) {
		httpHeaders = arg0;
	}



	public void write(HTTPOutputStream httpoutputstream) throws IOException {
		httpoutputstream.write(nativeData.toByteArray());

	}



	public void setDataObject(DataObject arg0) throws DataBindingException {
		creditCardResponse = arg0;
	}



	public DataObject getDataObject() throws DataBindingException {
		return creditCardResponse;
	}

}
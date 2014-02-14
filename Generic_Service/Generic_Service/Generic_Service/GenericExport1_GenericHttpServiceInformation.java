/**
 * GenericExport1_GenericHttpServiceInformation.java
 *
 * This file was auto-generated from WSDL
 * by the IBM Web services WSDL2Java emitter.
 * cf230909.32 v3909221945
 */

package Generic_Service;

public class GenericExport1_GenericHttpServiceInformation implements com.ibm.ws.webservices.multiprotocol.ServiceInformation {

    private static java.util.Map operationDescriptions;
    private static java.util.Map typeMappings;

    static {
         initOperationDescriptions();
         initTypeMappings();
    }

    private static void initOperationDescriptions() { 
        operationDescriptions = new java.util.HashMap();

        java.util.Map inner0 = new java.util.HashMap();

        java.util.List list0 = new java.util.ArrayList();
        inner0.put("request_Response", list0);

        com.ibm.ws.webservices.engine.description.OperationDesc request_Response0Op = _request_Response0Op();
        list0.add(request_Response0Op);

        operationDescriptions.put("GenericExport_GenericHttpPort",inner0);
        operationDescriptions = java.util.Collections.unmodifiableMap(operationDescriptions);
    }

    private static com.ibm.ws.webservices.engine.description.OperationDesc _request_Response0Op() {
        com.ibm.ws.webservices.engine.description.OperationDesc request_Response0Op = null;
        com.ibm.ws.webservices.engine.description.ParameterDesc[]  _params0 = new com.ibm.ws.webservices.engine.description.ParameterDesc[] {
         new com.ibm.ws.webservices.engine.description.ParameterDesc(com.ibm.ws.webservices.engine.utils.QNameTable.createQName("", "message"), com.ibm.ws.webservices.engine.description.ParameterDesc.IN, com.ibm.ws.webservices.engine.utils.QNameTable.createQName("http://www.w3.org/2001/XMLSchema", "string"), java.lang.String.class, false, false, false, false, true, false), 
          };
        _params0[0].setOption("inputPosition","0");
        _params0[0].setOption("partQNameString","{http://www.w3.org/2001/XMLSchema}string");
        _params0[0].setOption("partName","string");
        com.ibm.ws.webservices.engine.description.ParameterDesc  _returnDesc0 = new com.ibm.ws.webservices.engine.description.ParameterDesc(com.ibm.ws.webservices.engine.utils.QNameTable.createQName("", "message"), com.ibm.ws.webservices.engine.description.ParameterDesc.OUT, com.ibm.ws.webservices.engine.utils.QNameTable.createQName("http://www.w3.org/2001/XMLSchema", "string"), java.lang.String.class, true, false, false, false, true, false); 
        _returnDesc0.setOption("outputPosition","0");
        _returnDesc0.setOption("partQNameString","{http://www.w3.org/2001/XMLSchema}string");
        _returnDesc0.setOption("partName","string");
        com.ibm.ws.webservices.engine.description.FaultDesc[]  _faults0 = new com.ibm.ws.webservices.engine.description.FaultDesc[] {
          };
        request_Response0Op = new com.ibm.ws.webservices.engine.description.OperationDesc("request_Response", com.ibm.ws.webservices.engine.utils.QNameTable.createQName("http://Generic_Service/Generic", "Request_Response"), _params0, _returnDesc0, _faults0, null);
        request_Response0Op.setOption("portTypeQName",com.ibm.ws.webservices.engine.utils.QNameTable.createQName("http://Generic_Service/Generic", "NCL_WESB_Generic_ReqRsp"));
        request_Response0Op.setOption("inputName","Request_ResponseRequest");
        request_Response0Op.setOption("outputMessageQName",com.ibm.ws.webservices.engine.utils.QNameTable.createQName("http://Generic_Service/Generic", "Request_ResponseResponseMsg"));
        request_Response0Op.setOption("ServiceQName",com.ibm.ws.webservices.engine.utils.QNameTable.createQName("http://Generic_Service/Generic/Binding", "GenericExport1_GenericHttpService"));
        request_Response0Op.setOption("buildNum","cf230909.32");
        request_Response0Op.setOption("ResponseNamespace","http://Generic_Service/Generic");
        request_Response0Op.setOption("targetNamespace","http://Generic_Service/Generic/Binding");
        request_Response0Op.setOption("outputName","Request_ResponseResponse");
        request_Response0Op.setOption("ResponseLocalPart","Request_ResponseResponse");
        request_Response0Op.setOption("inputMessageQName",com.ibm.ws.webservices.engine.utils.QNameTable.createQName("http://Generic_Service/Generic", "Request_ResponseRequestMsg"));
        request_Response0Op.setStyle(com.ibm.ws.webservices.engine.enumtype.Style.WRAPPED);
        return request_Response0Op;

    }


    private static void initTypeMappings() {
        typeMappings = new java.util.HashMap();
        typeMappings = java.util.Collections.unmodifiableMap(typeMappings);
    }

    public java.util.Map getTypeMappings() {
        return typeMappings;
    }

    public Class getJavaType(javax.xml.namespace.QName xmlName) {
        return (Class) typeMappings.get(xmlName);
    }

    public java.util.Map getOperationDescriptions(String portName) {
        return (java.util.Map) operationDescriptions.get(portName);
    }

    public java.util.List getOperationDescriptions(String portName, String operationName) {
        java.util.Map map = (java.util.Map) operationDescriptions.get(portName);
        if (map != null) {
            return (java.util.List) map.get(operationName);
        }
        return null;
    }

}

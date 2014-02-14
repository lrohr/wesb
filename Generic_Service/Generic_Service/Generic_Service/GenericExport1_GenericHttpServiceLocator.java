/**
 * GenericExport1_GenericHttpServiceLocator.java
 *
 * This file was auto-generated from WSDL
 * by the IBM Web services WSDL2Java emitter.
 * cf230909.32 v3909221945
 */

package Generic_Service;

public class GenericExport1_GenericHttpServiceLocator extends com.ibm.ws.webservices.multiprotocol.AgnosticService implements com.ibm.ws.webservices.multiprotocol.GeneratedService, Generic_Service.GenericExport1_GenericHttpService {

    public GenericExport1_GenericHttpServiceLocator() {
        super(com.ibm.ws.webservices.engine.utils.QNameTable.createQName(
           "http://Generic_Service/Generic/Binding",
           "GenericExport1_GenericHttpService"));

        context.setLocatorName("Generic_Service.GenericExport1_GenericHttpServiceLocator");
    }

    public GenericExport1_GenericHttpServiceLocator(com.ibm.ws.webservices.multiprotocol.ServiceContext ctx) {
        super(ctx);
        context.setLocatorName("Generic_Service.GenericExport1_GenericHttpServiceLocator");
    }

    // Use to get a proxy class for genericExport_GenericHttpPort
    private final java.lang.String genericExport_GenericHttpPort_address = "http://localhost:9080/Generic_ServiceWeb/sca/GenericExport";

    public java.lang.String getGenericExport_GenericHttpPortAddress() {
        if (context.getOverriddingEndpointURIs() == null) {
            return genericExport_GenericHttpPort_address;
        }
        String overriddingEndpoint = (String) context.getOverriddingEndpointURIs().get("GenericExport_GenericHttpPort");
        if (overriddingEndpoint != null) {
            return overriddingEndpoint;
        }
        else {
            return genericExport_GenericHttpPort_address;
        }
    }

    private java.lang.String genericExport_GenericHttpPortPortName = "GenericExport_GenericHttpPort";

    // The WSDD port name defaults to the port name.
    private java.lang.String genericExport_GenericHttpPortWSDDPortName = "GenericExport_GenericHttpPort";

    public java.lang.String getGenericExport_GenericHttpPortWSDDPortName() {
        return genericExport_GenericHttpPortWSDDPortName;
    }

    public void setGenericExport_GenericHttpPortWSDDPortName(java.lang.String name) {
        genericExport_GenericHttpPortWSDDPortName = name;
    }

    public Generic_Service.NCL_WESB_Generic_ReqRsp getGenericExport_GenericHttpPort() throws javax.xml.rpc.ServiceException {
       java.net.URL endpoint;
        try {
            endpoint = new java.net.URL(getGenericExport_GenericHttpPortAddress());
        }
        catch (java.net.MalformedURLException e) {
            return null; // unlikely as URL was validated in WSDL2Java
        }
        return getGenericExport_GenericHttpPort(endpoint);
    }

    public Generic_Service.NCL_WESB_Generic_ReqRsp getGenericExport_GenericHttpPort(java.net.URL portAddress) throws javax.xml.rpc.ServiceException {
        Generic_Service.NCL_WESB_Generic_ReqRsp _stub =
            (Generic_Service.NCL_WESB_Generic_ReqRsp) getStub(
                genericExport_GenericHttpPortPortName,
                (String) getPort2NamespaceMap().get(genericExport_GenericHttpPortPortName),
                Generic_Service.NCL_WESB_Generic_ReqRsp.class,
                "Generic_Service.GenericExport1_GenericHttpBindingStub",
                portAddress.toString());
        if (_stub instanceof com.ibm.ws.webservices.engine.client.Stub) {
            ((com.ibm.ws.webservices.engine.client.Stub) _stub).setPortName(genericExport_GenericHttpPortWSDDPortName);
        }
        return _stub;
    }

    /**
     * For the given interface, get the stub implementation.
     * If this service has no port for the given interface,
     * then ServiceException is thrown.
     */
    public java.rmi.Remote getPort(Class serviceEndpointInterface) throws javax.xml.rpc.ServiceException {
        try {
            if (Generic_Service.NCL_WESB_Generic_ReqRsp.class.isAssignableFrom(serviceEndpointInterface)) {
                return getGenericExport_GenericHttpPort();
            }
        }
        catch (java.lang.Throwable t) {
            throw new javax.xml.rpc.ServiceException(t);
        }
        throw new javax.xml.rpc.ServiceException("WSWS3273E: Error: There is no stub implementation for the interface:  " + (serviceEndpointInterface == null ? "null" : serviceEndpointInterface.getName()));
    }

    /**
     * For the given interface, get the stub implementation.
     * If this service has no port for the given interface,
     * then ServiceException is thrown.
     */
    public java.rmi.Remote getPort(javax.xml.namespace.QName portName, Class serviceEndpointInterface) throws javax.xml.rpc.ServiceException {
        String inputPortName = portName.getLocalPart();
        if ("GenericExport_GenericHttpPort".equals(inputPortName)) {
            return getGenericExport_GenericHttpPort();
        }
        else  {
            throw new javax.xml.rpc.ServiceException();
        }
    }

    public void setPortNamePrefix(java.lang.String prefix) {
        genericExport_GenericHttpPortWSDDPortName = prefix + "/" + genericExport_GenericHttpPortPortName;
    }

    public javax.xml.namespace.QName getServiceName() {
        return com.ibm.ws.webservices.engine.utils.QNameTable.createQName("http://Generic_Service/Generic/Binding", "GenericExport1_GenericHttpService");
    }

    private java.util.Map port2NamespaceMap = null;

    protected synchronized java.util.Map getPort2NamespaceMap() {
        if (port2NamespaceMap == null) {
            port2NamespaceMap = new java.util.HashMap();
            port2NamespaceMap.put(
               "GenericExport_GenericHttpPort",
               "http://schemas.xmlsoap.org/wsdl/soap/");
        }
        return port2NamespaceMap;
    }

    private java.util.HashSet ports = null;

    public java.util.Iterator getPorts() {
        if (ports == null) {
            ports = new java.util.HashSet();
            String serviceNamespace = getServiceName().getNamespaceURI();
            for (java.util.Iterator i = getPort2NamespaceMap().keySet().iterator(); i.hasNext(); ) {
                ports.add(
                    com.ibm.ws.webservices.engine.utils.QNameTable.createQName(
                        serviceNamespace,
                        (String) i.next()));
            }
        }
        return ports.iterator();
    }

    public javax.xml.rpc.Call[] getCalls(javax.xml.namespace.QName portName) throws javax.xml.rpc.ServiceException {
        if (portName == null) {
            throw new javax.xml.rpc.ServiceException("WSWS3062E: Error: portName should not be null.");
        }
        if  (portName.getLocalPart().equals("GenericExport_GenericHttpPort")) {
            return new javax.xml.rpc.Call[] {
                createCall(portName, "Request_Response", "Request_ResponseRequest"),
            };
        }
        else {
            throw new javax.xml.rpc.ServiceException("WSWS3062E: Error: portName should not be null.");
        }
    }
}

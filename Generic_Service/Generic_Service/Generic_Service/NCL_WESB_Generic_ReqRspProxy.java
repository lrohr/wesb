package Generic_Service;

public class NCL_WESB_Generic_ReqRspProxy implements Generic_Service.NCL_WESB_Generic_ReqRsp {
  private boolean _useJNDI = true;
  private String _endpoint = null;
  private Generic_Service.NCL_WESB_Generic_ReqRsp __nCL_WESB_Generic_ReqRsp = null;
  
  public NCL_WESB_Generic_ReqRspProxy() {
    _initNCL_WESB_Generic_ReqRspProxy();
  }
  
  private void _initNCL_WESB_Generic_ReqRspProxy() {
  
    if (_useJNDI) {
      try {
        javax.naming.InitialContext ctx = new javax.naming.InitialContext();
        __nCL_WESB_Generic_ReqRsp = ((Generic_Service.GenericExport1_GenericHttpService)ctx.lookup("java:comp/env/service/GenericExport1_GenericHttpService")).getGenericExport_GenericHttpPort();
      }
      catch (javax.naming.NamingException namingException) {}
      catch (javax.xml.rpc.ServiceException serviceException) {}
    }
    if (__nCL_WESB_Generic_ReqRsp == null) {
      try {
        __nCL_WESB_Generic_ReqRsp = (new Generic_Service.GenericExport1_GenericHttpServiceLocator()).getGenericExport_GenericHttpPort();
        
      }
      catch (javax.xml.rpc.ServiceException serviceException) {}
    }
    if (__nCL_WESB_Generic_ReqRsp != null) {
      if (_endpoint != null)
        ((javax.xml.rpc.Stub)__nCL_WESB_Generic_ReqRsp)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
      else
        _endpoint = (String)((javax.xml.rpc.Stub)__nCL_WESB_Generic_ReqRsp)._getProperty("javax.xml.rpc.service.endpoint.address");
    }
    
  }
  
  
  public void useJNDI(boolean useJNDI) {
    _useJNDI = useJNDI;
    __nCL_WESB_Generic_ReqRsp = null;
    
  }
  
  public String getEndpoint() {
    return _endpoint;
  }
  
  public void setEndpoint(String endpoint) {
    _endpoint = endpoint;
    if (__nCL_WESB_Generic_ReqRsp != null)
      ((javax.xml.rpc.Stub)__nCL_WESB_Generic_ReqRsp)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
    
  }
  
  public java.lang.String request_Response(java.lang.String message) throws java.rmi.RemoteException{
    if (__nCL_WESB_Generic_ReqRsp == null)
      _initNCL_WESB_Generic_ReqRspProxy();
    return __nCL_WESB_Generic_ReqRsp.request_Response(message);
  }
  
  
  public Generic_Service.NCL_WESB_Generic_ReqRsp getNCL_WESB_Generic_ReqRsp() {
    if (__nCL_WESB_Generic_ReqRsp == null)
      _initNCL_WESB_Generic_ReqRspProxy();
    return __nCL_WESB_Generic_ReqRsp;
  }
  
}
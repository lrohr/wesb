<?xml version="1.0" encoding="UTF-8"?>
<!--
*****************************************************************************
*   This file contains the XSLT code snippets for the custom mappings
*   defined using the IBM XML Mapping Editor V1.0.110
*
*   Mapping file:		XSLTransformation2_req_2.map
*   Map declaration(s):	XSLTransformation2_req_2
*   Input file(s):		smo://smo/name%3Dwsdl-primary/correlationContext%3D%257Bhttp%253A%252F%252FNCL_CruiseRetrieveClient_Module%257DApp_Context/message%3D%257Bhttp%253A%252F%252FTP_Logger%252FTP_Interface%257DTP_InsertUpdateRequestMsg/xpath%3D%252F/smo.xsd
*   Output file(s):		smo://smo/name%3Dwsdl-primary/correlationContext%3D%257Bhttp%253A%252F%252FNCL_CruiseRetrieveClient_Module%257DApp_Context/message%3D%257Bhttp%253A%252F%252FNCL_CruiseRetrieveClient_Module%252FDB_Lookup%257DexecuteNclseaNcl_Wesb_Get_Client_ProfileBGRequestMsg/xpath%3D%252F/smo.xsd
*
*   Custom code snippets are wrapped in top-level <xsl:template> 
*   elements. These <xsl:template> elements, in turn, are used to
*   interface with the custom mappings in the XML Mapping editor.
*****************************************************************************
-->
<xsl:stylesheet
     xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
     xmlns:xltxe="http://www.ibm.com/xmlns/prod/xltxe-j"
     xmlns:str="http://exslt.org/strings"
     xmlns:set="http://exslt.org/sets"
     xmlns:math="http://exslt.org/math"
     xmlns:fn="http://www.w3.org/2005/xpath-functions"
     xmlns:regexp="http://exslt.org/regular-expressions"
     xmlns:dyn="http://exslt.org/dynamic"
     xmlns:dp="http://www.datapower.com/extensions"
     xmlns:exsl="http://exslt.org/common"
     xmlns:date="http://exslt.org/dates-and-times"
     xmlns:in="http://TP_Logger/TP_Interface"
     xmlns:in2="wsdl.http://TP_Logger/TP_Interface"
     xmlns:out="http://NCL_CruiseRetrieveClient_Module/DB_Lookup"
     xmlns:io5="http://www.w3.org/2003/05/soap-envelope"
     xmlns:io6="http://www.ibm.com/websphere/sibx/smo/v6.0.1"
     xmlns:out2="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_get_client_programs"
     xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
     xmlns:out3="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_get_client_programsp_cursor"
     xmlns:out4="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_get_client_programsbg"
     xmlns:out5="wsdl.http://NCL_CruiseRetrieveClient_Module/DB_Lookup"
     xmlns:out9="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_get_client_vacat_pref"
     xmlns:out10="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_get_client_vacat_prefbg"
     xmlns:out6="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_get_client_profile"
     xmlns:io="http://www.ibm.com/xmlns/prod/websphere/mq/sca/6.0.0"
     xmlns:io2="http://NCL_CruiseRetrieveClient_Module"
     xmlns:io3="http://schemas.xmlsoap.org/ws/2004/08/addressing"
     xmlns:out8="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_get_client_profilep_cursor"
     xmlns:out7="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_get_client_profilebg"
     xmlns:io7="http://www.ibm.com/xmlns/prod/websphere/http/sca/6.1.0"
     xmlns:io4="http://nclapi/schemas"
     xmlns:out11="http://www.ibm.com/xmlns/prod/websphere/bo/6.0.0"
     xmlns:xs4xs="http://www.w3.org/2001/XMLSchema"
     xmlns:io8="http://www.w3.org/2005/08/addressing"
     xmlns:out12="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_get_client_vacat_prefp_prev_crus_cur"
     xmlns:out13="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_get_client_vacat_prefp_dest_cur"
     xmlns:map="http://NCL_CruiseRetrieveClient_Module/xslt/XSLTransformation2_req_2"
     exclude-result-prefixes="in in2 str set math fn regexp dyn dp exsl date fn map xltxe"
     version="1.0">
  <xsl:output method="xml" encoding="UTF-8" indent="yes" xalan:indent-amount="2"/>
  <xsl:strip-space elements="*"/>

  <!-- The rule represents a custom mapping: "MembershipID" to "p_clientid". -->
  <xsl:template name="MembershipIDToP_clientid">
    <xsl:param name="MembershipID"/>
    <!-- ADD CUSTOM CODE HERE. -->
    
    <xsl:choose>
          <xsl:when test="  (    string-length($MembershipID)   > '0'    ) ">
                 <xsl:value-of select=" $MembershipID "></xsl:value-of>
          </xsl:when>
   </xsl:choose>
    
    
  </xsl:template>
</xsl:stylesheet>
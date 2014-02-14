<?xml version="1.0" encoding="UTF-8"?>
<!--
*****************************************************************************
*   This file contains the XSLT code snippets for the custom mappings
*   defined using the IBM XML Mapping Editor V1.0.110
*
*   Mapping file:		XSLT_err_5_req_1.map
*   Map declaration(s):	XSLT_err_5_req_1
*   Input file(s):		smo://smo/name%3Dwsdl-primary/correlationContext%3D%257Bhttp%253A%252F%252FNCL_CruiseRetrieveClient_Module%257DApp_Context/message%3D%257Bhttp%253A%252F%252FNCL_CruiseRetrieveClient_Module%252FDB_Lookup%257DexecuteNclseaNcl_Wesb_Get_Client_ProfileBGRequestMsg/xpath%3D%252F/smo.xsd
*   Output file(s):		smo://smo/name%3Dwsdl-primary/correlationContext%3D%257Bhttp%253A%252F%252FNCL_CruiseRetrieveClient_Module%257DApp_Context/message%3D%257Bhttp%253A%252F%252FNCL_WESB_Shared_Library%252FNCL_CruiseRetrieveClient_Interface%257DPerform_NCL_CruiseRetrieveClientResponseMsg/xpath%3D%252F/smo.xsd
*
*   Custom code snippets are wrapped in top-level <xsl:template> 
*   elements. These <xsl:template> elements, in turn, are used to
*   interface with the custom mappings in the XML Mapping editor.
*****************************************************************************
-->
<xsl:stylesheet
     xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
     xmlns:xalan="http://xml.apache.org/xslt"
     xmlns:in="http://NCL_CruiseRetrieveClient_Module/DB_Lookup"
     xmlns:in2="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_get_client_programs"
     xmlns:in3="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_get_client_programsp_cursor"
     xmlns:in4="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_get_client_programsbg"
     xmlns:in5="wsdl.http://NCL_CruiseRetrieveClient_Module/DB_Lookup"
     xmlns:in9="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_get_client_vacat_pref"
     xmlns:in10="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_get_client_vacat_prefbg"
     xmlns:in6="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_get_client_profile"
     xmlns:in8="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_get_client_profilep_cursor"
     xmlns:in7="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_get_client_profilebg"
     xmlns:in11="http://www.ibm.com/xmlns/prod/websphere/bo/6.0.0"
     xmlns:in12="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_get_client_vacat_prefp_prev_crus_cur"
     xmlns:in13="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_get_client_vacat_prefp_dest_cur"
     xmlns:io2="http://www.ibm.com/xmlns/prod/websphere/mq/sca/6.0.0"
     xmlns:io="http://www.ibm.com/websphere/sibx/smo/v6.0.1"
     xmlns:out="http://NCL_WESB_Shared_Library/NCL_CruiseRetrieveClient_Interface"
     xmlns:io3="http://NCL_CruiseRetrieveClient_Module"
     xmlns:io4="http://schemas.xmlsoap.org/ws/2004/08/addressing"
     xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
     xmlns:io6="http://www.ibm.com/xmlns/prod/websphere/http/sca/6.1.0"
     xmlns:io5="http://nclapi/schemas"
     xmlns:out2="wsdl.http://NCL_WESB_Shared_Library/NCL_CruiseRetrieveClient_Interface"
     xmlns:xsd="http://www.w3.org/2001/XMLSchema"
     xmlns:io7="http://www.w3.org/2005/08/addressing"
     exclude-result-prefixes="in in2 in3 in4 in5 in9 in10 in6 in8 in7 in11 in12 in13 xalan"
     version="1.0">
  <xsl:output method="xml" encoding="UTF-8" indent="yes" xalan:indent-amount="2"/>
  <xsl:strip-space elements="*"/>

  <!-- The rule represents a custom mapping: "TransactionIdentifier" to "io5:Success". -->
  <xsl:template name="TransactionIdentifierToSuccess">
    <xsl:param name="TransactionIdentifier"/>
    <!-- ADD CUSTOM CODE HERE. -->
       <xsl:value-of select="''"/>
  </xsl:template>
</xsl:stylesheet>
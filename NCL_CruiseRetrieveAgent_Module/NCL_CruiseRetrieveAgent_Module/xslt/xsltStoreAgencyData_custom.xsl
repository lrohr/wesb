<?xml version="1.0" encoding="UTF-8"?>
<!--
*****************************************************************************
*   This file contains the XSLT code snippets for the custom mappings
*   defined using the IBM XML Mapping Editor V1.0.110
*
*   Mapping file:		xsltStoreAgencyData.map
*   Map declaration(s):	xsltStoreAgencyData
*   Input file(s):		smo://smo/name%3Dwsdl-primary/correlationContext%3D%257Bhttp%253A%252F%252FNCL_CruiseRetrieveAgent_Module%257DappContext/message%3D%257Bhttp%253A%252F%252FNCL_CruiseRetrieveAgent_Module%252FJDBCOutboundInterface%257DexecuteNclseaNcl_Wesb_Get_Agy_For_AgtreqResponseMsg/xpath%3D%252F/smo.xsd
*   Output file(s):		smo://smo/name%3Dwsdl-primary/correlationContext%3D%257Bhttp%253A%252F%252FNCL_CruiseRetrieveAgent_Module%257DappContext/message%3D%257Bhttp%253A%252F%252FNCL_WESB_Shared_Library%252FNCL_CruiseRetrieveAgent_Interface%257DPerform_NCL_CruiseRetrieveAgentResponseMsg/xpath%3D%252F/smo.xsd
*
*   Custom code snippets are wrapped in top-level <xsl:template> 
*   elements. These <xsl:template> elements, in turn, are used to
*   interface with the custom mappings in the XML Mapping editor.
*****************************************************************************
-->
<xsl:stylesheet
     xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
     xmlns:xalan="http://xml.apache.org/xslt"
     xmlns:in="wsdl.http://NCL_CruiseRetrieveAgent_Module/JDBCOutboundInterface"
     xmlns:in2="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_get_agent_with_paging"
     xmlns:in3="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_get_agy_for_agtreq"
     xmlns:in4="http://NCL_CruiseRetrieveAgent_Module/JDBCOutboundInterface"
     xmlns:in5="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_get_agent_with_pagingp_cursor"
     xmlns:in6="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_get_agent_with_paged"
     xmlns:in7="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_get_agy_for_agtreqp_cursor"
     xmlns:in8="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_get_agent_with_pagedp_cursor"
     xmlns:out="http://NCL_WESB_Shared_Library/NCL_CruiseRetrieveAgent_Interface"
     xmlns:io="http://NCL_CruiseRetrieveAgent_Module"
     xmlns:io3="http://www.ibm.com/xmlns/prod/websphere/mq/sca/6.0.0"
     xmlns:io2="http://www.ibm.com/websphere/sibx/smo/v6.0.1"
     xmlns:io4="http://schemas.xmlsoap.org/ws/2004/08/addressing"
     xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
     xmlns:io6="http://www.ibm.com/xmlns/prod/websphere/http/sca/6.1.0"
     xmlns:io5="http://nclapi/schemas"
     xmlns:out2="wsdl.http://NCL_WESB_Shared_Library/NCL_CruiseRetrieveAgent_Interface"
     xmlns:xsd="http://www.w3.org/2001/XMLSchema"
     xmlns:io7="http://www.w3.org/2005/08/addressing"
     exclude-result-prefixes="in in2 in3 in4 in5 in6 in7 in8 xalan"
     version="1.0">
  <xsl:output method="xml" encoding="UTF-8" indent="yes" xalan:indent-amount="2"/>
  <xsl:strip-space elements="*"/>

  <!-- The rule represents a custom mapping: "p_cursor" to "error_code". -->
  <xsl:template name="P_cursorToError_code">
    <xsl:param name="p_cursor"/>
    <!-- ADD CUSTOM CODE HERE. -->
    <xsl:value-of select=" count($pCcursor)  "/>
  </xsl:template>
</xsl:stylesheet>
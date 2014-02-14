<?xml version="1.0" encoding="UTF-8"?>
<!--
*****************************************************************************
*   This file contains the XSLT code snippets for the custom mappings
*   defined using the IBM XML Mapping Editor V1.0.110
*
*   Mapping file:		XSLTpaging.map
*   Map declaration(s):	XSLTpaging
*   Input file(s):		smo://smo/name%3Dwsdl-primary/correlationContext%3D%257Bhttp%253A%252F%252FNCL_CruiseRetrieveAgent_Module%257DappContext/message%3D%257Bhttp%253A%252F%252FTP_Logger%252FTP_Interface%257DTP_InsertUpdateRequestMsg/xpath%3D%252F/smo.xsd
*   Output file(s):		smo://smo/name%3Dwsdl-primary/correlationContext%3D%257Bhttp%253A%252F%252FNCL_CruiseRetrieveAgent_Module%257DappContext/message%3D%257Bhttp%253A%252F%252FNCL_CruiseRetrieveAgent_Module%252FJDBCOutboundInterface%257DexecuteNclseaNcl_Wesb_Get_Agent_With_PagingRequestMsg/xpath%3D%252F/smo.xsd
*
*   Custom code snippets are wrapped in top-level <xsl:template> 
*   elements. These <xsl:template> elements, in turn, are used to
*   interface with the custom mappings in the XML Mapping editor.
*****************************************************************************
-->
<xsl:stylesheet
     xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
     xmlns:xalan="http://xml.apache.org/xslt"
     xmlns:in="http://TP_Logger/TP_Interface"
     xmlns:in2="wsdl.http://TP_Logger/TP_Interface"
     xmlns:io="http://www.ibm.com/websphere/sibx/smo/v6.0.1"
     xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
     xmlns:out="wsdl.http://NCL_CruiseRetrieveAgent_Module/JDBCOutboundInterface"
     xmlns:out2="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_get_agent_with_paging"
     xmlns:out3="http://NCL_CruiseRetrieveAgent_Module/JDBCOutboundInterface"
     xmlns:out4="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_get_agy_for_agtreq"
     xmlns:io2="http://NCL_CruiseRetrieveAgent_Module"
     xmlns:out5="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_get_agent_with_pagingp_cursor"
     xmlns:io3="http://www.ibm.com/xmlns/prod/websphere/mq/sca/6.0.0"
     xmlns:out6="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_get_agent_with_paged"
     xmlns:out7="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_get_agy_for_agtreqp_cursor"
     xmlns:io4="http://schemas.xmlsoap.org/ws/2004/08/addressing"
     xmlns:io6="http://nclapi/schemas"
     xmlns:io5="http://www.ibm.com/xmlns/prod/websphere/http/sca/6.1.0"
     xmlns:out8="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_get_agent_with_pagedp_cursor"
     xmlns:xsd="http://www.w3.org/2001/XMLSchema"
     xmlns:io7="http://www.w3.org/2005/08/addressing"
     exclude-result-prefixes="in in2 xalan"
     version="1.0">
  <xsl:output method="xml" encoding="UTF-8" indent="yes" xalan:indent-amount="2"/>
  <xsl:strip-space elements="*"/>

  <!-- The rule represents a custom mapping: "MoreDataEchoToken" to "p_startingnumber". -->
  <xsl:template name="MoreDataEchoTokenToP_startingnumber">
    <xsl:param name="MoreDataEchoToken"/>
                  <xsl:value-of select="'AGTREQ'"/>
  </xsl:template>
</xsl:stylesheet>
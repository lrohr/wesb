<?xml version="1.0" encoding="UTF-8"?>
<!--
*****************************************************************************
*   This file contains the XSLT code snippets for the custom mappings
*   defined using the IBM XML Mapping Editor V1.0.110
*
*   Mapping file:		xsltSavePagingAgent.map
*   Map declaration(s):	xsltSavePagingAgent
*   Input file(s):		smo://smo/name%3Dwsdl-primary/correlationContext%3D%257Bhttp%253A%252F%252FNCL_CruiseRetrieveAgent_Module%257DappContext/message%3D%257Bhttp%253A%252F%252FNCL_CruiseRetrieveAgent_Module%252FJDBCOutboundInterface%257DexecuteNclseaNcl_Wesb_Get_Agent_With_PagingResponseMsg/xpath%3D%252F/smo.xsd
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
     xmlns:str="http://exslt.org/strings"
     xmlns:set="http://exslt.org/sets"
     xmlns:math="http://exslt.org/math"
     xmlns:fn="http://www.w3.org/2005/xpath-functions"
     xmlns:regexp="http://exslt.org/regular-expressions"
     xmlns:dyn="http://exslt.org/dynamic"
     xmlns:dp="http://www.datapower.com/extensions"
     xmlns:exsl="http://exslt.org/common"
     xmlns:date="http://exslt.org/dates-and-times"
     xmlns:in7="wsdl.http://NCL_CruiseRetrieveAgent_Module/JDBCOutboundInterface"
     xmlns:in="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_get_agent_with_paging"
     xmlns:in2="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_get_agy_for_agtreq"
     xmlns:in8="http://NCL_CruiseRetrieveAgent_Module/JDBCOutboundInterface"
     xmlns:in3="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_get_agent_with_pagingp_cursor"
     xmlns:in4="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_get_agent_with_paged"
     xmlns:in5="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_get_agy_for_agtreqp_cursor"
     xmlns:in6="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_get_agent_with_pagedp_cursor"
     xmlns:out="http://NCL_WESB_Shared_Library/NCL_CruiseRetrieveAgent_Interface"
     xmlns:io="http://NCL_CruiseRetrieveAgent_Module"
     xmlns:io2="http://www.w3.org/2003/05/soap-envelope"
     xmlns:io4="http://www.ibm.com/xmlns/prod/websphere/mq/sca/6.0.0"
     xmlns:io3="http://www.ibm.com/websphere/sibx/smo/v6.0.1"
     xmlns:io5="http://schemas.xmlsoap.org/ws/2004/08/addressing"
     xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
     xmlns:io7="http://www.ibm.com/xmlns/prod/websphere/http/sca/6.1.0"
     xmlns:io6="http://nclapi/schemas"
     xmlns:out2="wsdl.http://NCL_WESB_Shared_Library/NCL_CruiseRetrieveAgent_Interface"
     xmlns:xs4xs="http://www.w3.org/2001/XMLSchema"
     xmlns:io8="http://www.w3.org/2005/08/addressing"
     xmlns:map="http://NCL_CruiseRetrieveAgent_Module/xslt/xsltSavePagingAgent"
     exclude-result-prefixes="in7 in in2 in8 in3 in4 in5 in6 str set math fn regexp dyn dp exsl date map xalan"
     version="1.0">
  <xsl:output method="xml" encoding="UTF-8" indent="yes" xalan:indent-amount="2"/>
  <xsl:strip-space elements="*"/>

  <!-- The rule represents a custom mapping: "p_totalcount" to "P_TOTALCOUNT". -->
  <xsl:template name="P_totalcountToP_TOTALCOUNT">
    <xsl:param name="p_totalcount1"/>
    <xsl:param name="p_last_agent_id5"/>
    <!-- ADD CUSTOM CODE HERE. -->
            <xsl:when test="( $p_totalcount1 > 0 )">
						<xsl:value-of select="$p_last_agent_id5"/>
			</xsl:when>
			<xsl:otherwise>
						<xsl:value-of select="0"/>
			</xsl:otherwise>
    
    
  </xsl:template>
</xsl:stylesheet>
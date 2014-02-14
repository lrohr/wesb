<?xml version="1.0" encoding="UTF-8"?>
<!--
*****************************************************************************
*   This file contains the XSLT code snippets for the custom mappings
*   defined using the IBM XML Mapping Editor V1.0.110
*
*   Mapping file:		XSLTransformation1_req_1.map
*   Map declaration(s):	XSLTransformation1_req_1
*   Input file(s):		smo://smo/name%3Dwsdl-primary/correlationContext%3D%257Bhttp%253A%252F%252FNCL_CruiseRetrieveAgent_Module%257DappContext/message%3D%257Bhttp%253A%252F%252FNCL_WESB_Shared_Library%252FNCL_CruiseRetrieveAgent_Interface%257DPerform_NCL_CruiseRetrieveAgentResponseMsg/xpath%3D%252F/smo.xsd
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
     xmlns:io="http://NCL_WESB_Shared_Library/NCL_CruiseRetrieveAgent_Interface"
     xmlns:io2="http://NCL_CruiseRetrieveAgent_Module"
     xmlns:io3="http://www.w3.org/2003/05/soap-envelope"
     xmlns:io5="http://www.ibm.com/xmlns/prod/websphere/mq/sca/6.0.0"
     xmlns:io4="http://www.ibm.com/websphere/sibx/smo/v6.0.1"
     xmlns:io6="http://schemas.xmlsoap.org/ws/2004/08/addressing"
     xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
     xmlns:io8="http://www.ibm.com/xmlns/prod/websphere/http/sca/6.1.0"
     xmlns:io7="http://nclapi/schemas"
     xmlns:io9="wsdl.http://NCL_WESB_Shared_Library/NCL_CruiseRetrieveAgent_Interface"
     xmlns:xs4xs="http://www.w3.org/2001/XMLSchema"
     xmlns:io10="http://www.w3.org/2005/08/addressing"
     xmlns:map="http://NCL_CruiseRetrieveAgent_Module/xslt/XSLTransformation1_req_1"
     exclude-result-prefixes="str set math fn regexp dyn dp exsl date map xalan"
     version="1.0">
  <xsl:output method="xml" encoding="UTF-8" indent="yes" xalan:indent-amount="2"/>
  <xsl:strip-space elements="*"/>

  <!-- The rule represents a custom mapping: "null" to "io7:Success". -->
  <xsl:template name="ToSuccess">
    <!-- ADD CUSTOM CODE HERE. -->
    <xsl:value-of select="''"/>
  </xsl:template>
</xsl:stylesheet>
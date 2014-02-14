<?xml version="1.0" encoding="UTF-8"?>
<!--
*****************************************************************************
*   This file contains the XSLT code snippets for the custom mappings
*   defined using the IBM XML Mapping Editor V1.0.110
*
*   Mapping file:		XSLTransformation2_req_2.map
*   Map declaration(s):	XSLTransformation2_req_2
*   Input file(s):		smo://smo/name%3Dwsdl-primary/correlationContext%3D%257Bhttp%253A%252F%252FNCL_CruiseRegisterWebAccess_Module%257Dapp_context/message%3D%257Bhttp%253A%252F%252FTP_Logger%252FTP_Interface%257DTP_InsertUpdateRequestMsg/xpath%3D%252F/smo.xsd
*   Output file(s):		smo://smo/name%3Dwsdl-primary/correlationContext%3D%257Bhttp%253A%252F%252FNCL_CruiseRegisterWebAccess_Module%257Dapp_context/message%3D%257Bhttp%253A%252F%252FNCL_CruiseRegisterWebAccess_Module%252FDB_LOOKUP%257DexecuteNclseaNcl_Wesb_Register_Agcy_LookupBGRequestMsg/xpath%3D%252F/smo.xsd
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
     xmlns:in="http://TP_Logger/TP_Interface"
     xmlns:in2="wsdl.http://TP_Logger/TP_Interface"
     xmlns:io="http://www.w3.org/2003/05/soap-envelope"
     xmlns:io2="http://www.ibm.com/websphere/sibx/smo/v6.0.1"
     xmlns:io3="http://NCL_CruiseRegisterWebAccess_Module"
     xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
     xmlns:out="wsdl.http://NCL_CruiseRegisterWebAccess_Module/DB_LOOKUP"
     xmlns:out2="http://NCL_CruiseRegisterWebAccess_Module/DB_LOOKUP"
     xmlns:io4="http://www.ibm.com/xmlns/prod/websphere/mq/sca/6.0.0"
     xmlns:io5="http://schemas.xmlsoap.org/ws/2004/08/addressing"
     xmlns:out3="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_register_agcy_lookup"
     xmlns:out4="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_create_agent"
     xmlns:io6="http://www.ibm.com/xmlns/prod/websphere/http/sca/6.1.0"
     xmlns:io7="http://nclapi/schemas"
     xmlns:out5="http://www.ibm.com/xmlns/prod/websphere/bo/6.0.0"
     xmlns:out6="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_register_agcy_lookupbg"
     xmlns:out7="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_create_agentbg"
     xmlns:xs4xs="http://www.w3.org/2001/XMLSchema"
     xmlns:io8="http://www.w3.org/2005/08/addressing"
     xmlns:map="http://NCL_CruiseRegisterWebAccess_Module/xslt/XSLTransformation2_req_2"
     exclude-result-prefixes="in in2 str set math fn regexp dyn dp exsl date map xalan"
     version="1.0">
  <xsl:output method="xml" encoding="UTF-8" indent="yes" xalan:indent-amount="2"/>
  <xsl:strip-space elements="*"/>

  <!-- The rule represents a custom mapping: "io7:PostalCode" to "p_zipcode". -->
  <xsl:template name="PostalCodeToP_zipcode">
    <xsl:param name="PostalCode"/>
    <!-- ADD CUSTOM CODE HERE. -->
    <xsl:value-of select="concat( $PostalCode , '%'     )"></xsl:value-of>
  </xsl:template>
</xsl:stylesheet>
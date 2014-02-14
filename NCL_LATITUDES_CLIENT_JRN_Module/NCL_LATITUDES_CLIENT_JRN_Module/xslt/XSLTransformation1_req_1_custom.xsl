<?xml version="1.0" encoding="UTF-8"?>
<!--
*****************************************************************************
*   This file contains the XSLT code snippets for the custom mappings
*   defined using the IBM XML Mapping Editor V1.0.110
*
*   Mapping file:		XSLTransformation1_req_1.map
*   Map declaration(s):	XSLTransformation1_req_1
*   Input file(s):		smo://smo/name%3Dwsdl-primary/correlationContext%3D%257Bhttp%253A%252F%252FNCL_LATITUDES_CLIENT_JRN_Module%257DAppContext/message%3D%257Bhttp%253A%252F%252FNCL_LATITUDES_CLIENT_JRN_Module%252FJDBCImport%257DexecuteNclseaNcl_Lat_Get_JrnRequestMsg/xpath%3D%252F/smo.xsd
*   Output file(s):		smo://smo/name%3Dwsdl-primary/correlationContext%3D%257Bhttp%253A%252F%252FNCL_LATITUDES_CLIENT_JRN_Module%257DAppContext/xpath%3D%252F/smo.xsd
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
     xmlns:in="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_lat_get_dtl"
     xmlns:in2="http://NCL_LATITUDES_CLIENT_JRN_Module/JDBCImport"
     xmlns:in3="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_lat_get_dtlp_cursor"
     xmlns:in4="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_lat_get_jrn"
     xmlns:in5="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_lat_get_jrnp_cursor"
     xmlns:in6="wsdl.http://NCL_LATITUDES_CLIENT_JRN_Module/JDBCImport"
     xmlns:io="http://www.w3.org/2003/05/soap-envelope"
     xmlns:io3="http://www.ibm.com/xmlns/prod/websphere/mq/sca/6.0.0"
     xmlns:io2="http://www.ibm.com/websphere/sibx/smo/v6.0.1"
     xmlns:io4="http://schemas.xmlsoap.org/ws/2004/08/addressing"
     xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
     xmlns:io5="http://NCL_LATITUDES_CLIENT_JRN_Module"
     xmlns:io6="http://www.ibm.com/xmlns/prod/websphere/http/sca/6.1.0"
     xmlns:xs4xs="http://www.w3.org/2001/XMLSchema"
     xmlns:io7="http://www.w3.org/2005/08/addressing"
     xmlns:map="http://NCL_LATITUDES_CLIENT_JRN_Module/xslt/XSLTransformation1_req_1"
     exclude-result-prefixes="in in2 in3 in4 in5 in6 str set math fn regexp dyn dp exsl date map xalan"
     version="1.0">
  <xsl:output method="xml" encoding="UTF-8" indent="yes" xalan:indent-amount="2"/>
  <xsl:strip-space elements="*"/>

  <!-- The rule represents a custom mapping: "null" to "SUCCESS". -->
  <xsl:template name="ToSUCCESS">
    <!-- ADD CUSTOM CODE HERE. -->
    <xsl:value-of select="''"/>
  </xsl:template>
</xsl:stylesheet>
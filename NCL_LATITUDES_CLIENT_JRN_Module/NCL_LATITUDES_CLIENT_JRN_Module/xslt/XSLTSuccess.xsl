<?xml version="1.0" encoding="UTF-8"?>
<!--
*****************************************************************************
*   This file contains the XSLT code snippets for the custom mappings
*   defined using the IBM XML Mapping Editor V1.0.110
*
*   Mapping file:		XSLTransformation1_req_1.map
*   Map declaration(s):	XSLTransformation1_req_1
*   Input file(s):		smo://smo/name%3Dwsdl-primary/correlationContext%3D%257Bhttp%253A%252F%252FNCL_LATITUDES_CLIENT_JRN_Module%257DAppContext/message%3D%257Bhttp%253A%252F%252FNCL_LATITUDES_CLIENT_JRN_Module%252FJDBCImport%257DexecuteNclseaNcl_Lat_Get_JrnResponseMsg/xpath%3D%252F/smo.xsd
*   Output file(s):		smo://smo/name%3Dwsdl-primary/correlationContext%3D%257Bhttp%253A%252F%252FNCL_LATITUDES_CLIENT_JRN_Module%257DAppContext/message%3D%257Bhttp%253A%252F%252FNCL_WESB_Shared_Library%252FNCL_LATITUDES_CLIENT_JRN_Interface%257DPerform_NCL_LATITUDES_CLIENT_JRNResponseMsg/xpath%3D%252F/smo.xsd
*
*   Custom code snippets are wrapped in top-level <xsl:template> 
*   elements. These <xsl:template> elements, in turn, are used to
*   interface with the custom mappings in the XML Mapping editor.
*****************************************************************************
-->
<xsl:stylesheet
     xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
     xmlns:xalan="http://xml.apache.org/xslt"
     xmlns:in="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_lat_get_dtl"
     xmlns:in2="http://NCL_LATITUDES_CLIENT_JRN_Module/JDBCImport"
     xmlns:in3="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_lat_get_dtlp_cursor"
     xmlns:in4="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_lat_get_jrn"
     xmlns:in5="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_lat_get_jrnp_cursor"
     xmlns:in6="wsdl.http://NCL_LATITUDES_CLIENT_JRN_Module/JDBCImport"
     xmlns:out="http://NCL_WESB_Shared_Library/NCL_LATITUDES_CLIENT_JRN_Interface"
     xmlns:io2="http://www.ibm.com/xmlns/prod/websphere/mq/sca/6.0.0"
     xmlns:io="http://www.ibm.com/websphere/sibx/smo/v6.0.1"
     xmlns:io3="http://schemas.xmlsoap.org/ws/2004/08/addressing"
     xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
     xmlns:io4="http://NCL_LATITUDES_CLIENT_JRN_Module"
     xmlns:out2="wsdl.http://NCL_WESB_Shared_Library/NCL_LATITUDES_CLIENT_JRN_Interface"
     xmlns:io5="http://www.ibm.com/xmlns/prod/websphere/http/sca/6.1.0"
     xmlns:xsd="http://www.w3.org/2001/XMLSchema"
     xmlns:io6="http://www.w3.org/2005/08/addressing"
     exclude-result-prefixes="in in2 in3 in4 in5 in6 xalan"
     version="1.0">
  <xsl:output method="xml" encoding="UTF-8" indent="yes" xalan:indent-amount="2"/>
  <xsl:strip-space elements="*"/>

  <!-- The rule represents a custom mapping: "null" to "SUCCESS". -->
  <xsl:template name="ToSUCCESS">
    <!-- ADD CUSTOM CODE HERE. -->
    <xsl:value-of select="''"/>
    
    
  </xsl:template>
</xsl:stylesheet>
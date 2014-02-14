<?xml version="1.0" encoding="UTF-8"?>
<!--
*****************************************************************************
*   This file contains the XSLT code snippets for the custom mappings
*   defined using the IBM XML Mapping Editor V1.0.110
*
*   Mapping file:		XSLTBuildErrorResp.map
*   Map declaration(s):	XSLTBuildErrorResp
*   Input file(s):		smo://smo/name%3Dwsdl-primary/correlationContext%3D%257Bhttp%253A%252F%252FNCL_LATITUDES_CLIENT_POINTS_TRG_Module%257DAppContext/message%3D%257Bhttp%253A%252F%252FNCL_LATITUDES_CLIENT_POINTS_TRG_Module%252FJDBCImport%257DexecuteNclseaNcl_Lat_Insert_TrgRequestMsg/xpath%3D%252F/smo.xsd
*   Output file(s):		smo://smo/name%3Dwsdl-primary/correlationContext%3D%257Bhttp%253A%252F%252FNCL_LATITUDES_CLIENT_POINTS_TRG_Module%257DAppContext/message%3D%257Bhttp%253A%252F%252FNCL_WESB_Shared_Library%252FNCL_LATITUDES_CLIENT_POINTS_TRG_Interface%257DPerform_NCL_LATITUDES_CLIENT_POINTS_TRGResponseMsg/xpath%3D%252F/smo.xsd
*
*   Custom code snippets are wrapped in top-level <xsl:template> 
*   elements. These <xsl:template> elements, in turn, are used to
*   interface with the custom mappings in the XML Mapping editor.
*****************************************************************************
-->
<xsl:stylesheet
     xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
     xmlns:xalan="http://xml.apache.org/xslt"
     xmlns:in="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_lat_insert_trg"
     xmlns:in2="http://NCL_LATITUDES_CLIENT_POINTS_TRG_Module/JDBCImport"
     xmlns:in3="wsdl.http://NCL_LATITUDES_CLIENT_POINTS_TRG_Module/JDBCImport"
     xmlns:io2="http://www.ibm.com/xmlns/prod/websphere/mq/sca/6.0.0"
     xmlns:io="http://www.ibm.com/websphere/sibx/smo/v6.0.1"
     xmlns:out="http://NCL_WESB_Shared_Library/NCL_LATITUDES_CLIENT_POINTS_TRG_Interface"
     xmlns:io3="http://schemas.xmlsoap.org/ws/2004/08/addressing"
     xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
     xmlns:io4="http://www.ibm.com/xmlns/prod/websphere/http/sca/6.1.0"
     xmlns:io5="http://NCL_LATITUDES_CLIENT_POINTS_TRG_Module"
     xmlns:xsd="http://www.w3.org/2001/XMLSchema"
     xmlns:io6="http://www.w3.org/2005/08/addressing"
     xmlns:out2="wsdl.http://NCL_WESB_Shared_Library/NCL_LATITUDES_CLIENT_POINTS_TRG_Interface"
     exclude-result-prefixes="in in2 in3 xalan"
     version="1.0">
  <xsl:output method="xml" encoding="UTF-8" indent="yes" xalan:indent-amount="2"/>
  <xsl:strip-space elements="*"/>

  <!-- The rule represents a custom mapping: "LogId" to "SUCCESS". -->
  <xsl:template name="LogIdToSUCCESS">
    <xsl:param name="LogId"/>
    <!-- ADD CUSTOM CODE HERE. -->
    <xsl:value-of select="''"/>
  </xsl:template>
</xsl:stylesheet>
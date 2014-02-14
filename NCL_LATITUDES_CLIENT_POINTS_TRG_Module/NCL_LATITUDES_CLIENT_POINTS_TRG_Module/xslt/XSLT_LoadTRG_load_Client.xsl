<?xml version="1.0" encoding="UTF-8"?>
<!--
*****************************************************************************
*   This file contains the XSLT code snippets for the custom mappings
*   defined using the IBM XML Mapping Editor V1.0.110
*
*   Mapping file:		XSLT_LoadTRG_req_1.map
*   Map declaration(s):	XSLT_LoadTRG_req_1
*   Input file(s):		smo://smo/name%3Dwsdl-primary/correlationContext%3D%257Bhttp%253A%252F%252FNCL_LATITUDES_CLIENT_POINTS_TRG_Module%257DAppContext/message%3D%257Bhttp%253A%252F%252FLAT_Log_Logger%252FLAT_Log_Interface%257DLAT_Log_InsertUpdateRequestMsg/xpath%3D%252F/smo.xsd
*   Output file(s):		smo://smo/name%3Dwsdl-primary/correlationContext%3D%257Bhttp%253A%252F%252FNCL_LATITUDES_CLIENT_POINTS_TRG_Module%257DAppContext/message%3D%257Bhttp%253A%252F%252FNCL_LATITUDES_CLIENT_POINTS_TRG_Module%252FJDBCImport%257DexecuteNclseaNcl_Lat_Insert_TrgRequestMsg/xpath%3D%252F/smo.xsd
*
*   Custom code snippets are wrapped in top-level <xsl:template> 
*   elements. These <xsl:template> elements, in turn, are used to
*   interface with the custom mappings in the XML Mapping editor.
*****************************************************************************
-->
<xsl:stylesheet
     xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
     xmlns:xalan="http://xml.apache.org/xslt"
     xmlns:in="wsdl.http://LAT_Log_Logger/LAT_Log_Interface"
     xmlns:in2="http://LAT_Log_Logger/LAT_Log_Interface"
     xmlns:out="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_lat_insert_trg"
     xmlns:out2="http://NCL_LATITUDES_CLIENT_POINTS_TRG_Module/JDBCImport"
     xmlns:io2="http://www.ibm.com/xmlns/prod/websphere/mq/sca/6.0.0"
     xmlns:io="http://www.ibm.com/websphere/sibx/smo/v6.0.1"
     xmlns:io3="http://schemas.xmlsoap.org/ws/2004/08/addressing"
     xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
     xmlns:io4="http://www.ibm.com/xmlns/prod/websphere/http/sca/6.1.0"
     xmlns:io5="http://NCL_LATITUDES_CLIENT_POINTS_TRG_Module"
     xmlns:xsd="http://www.w3.org/2001/XMLSchema"
     xmlns:out3="wsdl.http://NCL_LATITUDES_CLIENT_POINTS_TRG_Module/JDBCImport"
     xmlns:io6="http://www.w3.org/2005/08/addressing"
     exclude-result-prefixes="in in2 xalan"
     version="1.0">
  <xsl:output method="xml" encoding="UTF-8" indent="yes" xalan:indent-amount="2"/>
  <xsl:strip-space elements="*"/>

  <!-- The rule represents a custom mapping: "NCL_LATITUDES_CLIENT_POINTS_TRG_REQ" to "p_client_id". -->
  <xsl:template name="NCL_LATITUDES_CLIENT_POINTS_TRG_REQToP_client_id">
    <xsl:param name="NCL_LATITUDES_CLIENT_POINTS_TRG_REQ"/>
    <xsl:param name="CLEINT_ID"/>
    <xsl:param name="CLIENT_ID"/>
    <!-- ADD CUSTOM CODE HERE. -->
    
    <xsl:choose>
	<xsl:when test="(string-length( $CLIENT_ID))&gt;(number('2'))">
		<xsl:value-of select="$CLIENT_ID"/>
	</xsl:when>
	<xsl:otherwise>
		<xsl:value-of select="$CLEINT_ID"/>
	</xsl:otherwise>
</xsl:choose>
    
  </xsl:template>
</xsl:stylesheet>
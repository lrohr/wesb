<?xml version="1.0" encoding="UTF-8"?>
<!--
*****************************************************************************
*   This file contains the XSLT code snippets for the custom mappings
*   defined using the IBM XML Mapping Editor V1.0.110
*
*   Mapping file:		XSLTransformation2_req_1.map
*   Map declaration(s):	XSLTransformation2_req_1
*   Input file(s):		smo://smo/name%3Dwsdl-primary/message%3D%257Bhttp%253A%252F%252FLAT_Log_Logger%252FLAT_Log_Interface%257DLAT_Log_InsertUpdateRequestMsg/xpath%3D%252Fbody/smo.xsd
*   Output file(s):		smo://smo/name%3Dwsdl-primary/message%3D%257Bhttp%253A%252F%252FLAT_Log_Logger%252FJDBCImport%257DexecuteNclseaNcl_Lat_Update_LogRequestMsg/xpath%3D%252Fbody/smo.xsd
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
     xmlns:in="wsdl.http://LAT_Log_Logger/LAT_Log_Interface"
     xmlns:in2="http://LAT_Log_Logger/LAT_Log_Interface"
     xmlns:out="http://LAT_Log_Logger/JDBCImport"
     xmlns:io="http://www.w3.org/2003/05/soap-envelope"
     xmlns:io3="http://www.ibm.com/xmlns/prod/websphere/mq/sca/6.0.0"
     xmlns:io2="http://www.ibm.com/websphere/sibx/smo/v6.0.1"
     xmlns:io4="http://schemas.xmlsoap.org/ws/2004/08/addressing"
     xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
     xmlns:io5="http://www.ibm.com/xmlns/prod/websphere/http/sca/6.1.0"
     xmlns:out3="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_lat_insert_log"
     xmlns:out2="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_lat_update_log"
     xmlns:out4="wsdl.http://LAT_Log_Logger/JDBCImport"
     xmlns:xs4xs="http://www.w3.org/2001/XMLSchema"
     xmlns:io6="http://www.w3.org/2005/08/addressing"
     xmlns:map="http://LAT_Log_Logger/xslt/XSLTransformation2_req_1"
     exclude-result-prefixes="in in2 str set math fn regexp dyn dp exsl date map xalan"
     version="1.0">
  <xsl:output method="xml" encoding="UTF-8" indent="yes" xalan:indent-amount="2"/>
  <xsl:strip-space elements="*"/>

  <!-- The rule represents a custom mapping: "XML" to "response_msg". -->
  <xsl:template name="XMLToResponse_msg">
    <xsl:param name="XML"/>
    <!-- ADD CUSTOM CODE HERE. -->
    
    <xsl:choose>
			<xsl:when test="( string-length( $XML)   &gt;  number('2048')      )">
				<xsl:value-of select="   substring($XML,  ( string-length( $XML) - 2040 )  ,number('2040'))     "/>
			</xsl:when>
			<xsl:otherwise>
			<xsl:value-of select=" $XML     "/>
			</xsl:otherwise>
	</xsl:choose>
    
  </xsl:template>
</xsl:stylesheet>
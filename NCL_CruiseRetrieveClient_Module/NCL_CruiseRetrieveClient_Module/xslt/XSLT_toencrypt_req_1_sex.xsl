<?xml version="1.0" encoding="UTF-8"?>
<!--
*****************************************************************************
*   This file contains the XSLT code snippets for the custom mappings
*   defined using the IBM XML Mapping Editor V1.0.110
*
*   Mapping file:		XSLT_toencrypt_req_1.map
*   Map declaration(s):	XSLT_toencrypt_req_1
*   Input file(s):		smo://smo/name%3Dwsdl-primary/correlationContext%3D%257Bhttp%253A%252F%252FNCL_CruiseRetrieveClient_Module%257DApp_Context/message%3D%257Bhttp%253A%252F%252FNCL_CruiseRetrieveClient_Module%252FJDBCImport2%257DexecuteNclseaNcl_Wesb_Get_Client_Prof_V1ResponseMsg/xpath%3D%252F/smo.xsd
*   Output file(s):		smo://smo/name%3Dwsdl-primary/correlationContext%3D%257Bhttp%253A%252F%252FNCL_CruiseRetrieveClient_Module%257DApp_Context/message%3D%257Bhttp%253A%252F%252Fversonix.com%252Fapi%252Fdefinitions%257DprocessEncryptDecryptRequest/xpath%3D%252F/smo.xsd
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
     xmlns:in="wsdl.http://NCL_CruiseRetrieveClient_Module/JDBCImport2"
     xmlns:in2="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_get_client_prof_v1"
     xmlns:in3="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_get_client_prof_v1p_cursor"
     xmlns:in4="http://com/ibm/j2ca/fault"
     xmlns:in5="http://NCL_CruiseRetrieveClient_Module/JDBCImport2"
     xmlns:in6="http://com/ibm/j2ca/fault/afcfault"
     xmlns:out="http://versonix.com/api/schemas"
     xmlns:io="http://www.w3.org/2003/05/soap-envelope"
     xmlns:io3="http://www.ibm.com/xmlns/prod/websphere/mq/sca/6.0.0"
     xmlns:io2="http://www.ibm.com/websphere/sibx/smo/v6.0.1"
     xmlns:out2="wsdl.http://versonix.com/api/definitions"
     xmlns:io4="http://NCL_CruiseRetrieveClient_Module"
     xmlns:io5="http://schemas.xmlsoap.org/ws/2004/08/addressing"
     xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
     xmlns:io7="http://www.ibm.com/xmlns/prod/websphere/http/sca/6.1.0"
     xmlns:io6="http://nclapi/schemas"
     xmlns:xs4xs="http://www.w3.org/2001/XMLSchema"
     xmlns:io8="http://www.w3.org/2005/08/addressing"
     xmlns:map="http://NCL_CruiseRetrieveClient_Module/xslt/XSLT_toencrypt_req_1"
     exclude-result-prefixes="in in2 in3 in4 in5 in6 str set math fn regexp dyn dp exsl date map xalan"
     version="1.0">
  <xsl:output method="xml" encoding="UTF-8" indent="yes" xalan:indent-amount="2"/>
  <xsl:strip-space elements="*"/>

  <!-- The rule represents a custom mapping: "sex" to "Gender". -->
  <xsl:template name="SexToGender">
    <xsl:param name="sex"/>
    <!-- ADD CUSTOM CODE HERE. -->
  <xsl:choose>
	<xsl:when test=" $sex    or   $sex !='' "   >
		<xsl:choose>
			<xsl:when test="substring(translate($sex,'abcdefghijklmnopqrstuvwxyz','ABCDEFGHIJKLMNOPQRSTUVWXYZ'),number('1'),number('1')) =  'M'  ">
				<xsl:value-of select=" 'Male'  "/>
			</xsl:when>
			<xsl:otherwise>
				<xsl:choose>
					<xsl:when test="substring(translate($sex,'abcdefghijklmnopqrstuvwxyz','ABCDEFGHIJKLMNOPQRSTUVWXYZ'),number('1'),number('1')) =  'F'  ">
						<xsl:value-of select=" 'Female'  "/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:value-of select=" 'Unknown' "/>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:when>
	<xsl:otherwise>
		<xsl:value-of select="'Unknown'"/>
	</xsl:otherwise>
</xsl:choose>
  </xsl:template>
</xsl:stylesheet>
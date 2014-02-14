<?xml version="1.0" encoding="UTF-8"?>
<!-- @generated mapFile="xslt/XSLT_err_3_req_1.map" md5sum="784c0b95517b77240dbb70cb3c3c9a70" version="7.6.100" -->
<!--
*****************************************************************************
*   This file has been generated by the IBM XML Mapping Editor.
*
*   Mapping file:		XSLT_err_3_req_1.map
*   Map declaration(s):	XSLT_err_3_req_1
*   Input file(s):		smo://smo/name%3Dwsdl-primary/correlationContext%3D%257Bhttp%253A%252F%252FNCL_CruiseRetrieveClient_Module%257DApp_Context/message%3D%257Bhttp%253A%252F%252FNCL_CruiseRetrieveClient_Module%252FJDBCImport%257DretrieveallgetNextResponseMsg/xpath%3D%252Fbody/smo.xsd
*   Output file(s):		smo://smo/name%3Dwsdl-primary/correlationContext%3D%257Bhttp%253A%252F%252FNCL_CruiseRetrieveClient_Module%257DApp_Context/message%3D%257Bhttp%253A%252F%252FNCL_WESB_Shared_Library%252FNCL_CruiseRetrieveClient_Interface%257DPerform_NCL_CruiseRetrieveClientResponseMsg/xpath%3D%252Fbody/smo.xsd
*
*   Note: Do not modify the contents of this file as it is overwritten
*         each time the mapping model is updated.
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
    xmlns:in="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/getnextcontainer"
    xmlns:in2="wsdl.http://NCL_CruiseRetrieveClient_Module/JDBCImport"
    xmlns:in3="http://com/ibm/j2ca/fault"
    xmlns:in4="http://NCL_CruiseRetrieveClient_Module/JDBCImport"
    xmlns:in5="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/getnext"
    xmlns:in6="http://com/ibm/j2ca/fault/afcfault"
    xmlns:io="http://www.w3.org/2003/05/soap-envelope"
    xmlns:io3="http://www.ibm.com/xmlns/prod/websphere/mq/sca/6.0.0"
    xmlns:io2="http://www.ibm.com/websphere/sibx/smo/v6.0.1"
    xmlns:out="http://NCL_WESB_Shared_Library/NCL_CruiseRetrieveClient_Interface"
    xmlns:io4="http://schemas.xmlsoap.org/ws/2004/08/addressing"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xmlns:out2="http://nclapi/schemas"
    xmlns:io5="http://www.ibm.com/xmlns/prod/websphere/http/sca/6.1.0"
    xmlns:out3="wsdl.http://NCL_WESB_Shared_Library/NCL_CruiseRetrieveClient_Interface"
    xmlns:xs4xs="http://www.w3.org/2001/XMLSchema"
    xmlns:io6="http://www.w3.org/2005/08/addressing"
    xmlns:map="http://NCL_CruiseRetrieveClient_Module/xslt/XSLT_err_3_req_1"
    xmlns:msl="http://www.ibm.com/xmlmap"
    exclude-result-prefixes="in in2 in3 in4 in5 in6 str set math fn regexp dyn dp exsl date map xalan msl"
    version="1.0">
  <xsl:output method="xml" encoding="UTF-8" indent="no"/>

  <!-- root wrapper template  -->
  <xsl:template match="/">
    <xsl:choose>
      <xsl:when test="msl:datamap">
        <msl:datamap>
          <xsl:element name="dataObject">
            <xsl:attribute name="xsi:type">
              <xsl:value-of select="'out3:Perform_NCL_CruiseRetrieveClientResponseMsg'"/>
            </xsl:attribute>
            <xsl:call-template name="map:XSLT_err_3_req_12">
              <xsl:with-param name="body" select="msl:datamap/dataObject[1]"/>
            </xsl:call-template>
          </xsl:element>
        </msl:datamap>
      </xsl:when>
      <xsl:otherwise>
        <xsl:apply-templates select="body" mode="map:XSLT_err_3_req_1"/>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <!-- This rule represents an element mapping: "body" to "body".  -->
  <xsl:template match="body"  mode="map:XSLT_err_3_req_1">
    <body>
      <xsl:attribute name="xsi:type">
        <xsl:value-of select="'out3:Perform_NCL_CruiseRetrieveClientResponseMsg'"/>
      </xsl:attribute>
    </body>
  </xsl:template>

  <!-- This rule represents a type mapping: "body" to "body".  -->
  <xsl:template name="map:XSLT_err_3_req_12">
    <xsl:param name="body"/>
  </xsl:template>

  <!-- *****************    Utility Templates    ******************  -->
  <!-- copy the namespace declarations from the source to the target -->
  <xsl:template name="copyNamespaceDeclarations">
    <xsl:param name="root"/>
    <xsl:for-each select="$root/namespace::*[not(name() = '')]">
      <xsl:copy/>
    </xsl:for-each>
  </xsl:template>
</xsl:stylesheet>
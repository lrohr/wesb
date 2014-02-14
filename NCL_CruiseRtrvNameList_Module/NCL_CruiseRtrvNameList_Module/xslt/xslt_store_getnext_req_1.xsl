<?xml version="1.0" encoding="UTF-8"?>
<!-- @generated mapFile="xslt/xslt_store_getnext_req_1.map" md5sum="5c79e699d8450311313f4382bb6f2dfd" version="7.6.100" -->
<!--
*****************************************************************************
*   This file has been generated by the IBM XML Mapping Editor.
*
*   Mapping file:		xslt_store_getnext_req_1.map
*   Map declaration(s):	xslt_store_getnext_req_1
*   Input file(s):		smo://smo/name%3Dwsdl-primary/correlationContext%3D%257Bhttp%253A%252F%252FNCL_CruiseRtrvNameList_Module%257DApp_Context/message%3D%257Bhttp%253A%252F%252FNCL_CruiseRtrvNameList_Module%252FJDBCImport%257DretrieveallgetNextResponseMsg/xpath%3D%252F/smo.xsd
*   Output file(s):		smo://smo/name%3Dwsdl-primary/correlationContext%3D%257Bhttp%253A%252F%252FNCL_CruiseRtrvNameList_Module%257DApp_Context/message%3D%257Bhttp%253A%252F%252FTP_Logger%252FTP_Interface%257DTP_InsertUpdateRequestMsg/xpath%3D%252F/smo.xsd
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
    xmlns:in="http://NCL_CruiseRtrvNameList_Module/JDBCImport"
    xmlns:in2="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/getnextcontainer"
    xmlns:in3="http://com/ibm/j2ca/fault"
    xmlns:in4="wsdl.http://NCL_CruiseRtrvNameList_Module/JDBCImport"
    xmlns:in5="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/getnext"
    xmlns:in6="http://com/ibm/j2ca/fault/afcfault"
    xmlns:io="http://www.w3.org/2003/05/soap-envelope"
    xmlns:io3="http://www.ibm.com/xmlns/prod/websphere/mq/sca/6.0.0"
    xmlns:io2="http://www.ibm.com/websphere/sibx/smo/v6.0.1"
    xmlns:out="http://TP_Logger/TP_Interface"
    xmlns:io4="http://schemas.xmlsoap.org/ws/2004/08/addressing"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xmlns:io6="http://www.ibm.com/xmlns/prod/websphere/http/sca/6.1.0"
    xmlns:io5="http://nclapi/schemas"
    xmlns:out2="wsdl.http://TP_Logger/TP_Interface"
    xmlns:xs4xs="http://www.w3.org/2001/XMLSchema"
    xmlns:io8="http://www.w3.org/2005/08/addressing"
    xmlns:io7="http://NCL_CruiseRtrvNameList_Module"
    xmlns:map="http://NCL_CruiseRtrvNameList_Module/xslt/xslt_store_getnext_req_1"
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
              <xsl:value-of select="'io2:ServiceMessageObject'"/>
            </xsl:attribute>
            <xsl:call-template name="map:xslt_store_getnext_req_12">
              <xsl:with-param name="smo" select="msl:datamap/dataObject[1]"/>
            </xsl:call-template>
          </xsl:element>
        </msl:datamap>
      </xsl:when>
      <xsl:otherwise>
        <xsl:apply-templates select="io2:smo" mode="map:xslt_store_getnext_req_1"/>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <!-- This rule represents an element mapping: "io2:smo" to "io2:smo".  -->
  <xsl:template match="io2:smo"  mode="map:xslt_store_getnext_req_1">
    <io2:smo>
      <context>
        <correlation>
          <xsl:attribute name="xsi:type">
            <xsl:value-of select="'io7:App_Context'"/>
          </xsl:attribute>
          <!-- a structural mapping: "context/correlation/io5:NCL_CruiseRtrvNameListRQ"(<Anonymous>) to "io5:NCL_CruiseRtrvNameListRQ"(<Anonymous>) -->
          <xsl:if test="context/correlation/io5:NCL_CruiseRtrvNameListRQ">
            <xsl:copy-of select="context/correlation/io5:NCL_CruiseRtrvNameListRQ"/>
          </xsl:if>
          <!-- a simple data mapping: "body/in:retrieveallgetNextResponse/in:retrieveallgetNextOutput/getNext[1]/nextval"(decimal) to "ErrorCode"(string) -->
          <xsl:if test="body/in:retrieveallgetNextResponse/in:retrieveallgetNextOutput/getNext[1]/nextval">
            <xsl:element name="ErrorCode">
              <xsl:value-of select="body/in:retrieveallgetNextResponse/in:retrieveallgetNextOutput/getNext[1]/nextval"/>
            </xsl:element>
          </xsl:if>
        </correlation>
      </context>
    </io2:smo>
  </xsl:template>

  <!-- This rule represents a type mapping: "io2:smo" to "io2:smo".  -->
  <xsl:template name="map:xslt_store_getnext_req_12">
    <xsl:param name="smo"/>
    <context>
      <correlation>
        <xsl:attribute name="xsi:type">
          <xsl:value-of select="'io7:App_Context'"/>
        </xsl:attribute>
        <!-- a structural mapping: "$smo/context/correlation/io5:NCL_CruiseRtrvNameListRQ"(<Anonymous>) to "io5:NCL_CruiseRtrvNameListRQ"(<Anonymous>) -->
        <xsl:if test="$smo/context/correlation/io5:NCL_CruiseRtrvNameListRQ">
          <xsl:copy-of select="$smo/context/correlation/io5:NCL_CruiseRtrvNameListRQ"/>
        </xsl:if>
        <!-- a simple data mapping: "$smo/body/in:retrieveallgetNextResponse/in:retrieveallgetNextOutput/getNext[1]/nextval"(decimal) to "ErrorCode"(string) -->
        <xsl:if test="$smo/body/in:retrieveallgetNextResponse/in:retrieveallgetNextOutput/getNext[1]/nextval">
          <xsl:element name="ErrorCode">
            <xsl:value-of select="$smo/body/in:retrieveallgetNextResponse/in:retrieveallgetNextOutput/getNext[1]/nextval"/>
          </xsl:element>
        </xsl:if>
      </correlation>
    </context>
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

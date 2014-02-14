<?xml version="1.0" encoding="UTF-8"?>
<!-- @generated mapFile="xslt/XSLTransformation2_req_1.map" md5sum="248afea603f7b9d4b1f2e3baab184831" version="7.6.100" -->
<!--
*****************************************************************************
*   This file has been generated by the IBM XML Mapping Editor.
*
*   Mapping file:		XSLTransformation2_req_1.map
*   Map declaration(s):	XSLTransformation2_req_1
*   Input file(s):		smo://smo/name%3Dwsdl-primary/correlationContext%3D%257Bhttp%253A%252F%252FNCL_LATITUDES_POINTS_LOOKUP_Module%257DAppContext/message%3D%257Bhttp%253A%252F%252FNCL_LATITUDES_POINTS_LOOKUP_Module%252FJDBCImport%257DexecuteNclseaNcl_Lat_Lookup_TierRequestMsg/xpath%3D%252F/smo.xsd
*   Output file(s):		smo://smo/name%3Dwsdl-primary/correlationContext%3D%257Bhttp%253A%252F%252FNCL_LATITUDES_POINTS_LOOKUP_Module%257DAppContext/message%3D%257Bhttp%253A%252F%252FNCL_WESB_Shared_Library%252FNCL_LATITUDES_POINTS_LOOKUP_Interface%257DPerform_NCL_LATITUDES_POINTS_LOOKUPResponseMsg/xpath%3D%252F/smo.xsd
*   XSLT import(s):   	XSLTransformation2_req_1_custom.xsl
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
    xmlns:in2="http://NCL_LATITUDES_POINTS_LOOKUP_Module/JDBCImport"
    xmlns:in="wsdl.http://NCL_LATITUDES_POINTS_LOOKUP_Module/JDBCImport"
    xmlns:in3="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_lat_lookup_tier"
    xmlns:in4="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_lat_lookup_tierp_cursor"
    xmlns:io="http://www.w3.org/2003/05/soap-envelope"
    xmlns:io3="http://www.ibm.com/xmlns/prod/websphere/mq/sca/6.0.0"
    xmlns:io2="http://www.ibm.com/websphere/sibx/smo/v6.0.1"
    xmlns:out="wsdl.http://NCL_WESB_Shared_Library/NCL_LATITUDES_POINTS_LOOKUP_Interface"
    xmlns:io4="http://schemas.xmlsoap.org/ws/2004/08/addressing"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xmlns:io5="http://NCL_LATITUDES_POINTS_LOOKUP_Module"
    xmlns:io6="http://www.ibm.com/xmlns/prod/websphere/http/sca/6.1.0"
    xmlns:out2="http://NCL_WESB_Shared_Library/NCL_LATITUDES_POINTS_LOOKUP_Interface"
    xmlns:xs4xs="http://www.w3.org/2001/XMLSchema"
    xmlns:io7="http://www.w3.org/2005/08/addressing"
    xmlns:map="http://NCL_LATITUDES_POINTS_LOOKUP_Module/xslt/XSLTransformation2_req_1"
    xmlns:msl="http://www.ibm.com/xmlmap"
    exclude-result-prefixes="in2 in in3 in4 str set math fn regexp dyn dp exsl date map xalan msl"
    version="1.0">

  <!-- imports  -->
  <xsl:import href="XSLTransformation2_req_1_custom.xsl"/>
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
            <xsl:call-template name="map:XSLTransformation2_req_12">
              <xsl:with-param name="smo" select="msl:datamap/dataObject[1]"/>
            </xsl:call-template>
          </xsl:element>
        </msl:datamap>
      </xsl:when>
      <xsl:otherwise>
        <xsl:apply-templates select="io2:smo" mode="map:XSLTransformation2_req_1"/>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <!-- This rule represents an element mapping: "io2:smo" to "io2:smo".  -->
  <xsl:template match="io2:smo"  mode="map:XSLTransformation2_req_1">
    <io2:smo>
      <context>
        <correlation>
          <xsl:attribute name="xsi:type">
            <xsl:value-of select="'io5:AppContext'"/>
          </xsl:attribute>
          <!-- a simple data mapping: "context/correlation/LogId"(string) to "LogId"(string) -->
          <xsl:if test="context/correlation/LogId">
            <xsl:element name="LogId">
              <xsl:value-of select="context/correlation/LogId"/>
            </xsl:element>
          </xsl:if>
          <!-- a structural mapping: "context/correlation/NCL_LATITUDES_POINTS_LOOKUP_REQ"(<Anonymous>) to "NCL_LATITUDES_POINTS_LOOKUP_REQ"(<Anonymous>) -->
          <xsl:if test="context/correlation/NCL_LATITUDES_POINTS_LOOKUP_REQ">
            <xsl:copy-of select="context/correlation/NCL_LATITUDES_POINTS_LOOKUP_REQ"/>
          </xsl:if>
          <xsl:element name="NCL_LATITUDES_POINTS_LOOKUP_RESP">
            <!-- a simple mapping with no associated source:  to "SUCCESS"(string) -->
            <xsl:element name="SUCCESS">
              <xsl:call-template name="ToSUCCESS"/>
            </xsl:element>
            <!-- a simple data mapping: "context/failInfo/failureString"(string) to "ERROR_MSG"(string) -->
            <xsl:if test="context/failInfo/failureString">
              <xsl:element name="ERROR_MSG">
                <xsl:value-of select="context/failInfo/failureString"/>
              </xsl:element>
            </xsl:if>
            <!-- a simple mapping with no associated source:  to "ERROR_CODE"(string) -->
            <xsl:element name="ERROR_CODE">
              <xsl:text>9002</xsl:text>
            </xsl:element>
          </xsl:element>
        </correlation>
      </context>
    </io2:smo>
  </xsl:template>

  <!-- This rule represents a type mapping: "io2:smo" to "io2:smo".  -->
  <xsl:template name="map:XSLTransformation2_req_12">
    <xsl:param name="smo"/>
    <context>
      <correlation>
        <xsl:attribute name="xsi:type">
          <xsl:value-of select="'io5:AppContext'"/>
        </xsl:attribute>
        <!-- a simple data mapping: "$smo/context/correlation/LogId"(string) to "LogId"(string) -->
        <xsl:if test="$smo/context/correlation/LogId">
          <xsl:element name="LogId">
            <xsl:value-of select="$smo/context/correlation/LogId"/>
          </xsl:element>
        </xsl:if>
        <!-- a structural mapping: "$smo/context/correlation/NCL_LATITUDES_POINTS_LOOKUP_REQ"(<Anonymous>) to "NCL_LATITUDES_POINTS_LOOKUP_REQ"(<Anonymous>) -->
        <xsl:if test="$smo/context/correlation/NCL_LATITUDES_POINTS_LOOKUP_REQ">
          <xsl:copy-of select="$smo/context/correlation/NCL_LATITUDES_POINTS_LOOKUP_REQ"/>
        </xsl:if>
        <xsl:element name="NCL_LATITUDES_POINTS_LOOKUP_RESP">
          <!-- a simple mapping with no associated source:  to "SUCCESS"(string) -->
          <xsl:element name="SUCCESS">
            <xsl:call-template name="ToSUCCESS"/>
          </xsl:element>
          <!-- a simple data mapping: "$smo/context/failInfo/failureString"(string) to "ERROR_MSG"(string) -->
          <xsl:if test="$smo/context/failInfo/failureString">
            <xsl:element name="ERROR_MSG">
              <xsl:value-of select="$smo/context/failInfo/failureString"/>
            </xsl:element>
          </xsl:if>
          <!-- a simple mapping with no associated source:  to "ERROR_CODE"(string) -->
          <xsl:element name="ERROR_CODE">
            <xsl:text>9002</xsl:text>
          </xsl:element>
        </xsl:element>
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

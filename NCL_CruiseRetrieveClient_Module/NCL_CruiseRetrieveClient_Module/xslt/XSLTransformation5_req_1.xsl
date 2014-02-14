<?xml version="1.0" encoding="UTF-8"?>
<!-- @generated mapFile="xslt/XSLTransformation5_req_1.map" md5sum="8b319ad8cda7c64b8dc6741265bbe077" version="7.6.100" -->
<!--
*****************************************************************************
*   This file has been generated by the IBM XML Mapping Editor.
*
*   Mapping file:		XSLTransformation5_req_1.map
*   Map declaration(s):	XSLTransformation5_req_1
*   Input file(s):		smo://smo/name%3Dwsdl-primary/correlationContext%3D%257Bhttp%253A%252F%252FNCL_CruiseRetrieveClient_Module%257DApp_Context/message%3D%257Bhttp%253A%252F%252FNCL_WESB_Shared_Library%252FNCL_CruiseRetrieveClient_Interface%257DPerform_NCL_CruiseRetrieveClientResponseMsg/xpath%3D%252F/smo.xsd
*   Output file(s):		smo://smo/name%3Dwsdl-primary/correlationContext%3D%257Bhttp%253A%252F%252FNCL_CruiseRetrieveClient_Module%257DApp_Context/message%3D%257Bhttp%253A%252F%252FNCL_WESB_Shared_Library%252FNCL_CruiseRetrieveClient_Interface%257DPerform_NCL_CruiseRetrieveClientResponseMsg/xpath%3D%252F/smo.xsd
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
    xmlns:io="http://www.w3.org/2003/05/soap-envelope"
    xmlns:io3="http://www.ibm.com/xmlns/prod/websphere/mq/sca/6.0.0"
    xmlns:io2="http://www.ibm.com/websphere/sibx/smo/v6.0.1"
    xmlns:io4="http://NCL_WESB_Shared_Library/NCL_CruiseRetrieveClient_Interface"
    xmlns:io5="http://NCL_CruiseRetrieveClient_Module"
    xmlns:io6="http://schemas.xmlsoap.org/ws/2004/08/addressing"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xmlns:io8="http://www.ibm.com/xmlns/prod/websphere/http/sca/6.1.0"
    xmlns:io7="http://nclapi/schemas"
    xmlns:io9="wsdl.http://NCL_WESB_Shared_Library/NCL_CruiseRetrieveClient_Interface"
    xmlns:xs4xs="http://www.w3.org/2001/XMLSchema"
    xmlns:io10="http://www.w3.org/2005/08/addressing"
    xmlns:map="http://NCL_CruiseRetrieveClient_Module/xslt/XSLTransformation5_req_1"
    xmlns:msl="http://www.ibm.com/xmlmap"
    exclude-result-prefixes="str set math fn regexp dyn dp exsl date map xalan msl"
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
            <xsl:call-template name="map:XSLTransformation5_req_12">
              <xsl:with-param name="smo" select="msl:datamap/dataObject[1]"/>
            </xsl:call-template>
          </xsl:element>
        </msl:datamap>
      </xsl:when>
      <xsl:otherwise>
        <xsl:apply-templates select="io2:smo" mode="map:XSLTransformation5_req_1"/>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <!-- This rule represents an element mapping: "io2:smo" to "io2:smo".  -->
  <xsl:template match="io2:smo"  mode="map:XSLTransformation5_req_1">
    <io2:smo>
      <context>
        <correlation>
          <xsl:attribute name="xsi:type">
            <xsl:value-of select="'io5:App_Context'"/>
          </xsl:attribute>
          <!-- a structural mapping: "context/correlation/io7:NCL_CruiseRetrieveClientRQ"(<Anonymous>) to "io7:NCL_CruiseRetrieveClientRQ"(<Anonymous>) -->
          <xsl:if test="context/correlation/io7:NCL_CruiseRetrieveClientRQ">
            <xsl:copy-of select="context/correlation/io7:NCL_CruiseRetrieveClientRQ"/>
          </xsl:if>
          <!-- a simple data mapping: "context/correlation/LogID"(string) to "LogID"(string) -->
          <xsl:if test="context/correlation/LogID">
            <xsl:element name="LogID">
              <xsl:value-of select="context/correlation/LogID"/>
            </xsl:element>
          </xsl:if>
          <!-- a simple data mapping: "context/correlation/ClientID"(string) to "ClientID"(string) -->
          <xsl:if test="context/correlation/ClientID">
            <xsl:element name="ClientID">
              <xsl:value-of select="context/correlation/ClientID"/>
            </xsl:element>
          </xsl:if>
        </correlation>
      </context>
      <xsl:element name="body">
        <xsl:attribute name="xsi:type">
          <xsl:value-of select="'io9:Perform_NCL_CruiseRetrieveClientResponseMsg'"/>
        </xsl:attribute>
        <xsl:element name="io4:Perform_NCL_CruiseRetrieveClientResponse">
          <!-- a structural mapping: "context/correlation/io7:NCL_CruiseRetrieveClientRS"(<Anonymous>) to "io7:NCL_CruiseRetrieveClientRS"(<Anonymous>) -->
          <xsl:copy-of select="context/correlation/io7:NCL_CruiseRetrieveClientRS"/>
        </xsl:element>
      </xsl:element>
    </io2:smo>
  </xsl:template>

  <!-- This rule represents a type mapping: "io2:smo" to "io2:smo".  -->
  <xsl:template name="map:XSLTransformation5_req_12">
    <xsl:param name="smo"/>
    <context>
      <correlation>
        <xsl:attribute name="xsi:type">
          <xsl:value-of select="'io5:App_Context'"/>
        </xsl:attribute>
        <!-- a structural mapping: "$smo/context/correlation/io7:NCL_CruiseRetrieveClientRQ"(<Anonymous>) to "io7:NCL_CruiseRetrieveClientRQ"(<Anonymous>) -->
        <xsl:if test="$smo/context/correlation/io7:NCL_CruiseRetrieveClientRQ">
          <xsl:copy-of select="$smo/context/correlation/io7:NCL_CruiseRetrieveClientRQ"/>
        </xsl:if>
        <!-- a simple data mapping: "$smo/context/correlation/LogID"(string) to "LogID"(string) -->
        <xsl:if test="$smo/context/correlation/LogID">
          <xsl:element name="LogID">
            <xsl:value-of select="$smo/context/correlation/LogID"/>
          </xsl:element>
        </xsl:if>
        <!-- a simple data mapping: "$smo/context/correlation/ClientID"(string) to "ClientID"(string) -->
        <xsl:if test="$smo/context/correlation/ClientID">
          <xsl:element name="ClientID">
            <xsl:value-of select="$smo/context/correlation/ClientID"/>
          </xsl:element>
        </xsl:if>
      </correlation>
    </context>
    <xsl:element name="body">
      <xsl:attribute name="xsi:type">
        <xsl:value-of select="'io9:Perform_NCL_CruiseRetrieveClientResponseMsg'"/>
      </xsl:attribute>
      <xsl:element name="io4:Perform_NCL_CruiseRetrieveClientResponse">
        <!-- a structural mapping: "$smo/context/correlation/io7:NCL_CruiseRetrieveClientRS"(<Anonymous>) to "io7:NCL_CruiseRetrieveClientRS"(<Anonymous>) -->
        <xsl:copy-of select="$smo/context/correlation/io7:NCL_CruiseRetrieveClientRS"/>
      </xsl:element>
    </xsl:element>
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
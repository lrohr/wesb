<?xml version="1.0" encoding="UTF-8"?>
<!-- @generated mapFile="xslt/xsltLoadOutput.map" md5sum="12aab587d4e4f13343a398b2c9ec233b" version="7.6.100" -->
<!--
*****************************************************************************
*   This file has been generated by the IBM XML Mapping Editor.
*
*   Mapping file:		xsltLoadOutput.map
*   Map declaration(s):	xsltLoadOutput
*   Input file(s):		smo://smo/name%3Dwsdl-primary/correlationContext%3D%257Bhttp%253A%252F%252FNCL_CruiseBookingPayment%257DappContext/message%3D%257Bhttp%253A%252F%252FNCL_WESB_Shared_Library%252FNCL_CruiseBookingPayment_Interface%257DPerform_NCL_CruiseBookingPaymentResponseMsg/xpath%3D%252F/smo.xsd
*   Output file(s):		smo://smo/name%3Dwsdl-primary/correlationContext%3D%257Bhttp%253A%252F%252FNCL_CruiseBookingPayment%257DappContext/message%3D%257Bhttp%253A%252F%252FNCL_WESB_Shared_Library%252FNCL_CruiseBookingPayment_Interface%257DPerform_NCL_CruiseBookingPaymentResponseMsg/xpath%3D%252F/smo.xsd
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
    xmlns:io="wsdl.http://NCL_WESB_Shared_Library/NCL_CruiseBookingPayment_Interface"
    xmlns:io2="http://www.w3.org/2003/05/soap-envelope"
    xmlns:io4="http://www.ibm.com/xmlns/prod/websphere/mq/sca/6.0.0"
    xmlns:io3="http://www.ibm.com/websphere/sibx/smo/v6.0.1"
    xmlns:io5="http://schemas.xmlsoap.org/ws/2004/08/addressing"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xmlns:io7="http://www.ibm.com/xmlns/prod/websphere/http/sca/6.1.0"
    xmlns:io6="http://nclapi/schemas"
    xmlns:io8="http://NCL_WESB_Shared_Library/NCL_CruiseBookingPayment_Interface"
    xmlns:io9="http://NCL_CruiseBookingPayment"
    xmlns:xs4xs="http://www.w3.org/2001/XMLSchema"
    xmlns:io10="http://www.w3.org/2005/08/addressing"
    xmlns:map="http://NCL_CruiseBookingPayment/xslt/xsltLoadOutput"
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
              <xsl:value-of select="'io3:ServiceMessageObject'"/>
            </xsl:attribute>
            <xsl:call-template name="map:xsltLoadOutput2">
              <xsl:with-param name="smo" select="msl:datamap/dataObject[1]"/>
            </xsl:call-template>
          </xsl:element>
        </msl:datamap>
      </xsl:when>
      <xsl:otherwise>
        <xsl:apply-templates select="io3:smo" mode="map:xsltLoadOutput"/>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <!-- This rule represents an element mapping: "io3:smo" to "io3:smo".  -->
  <xsl:template match="io3:smo"  mode="map:xsltLoadOutput">
    <io3:smo>
      <context>
        <correlation>
          <xsl:attribute name="xsi:type">
            <xsl:value-of select="'io9:appContext'"/>
          </xsl:attribute>
          <!-- a structural mapping: "context/correlation/io6:NCL_CruiseBookingPaymentRQ"(<Anonymous>) to "io6:NCL_CruiseBookingPaymentRQ"(<Anonymous>) -->
          <xsl:if test="context/correlation/io6:NCL_CruiseBookingPaymentRQ">
            <xsl:copy-of select="context/correlation/io6:NCL_CruiseBookingPaymentRQ"/>
          </xsl:if>
          <!-- a structural mapping: "context/correlation/io6:NCL_CruiseBookingPaymentRS"(<Anonymous>) to "io6:NCL_CruiseBookingPaymentRS"(<Anonymous>) -->
          <xsl:if test="context/correlation/io6:NCL_CruiseBookingPaymentRS">
            <xsl:copy-of select="context/correlation/io6:NCL_CruiseBookingPaymentRS"/>
          </xsl:if>
          <!-- a simple data mapping: "context/correlation/LogId"(string) to "LogId"(string) -->
          <xsl:if test="context/correlation/LogId">
            <xsl:element name="LogId">
              <xsl:value-of select="context/correlation/LogId"/>
            </xsl:element>
          </xsl:if>
        </correlation>
      </context>
      <xsl:element name="body">
        <xsl:attribute name="xsi:type">
          <xsl:value-of select="'io:Perform_NCL_CruiseBookingPaymentResponseMsg'"/>
        </xsl:attribute>
        <xsl:element name="io8:Perform_NCL_CruiseBookingPaymentResponse">
          <!-- a structural mapping: "context/correlation/io6:NCL_CruiseBookingPaymentRS"(<Anonymous>) to "io6:NCL_CruiseBookingPaymentRS"(<Anonymous>) -->
          <xsl:copy-of select="context/correlation/io6:NCL_CruiseBookingPaymentRS"/>
        </xsl:element>
      </xsl:element>
    </io3:smo>
  </xsl:template>

  <!-- This rule represents a type mapping: "io3:smo" to "io3:smo".  -->
  <xsl:template name="map:xsltLoadOutput2">
    <xsl:param name="smo"/>
    <context>
      <correlation>
        <xsl:attribute name="xsi:type">
          <xsl:value-of select="'io9:appContext'"/>
        </xsl:attribute>
        <!-- a structural mapping: "$smo/context/correlation/io6:NCL_CruiseBookingPaymentRQ"(<Anonymous>) to "io6:NCL_CruiseBookingPaymentRQ"(<Anonymous>) -->
        <xsl:if test="$smo/context/correlation/io6:NCL_CruiseBookingPaymentRQ">
          <xsl:copy-of select="$smo/context/correlation/io6:NCL_CruiseBookingPaymentRQ"/>
        </xsl:if>
        <!-- a structural mapping: "$smo/context/correlation/io6:NCL_CruiseBookingPaymentRS"(<Anonymous>) to "io6:NCL_CruiseBookingPaymentRS"(<Anonymous>) -->
        <xsl:if test="$smo/context/correlation/io6:NCL_CruiseBookingPaymentRS">
          <xsl:copy-of select="$smo/context/correlation/io6:NCL_CruiseBookingPaymentRS"/>
        </xsl:if>
        <!-- a simple data mapping: "$smo/context/correlation/LogId"(string) to "LogId"(string) -->
        <xsl:if test="$smo/context/correlation/LogId">
          <xsl:element name="LogId">
            <xsl:value-of select="$smo/context/correlation/LogId"/>
          </xsl:element>
        </xsl:if>
      </correlation>
    </context>
    <xsl:element name="body">
      <xsl:attribute name="xsi:type">
        <xsl:value-of select="'io:Perform_NCL_CruiseBookingPaymentResponseMsg'"/>
      </xsl:attribute>
      <xsl:element name="io8:Perform_NCL_CruiseBookingPaymentResponse">
        <!-- a structural mapping: "$smo/context/correlation/io6:NCL_CruiseBookingPaymentRS"(<Anonymous>) to "io6:NCL_CruiseBookingPaymentRS"(<Anonymous>) -->
        <xsl:copy-of select="$smo/context/correlation/io6:NCL_CruiseBookingPaymentRS"/>
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

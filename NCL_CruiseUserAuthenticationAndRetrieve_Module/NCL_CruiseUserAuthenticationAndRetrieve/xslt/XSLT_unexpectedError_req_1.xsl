<?xml version="1.0" encoding="UTF-8"?>
<!-- @generated mapFile="xslt/XSLT_unexpectedError_req_1.map" md5sum="adb3f181cd612df0427e6ff38070535b" version="7.5.100" -->
<!--
*****************************************************************************
*   This file has been generated by the IBM XML Mapping Editor.
*
*   Mapping file:		XSLT_unexpectedError_req_1.map
*   Map declaration(s):	XSLT_unexpectedError_req_1
*   Input file(s):		smo://smo/name%3Dwsdl-primary/correlationContext%3D%257Bhttp%253A%252F%252FNCL_CruiseUserAuthenticationAndRetrieve%257DAppContext/xpath%3D%252F/smo.xsd
*   Output file(s):		smo://smo/name%3Dwsdl-primary/correlationContext%3D%257Bhttp%253A%252F%252FNCL_CruiseUserAuthenticationAndRetrieve%257DAppContext/xpath%3D%252F/smo.xsd
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
    xmlns:io="http://NCL_CruiseUserAuthenticationAndRetrieve"
    xmlns:io2="http://www.w3.org/2003/05/soap-envelope"
    xmlns:io4="http://www.ibm.com/xmlns/prod/websphere/mq/sca/6.0.0"
    xmlns:io3="http://www.ibm.com/websphere/sibx/smo/v6.0.1"
    xmlns:io5="http://schemas.xmlsoap.org/ws/2004/08/addressing"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xmlns:io7="http://www.ibm.com/xmlns/prod/websphere/http/sca/6.1.0"
    xmlns:io6="http://nclapi/schemas"
    xmlns:xs4xs="http://www.w3.org/2001/XMLSchema"
    xmlns:io8="http://www.w3.org/2005/08/addressing"
    xmlns:map="http://NCL_CruiseUserAuthenticationAndRetrieve/xslt/XSLT_unexpectedError_req_1"
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
            <xsl:call-template name="map:XSLT_unexpectedError_req_12">
              <xsl:with-param name="smo" select="msl:datamap/dataObject[1]"/>
            </xsl:call-template>
          </xsl:element>
        </msl:datamap>
      </xsl:when>
      <xsl:otherwise>
        <xsl:apply-templates select="io3:smo" mode="map:XSLT_unexpectedError_req_1"/>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <!-- This rule represents an element mapping: "io3:smo" to "io3:smo".  -->
  <xsl:template match="io3:smo"  mode="map:XSLT_unexpectedError_req_1">
    <io3:smo>
      <context>
        <correlation>
          <xsl:attribute name="xsi:type">
            <xsl:value-of select="'io:AppContext'"/>
          </xsl:attribute>
          <!-- a structural mapping: "context/correlation/io6:NCL_CruiseUserAuthenticationAndRetrieveRQ"(<Anonymous>) to "io6:NCL_CruiseUserAuthenticationAndRetrieveRQ"(<Anonymous>) -->
          <xsl:if test="context/correlation/io6:NCL_CruiseUserAuthenticationAndRetrieveRQ">
            <xsl:copy-of select="context/correlation/io6:NCL_CruiseUserAuthenticationAndRetrieveRQ"/>
          </xsl:if>
          <!-- a structural mapping: "context/correlation/io6:NCL_CruiseUserAuthenticationAndRetrieveRQ"(<Anonymous>) to "io6:NCL_CruiseUserAuthenticationAndRetrieveRS"(<Anonymous>) -->
          <xsl:apply-templates select="context/correlation/io6:NCL_CruiseUserAuthenticationAndRetrieveRQ" mode="localNCL_CruiseUserAuthenticationAndRetrieveRQToNCL_CruiseUserAuthenticationAndRetrieveRS_1840325728"/>
          <!-- a simple data mapping: "context/correlation/logId"(string) to "logId"(string) -->
          <xsl:if test="context/correlation/logId">
            <xsl:element name="logId">
              <xsl:value-of select="context/correlation/logId"/>
            </xsl:element>
          </xsl:if>
        </correlation>
      </context>
    </io3:smo>
  </xsl:template>

  <!-- This rule represents a type mapping: "io3:smo" to "io3:smo".  -->
  <xsl:template name="map:XSLT_unexpectedError_req_12">
    <xsl:param name="smo"/>
    <context>
      <correlation>
        <xsl:attribute name="xsi:type">
          <xsl:value-of select="'io:AppContext'"/>
        </xsl:attribute>
        <!-- a structural mapping: "$smo/context/correlation/io6:NCL_CruiseUserAuthenticationAndRetrieveRQ"(<Anonymous>) to "io6:NCL_CruiseUserAuthenticationAndRetrieveRQ"(<Anonymous>) -->
        <xsl:if test="$smo/context/correlation/io6:NCL_CruiseUserAuthenticationAndRetrieveRQ">
          <xsl:copy-of select="$smo/context/correlation/io6:NCL_CruiseUserAuthenticationAndRetrieveRQ"/>
        </xsl:if>
        <!-- a structural mapping: "$smo/context/correlation/io6:NCL_CruiseUserAuthenticationAndRetrieveRQ"(<Anonymous>) to "io6:NCL_CruiseUserAuthenticationAndRetrieveRS"(<Anonymous>) -->
        <xsl:apply-templates select="$smo/context/correlation/io6:NCL_CruiseUserAuthenticationAndRetrieveRQ" mode="localNCL_CruiseUserAuthenticationAndRetrieveRQToNCL_CruiseUserAuthenticationAndRetrieveRS_1840325728"/>
        <!-- a simple data mapping: "$smo/context/correlation/logId"(string) to "logId"(string) -->
        <xsl:if test="$smo/context/correlation/logId">
          <xsl:element name="logId">
            <xsl:value-of select="$smo/context/correlation/logId"/>
          </xsl:element>
        </xsl:if>
      </correlation>
    </context>
  </xsl:template>

  <!-- This rule represents an element mapping: "io6:NCL_CruiseUserAuthenticationAndRetrieveRQ" to "io6:NCL_CruiseUserAuthenticationAndRetrieveRS".  -->
  <xsl:template match="io6:NCL_CruiseUserAuthenticationAndRetrieveRQ"  mode="localNCL_CruiseUserAuthenticationAndRetrieveRQToNCL_CruiseUserAuthenticationAndRetrieveRS_1840325728">
    <io6:NCL_CruiseUserAuthenticationAndRetrieveRS>
      <!-- a simple data mapping: "@AltLangID"(language) to "AltLangID"(language) -->
      <xsl:if test="@AltLangID">
        <xsl:attribute name="AltLangID">
          <xsl:value-of select="@AltLangID"/>
        </xsl:attribute>
      </xsl:if>
      <!-- a simple data mapping: "@EchoToken"(StringLength1to128) to "EchoToken"(StringLength1to128) -->
      <xsl:if test="@EchoToken">
        <xsl:attribute name="EchoToken">
          <xsl:value-of select="@EchoToken"/>
        </xsl:attribute>
      </xsl:if>
      <!-- a simple data mapping: "@PrimaryLangID"(language) to "PrimaryLangID"(language) -->
      <xsl:if test="@PrimaryLangID">
        <xsl:attribute name="PrimaryLangID">
          <xsl:value-of select="@PrimaryLangID"/>
        </xsl:attribute>
      </xsl:if>
      <!-- a simple data mapping: "@RetransmissionIndicator"(boolean) to "RetransmissionIndicator"(boolean) -->
      <xsl:if test="@RetransmissionIndicator">
        <xsl:attribute name="RetransmissionIndicator">
          <xsl:value-of select="@RetransmissionIndicator"/>
        </xsl:attribute>
      </xsl:if>
      <!-- a simple data mapping: "@SequenceNmbr"(nonNegativeInteger) to "SequenceNmbr"(nonNegativeInteger) -->
      <xsl:if test="@SequenceNmbr">
        <xsl:attribute name="SequenceNmbr">
          <xsl:value-of select="@SequenceNmbr"/>
        </xsl:attribute>
      </xsl:if>
      <!-- a simple data mapping: "@Target"(<NMTOKEN>) to "Target"(<NMTOKEN>) -->
      <xsl:if test="@Target">
        <xsl:attribute name="Target">
          <xsl:value-of select="@Target"/>
        </xsl:attribute>
      </xsl:if>
      <!-- a simple data mapping: "@TimeStamp"(dateTime) to "TimeStamp"(dateTime) -->
      <xsl:if test="@TimeStamp">
        <xsl:attribute name="TimeStamp">
          <xsl:value-of select="@TimeStamp"/>
        </xsl:attribute>
      </xsl:if>
      <!-- a simple data mapping: "@TransactionIdentifier"(StringLength1to32) to "TransactionIdentifier"(StringLength1to32) -->
      <xsl:if test="@TransactionIdentifier">
        <xsl:attribute name="TransactionIdentifier">
          <xsl:value-of select="@TransactionIdentifier"/>
        </xsl:attribute>
      </xsl:if>
      <!-- a simple data mapping: "@TransactionStatusCode"(<NMTOKEN>) to "TransactionStatusCode"(<NMTOKEN>) -->
      <xsl:if test="@TransactionStatusCode">
        <xsl:attribute name="TransactionStatusCode">
          <xsl:value-of select="@TransactionStatusCode"/>
        </xsl:attribute>
      </xsl:if>
      <!-- a simple data mapping: "@Version"(decimal) to "Version"(decimal) -->
      <xsl:attribute name="Version">
        <xsl:value-of select="@Version"/>
      </xsl:attribute>
      <!-- a structural mapping with no associated source:  to "io6:Success"(SuccessType) -->
      <io6:Success>
      </io6:Success>
      <io6:Warnings>
        <io6:Warning>
          <!-- a simple mapping with no associated source:  to "Code"(OTA_CodeType) -->
          <xsl:attribute name="Code">
            <xsl:value-of select="'9999'"/>
          </xsl:attribute>
          <!-- a simple mapping with no associated source:  to "ShortText"(StringLength1to64) -->
          <xsl:attribute name="ShortText">
            <xsl:value-of select="'Unexpected Error - Seaware is not Available'"/>
          </xsl:attribute>
          <!-- a simple mapping with no associated source:  to "Type"(OTA_CodeType) -->
          <xsl:attribute name="Type">
            <xsl:value-of select="'3'"/>
          </xsl:attribute>
        </io6:Warning>
      </io6:Warnings>
    </io6:NCL_CruiseUserAuthenticationAndRetrieveRS>
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
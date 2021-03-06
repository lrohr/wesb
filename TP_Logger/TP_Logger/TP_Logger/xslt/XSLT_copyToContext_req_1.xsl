<?xml version="1.0" encoding="UTF-8"?>
<!-- @generated mapFile="xslt/XSLT_copyToContext_req_1.map" md5sum="06b910dd71e6a632339bc39085d67f7c" version="7.5.100" -->
<!--
*****************************************************************************
*   This file has been generated by the IBM XML Mapping Editor.
*
*   Mapping file:		XSLT_copyToContext_req_1.map
*   Map declaration(s):	XSLT_copyToContext_req_1
*   Input file(s):		smo://smo/name%3Dwsdl-primary/correlationContext%3D%257Bhttp%253A%252F%252FTP_Logger%257DappContext/message%3D%257Bhttp%253A%252F%252FTP_Logger%252FTP_Interface%257DTP_InsertUpdateRequestMsg/xpath%3D%252F/smo.xsd
*   Output file(s):		smo://smo/name%3Dwsdl-primary/correlationContext%3D%257Bhttp%253A%252F%252FTP_Logger%257DappContext/xpath%3D%252F/smo.xsd
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
    xmlns:in="http://TP_Logger/TP_Interface"
    xmlns:in2="wsdl.http://TP_Logger/TP_Interface"
    xmlns:io="http://TP_Logger"
    xmlns:io2="http://www.w3.org/2003/05/soap-envelope"
    xmlns:io4="http://www.ibm.com/xmlns/prod/websphere/mq/sca/6.0.0"
    xmlns:io3="http://www.ibm.com/websphere/sibx/smo/v6.0.1"
    xmlns:io5="http://schemas.xmlsoap.org/ws/2004/08/addressing"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xmlns:io6="http://www.ibm.com/xmlns/prod/websphere/http/sca/6.1.0"
    xmlns:xs4xs="http://www.w3.org/2001/XMLSchema"
    xmlns:io7="http://www.w3.org/2005/08/addressing"
    xmlns:map="http://TP_Logger/xslt/XSLT_copyToContext_req_1"
    xmlns:msl="http://www.ibm.com/xmlmap"
    exclude-result-prefixes="in in2 str set math fn regexp dyn dp exsl date map xalan msl"
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
            <xsl:call-template name="map:XSLT_copyToContext_req_12">
              <xsl:with-param name="smo" select="msl:datamap/dataObject[1]"/>
            </xsl:call-template>
          </xsl:element>
        </msl:datamap>
      </xsl:when>
      <xsl:otherwise>
        <xsl:apply-templates select="io3:smo" mode="map:XSLT_copyToContext_req_1"/>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <!-- This rule represents an element mapping: "io3:smo" to "io3:smo".  -->
  <xsl:template match="io3:smo"  mode="map:XSLT_copyToContext_req_1">
    <io3:smo>
      <context>
        <correlation>
          <xsl:attribute name="xsi:type">
            <xsl:value-of select="'io:appContext'"/>
          </xsl:attribute>
          <!-- a simple data mapping: "body/in:TP_InsertUpdate/OPERATION_TYPE"(string) to "OPPERATION_TYPE"(string) -->
          <xsl:if test="body/in:TP_InsertUpdate/OPERATION_TYPE">
            <xsl:element name="OPPERATION_TYPE">
              <xsl:value-of select="body/in:TP_InsertUpdate/OPERATION_TYPE"/>
            </xsl:element>
          </xsl:if>
          <!-- a simple mapping with no associated source:  to "RECORD_ID"(string) -->
          <xsl:element name="RECORD_ID">
            <xsl:text>20120000000000000</xsl:text>
          </xsl:element>
          <!-- a simple data mapping: "body/in:TP_InsertUpdate/SOURCE_CD"(string) to "SOURCE_CD"(string) -->
          <xsl:if test="body/in:TP_InsertUpdate/SOURCE_CD">
            <xsl:element name="SOURCE_CD">
              <xsl:value-of select="body/in:TP_InsertUpdate/SOURCE_CD"/>
            </xsl:element>
          </xsl:if>
          <!-- a simple data mapping: "body/in:TP_InsertUpdate/REQUEST_TS"(Date_Format) to "REQUEST_TS"(Date_Format) -->
          <xsl:if test="body/in:TP_InsertUpdate/REQUEST_TS">
            <xsl:element name="REQUEST_TS">
              <xsl:value-of select="body/in:TP_InsertUpdate/REQUEST_TS"/>
            </xsl:element>
          </xsl:if>
          <!-- a simple data mapping: "body/in:TP_InsertUpdate/RESPONSE_TS"(Date_Format) to "RESPONSE_TS"(Date_Format) -->
          <xsl:if test="body/in:TP_InsertUpdate/RESPONSE_TS">
            <xsl:element name="RESPONSE_TS">
              <xsl:value-of select="body/in:TP_InsertUpdate/RESPONSE_TS"/>
            </xsl:element>
          </xsl:if>
          <!-- a simple data mapping: "body/in:TP_InsertUpdate/REQUEST_TYPE_CD"(string) to "REQUEST_TYPE_CD"(string) -->
          <xsl:if test="body/in:TP_InsertUpdate/REQUEST_TYPE_CD">
            <xsl:element name="REQUEST_TYPE_CD">
              <xsl:value-of select="body/in:TP_InsertUpdate/REQUEST_TYPE_CD"/>
            </xsl:element>
          </xsl:if>
          <!-- a simple data mapping: "body/in:TP_InsertUpdate/RESPONSE_TYPE_CD"(string) to "RESPONSE_TYPE_CD"(string) -->
          <xsl:if test="body/in:TP_InsertUpdate/RESPONSE_TYPE_CD">
            <xsl:element name="RESPONSE_TYPE_CD">
              <xsl:value-of select="body/in:TP_InsertUpdate/RESPONSE_TYPE_CD"/>
            </xsl:element>
          </xsl:if>
          <!-- a simple data mapping: "body/in:TP_InsertUpdate/XML"(string) to "XML"(string) -->
          <xsl:if test="body/in:TP_InsertUpdate/XML">
            <xsl:element name="XML">
              <xsl:value-of select="body/in:TP_InsertUpdate/XML"/>
            </xsl:element>
          </xsl:if>
        </correlation>
      </context>
    </io3:smo>
  </xsl:template>

  <!-- This rule represents a type mapping: "io3:smo" to "io3:smo".  -->
  <xsl:template name="map:XSLT_copyToContext_req_12">
    <xsl:param name="smo"/>
    <context>
      <correlation>
        <xsl:attribute name="xsi:type">
          <xsl:value-of select="'io:appContext'"/>
        </xsl:attribute>
        <!-- a simple data mapping: "$smo/body/in:TP_InsertUpdate/OPERATION_TYPE"(string) to "OPPERATION_TYPE"(string) -->
        <xsl:if test="$smo/body/in:TP_InsertUpdate/OPERATION_TYPE">
          <xsl:element name="OPPERATION_TYPE">
            <xsl:value-of select="$smo/body/in:TP_InsertUpdate/OPERATION_TYPE"/>
          </xsl:element>
        </xsl:if>
        <!-- a simple mapping with no associated source:  to "RECORD_ID"(string) -->
        <xsl:element name="RECORD_ID">
          <xsl:text>20120000000000000</xsl:text>
        </xsl:element>
        <!-- a simple data mapping: "$smo/body/in:TP_InsertUpdate/SOURCE_CD"(string) to "SOURCE_CD"(string) -->
        <xsl:if test="$smo/body/in:TP_InsertUpdate/SOURCE_CD">
          <xsl:element name="SOURCE_CD">
            <xsl:value-of select="$smo/body/in:TP_InsertUpdate/SOURCE_CD"/>
          </xsl:element>
        </xsl:if>
        <!-- a simple data mapping: "$smo/body/in:TP_InsertUpdate/REQUEST_TS"(Date_Format) to "REQUEST_TS"(Date_Format) -->
        <xsl:if test="$smo/body/in:TP_InsertUpdate/REQUEST_TS">
          <xsl:element name="REQUEST_TS">
            <xsl:value-of select="$smo/body/in:TP_InsertUpdate/REQUEST_TS"/>
          </xsl:element>
        </xsl:if>
        <!-- a simple data mapping: "$smo/body/in:TP_InsertUpdate/RESPONSE_TS"(Date_Format) to "RESPONSE_TS"(Date_Format) -->
        <xsl:if test="$smo/body/in:TP_InsertUpdate/RESPONSE_TS">
          <xsl:element name="RESPONSE_TS">
            <xsl:value-of select="$smo/body/in:TP_InsertUpdate/RESPONSE_TS"/>
          </xsl:element>
        </xsl:if>
        <!-- a simple data mapping: "$smo/body/in:TP_InsertUpdate/REQUEST_TYPE_CD"(string) to "REQUEST_TYPE_CD"(string) -->
        <xsl:if test="$smo/body/in:TP_InsertUpdate/REQUEST_TYPE_CD">
          <xsl:element name="REQUEST_TYPE_CD">
            <xsl:value-of select="$smo/body/in:TP_InsertUpdate/REQUEST_TYPE_CD"/>
          </xsl:element>
        </xsl:if>
        <!-- a simple data mapping: "$smo/body/in:TP_InsertUpdate/RESPONSE_TYPE_CD"(string) to "RESPONSE_TYPE_CD"(string) -->
        <xsl:if test="$smo/body/in:TP_InsertUpdate/RESPONSE_TYPE_CD">
          <xsl:element name="RESPONSE_TYPE_CD">
            <xsl:value-of select="$smo/body/in:TP_InsertUpdate/RESPONSE_TYPE_CD"/>
          </xsl:element>
        </xsl:if>
        <!-- a simple data mapping: "$smo/body/in:TP_InsertUpdate/XML"(string) to "XML"(string) -->
        <xsl:if test="$smo/body/in:TP_InsertUpdate/XML">
          <xsl:element name="XML">
            <xsl:value-of select="$smo/body/in:TP_InsertUpdate/XML"/>
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

<?xml version="1.0" encoding="UTF-8"?>
<!-- @generated mapFile="xslt/XSLTransformation3_req_1.map" md5sum="b35644bea58d424902cf633326c43d0a" version="7.6.100" -->
<!--
*****************************************************************************
*   This file has been generated by the IBM XML Mapping Editor.
*
*   Mapping file:		XSLTransformation3_req_1.map
*   Map declaration(s):	XSLTransformation3_req_1
*   Input file(s):		smo://smo/name%3Dwsdl-primary/correlationContext%3D%257Bhttp%253A%252F%252FNCL_CruiseCheckBookingStatus_Module%257DApp_context/message%3D%257Bhttp%253A%252F%252FTP_Logger%252FTP_Interface%257DTP_InsertUpdateRequestMsg/xpath%3D%252F/smo.xsd
*   Output file(s):		smo://smo/name%3Dwsdl-primary/correlationContext%3D%257Bhttp%253A%252F%252FNCL_CruiseCheckBookingStatus_Module%257DApp_context/message%3D%257Bhttp%253A%252F%252FNCL_WESB_Shared_Library%252FNCL_CruiseCheckBookingStatus_Interface%257DPerform_NCL_CruiseCheckBookingStatusResponseMsg/xpath%3D%252F/smo.xsd
*   XSLT import(s):   	XSLTransformation3_req_1_custom.xsl
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
    xmlns:out="http://NCL_WESB_Shared_Library/NCL_CruiseCheckBookingStatus_Interface"
    xmlns:io="http://www.w3.org/2003/05/soap-envelope"
    xmlns:io3="http://www.ibm.com/xmlns/prod/websphere/mq/sca/6.0.0"
    xmlns:io2="http://www.ibm.com/websphere/sibx/smo/v6.0.1"
    xmlns:out2="wsdl.http://NCL_WESB_Shared_Library/NCL_CruiseCheckBookingStatus_Interface"
    xmlns:io4="http://schemas.xmlsoap.org/ws/2004/08/addressing"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xmlns:io5="http://nclapi/schemas"
    xmlns:io6="http://www.ibm.com/xmlns/prod/websphere/http/sca/6.1.0"
    xmlns:io7="http://NCL_CruiseCheckBookingStatus_Module"
    xmlns:xs4xs="http://www.w3.org/2001/XMLSchema"
    xmlns:io8="http://www.w3.org/2005/08/addressing"
    xmlns:map="http://NCL_CruiseCheckBookingStatus_Module/xslt/XSLTransformation3_req_1"
    xmlns:msl="http://www.ibm.com/xmlmap"
    exclude-result-prefixes="in in2 str set math fn regexp dyn dp exsl date map xalan msl"
    version="1.0">

  <!-- imports  -->
  <xsl:import href="XSLTransformation3_req_1_custom.xsl"/>
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
            <xsl:call-template name="map:XSLTransformation3_req_12">
              <xsl:with-param name="smo" select="msl:datamap/dataObject[1]"/>
            </xsl:call-template>
          </xsl:element>
        </msl:datamap>
      </xsl:when>
      <xsl:otherwise>
        <xsl:apply-templates select="io2:smo" mode="map:XSLTransformation3_req_1"/>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <!-- This rule represents an element mapping: "io2:smo" to "io2:smo".  -->
  <xsl:template match="io2:smo"  mode="map:XSLTransformation3_req_1">
    <io2:smo>
      <context>
        <correlation>
          <xsl:attribute name="xsi:type">
            <xsl:value-of select="'io7:App_context'"/>
          </xsl:attribute>
          <!-- a structural mapping: "context/correlation/io5:NCL_CruiseCheckBookingStatusRQ"(<Anonymous>) to "io5:NCL_CruiseCheckBookingStatusRQ"(<Anonymous>) -->
          <xsl:if test="context/correlation/io5:NCL_CruiseCheckBookingStatusRQ">
            <xsl:copy-of select="context/correlation/io5:NCL_CruiseCheckBookingStatusRQ"/>
          </xsl:if>
          <!-- a simple data mapping: "context/correlation/LogID"(string) to "LogID"(string) -->
          <xsl:if test="context/correlation/LogID">
            <xsl:element name="LogID">
              <xsl:value-of select="context/correlation/LogID"/>
            </xsl:element>
          </xsl:if>
          <!-- a simple data mapping: "context/correlation/Res_ID"(string) to "Res_ID"(string) -->
          <xsl:if test="context/correlation/Res_ID">
            <xsl:element name="Res_ID">
              <xsl:value-of select="context/correlation/Res_ID"/>
            </xsl:element>
          </xsl:if>
        </correlation>
      </context>
      <xsl:element name="body">
        <xsl:attribute name="xsi:type">
          <xsl:value-of select="'out2:Perform_NCL_CruiseCheckBookingStatusResponseMsg'"/>
        </xsl:attribute>
        <xsl:element name="out:Perform_NCL_CruiseCheckBookingStatusResponse">
          <xsl:element name="io5:NCL_CruiseCheckBookingStatusRS">
            <!-- a simple data mapping: "context/correlation/io5:NCL_CruiseCheckBookingStatusRQ/@TransactionIdentifier"(StringLength1to32) to "TransactionIdentifier"(StringLength1to32) -->
            <xsl:if test="context/correlation/io5:NCL_CruiseCheckBookingStatusRQ/@TransactionIdentifier">
              <xsl:attribute name="TransactionIdentifier">
                <xsl:value-of select="context/correlation/io5:NCL_CruiseCheckBookingStatusRQ/@TransactionIdentifier"/>
              </xsl:attribute>
            </xsl:if>
            <!-- a simple data mapping: "context/correlation/io5:NCL_CruiseCheckBookingStatusRQ/@Version"(decimal) to "Version"(decimal) -->
            <xsl:attribute name="Version">
              <xsl:value-of select="context/correlation/io5:NCL_CruiseCheckBookingStatusRQ/@Version"/>
            </xsl:attribute>
            <!-- a structural mapping with no associated source:  to "io5:Success"(SuccessType) -->
            <xsl:element name="io5:Success">
              <xsl:call-template name="ToSuccess"/>
            </xsl:element>
          </xsl:element>
        </xsl:element>
      </xsl:element>
    </io2:smo>
  </xsl:template>

  <!-- This rule represents a type mapping: "io2:smo" to "io2:smo".  -->
  <xsl:template name="map:XSLTransformation3_req_12">
    <xsl:param name="smo"/>
    <context>
      <correlation>
        <xsl:attribute name="xsi:type">
          <xsl:value-of select="'io7:App_context'"/>
        </xsl:attribute>
        <!-- a structural mapping: "$smo/context/correlation/io5:NCL_CruiseCheckBookingStatusRQ"(<Anonymous>) to "io5:NCL_CruiseCheckBookingStatusRQ"(<Anonymous>) -->
        <xsl:if test="$smo/context/correlation/io5:NCL_CruiseCheckBookingStatusRQ">
          <xsl:copy-of select="$smo/context/correlation/io5:NCL_CruiseCheckBookingStatusRQ"/>
        </xsl:if>
        <!-- a simple data mapping: "$smo/context/correlation/LogID"(string) to "LogID"(string) -->
        <xsl:if test="$smo/context/correlation/LogID">
          <xsl:element name="LogID">
            <xsl:value-of select="$smo/context/correlation/LogID"/>
          </xsl:element>
        </xsl:if>
        <!-- a simple data mapping: "$smo/context/correlation/Res_ID"(string) to "Res_ID"(string) -->
        <xsl:if test="$smo/context/correlation/Res_ID">
          <xsl:element name="Res_ID">
            <xsl:value-of select="$smo/context/correlation/Res_ID"/>
          </xsl:element>
        </xsl:if>
      </correlation>
    </context>
    <xsl:element name="body">
      <xsl:attribute name="xsi:type">
        <xsl:value-of select="'out2:Perform_NCL_CruiseCheckBookingStatusResponseMsg'"/>
      </xsl:attribute>
      <xsl:element name="out:Perform_NCL_CruiseCheckBookingStatusResponse">
        <xsl:element name="io5:NCL_CruiseCheckBookingStatusRS">
          <!-- a simple data mapping: "$smo/context/correlation/io5:NCL_CruiseCheckBookingStatusRQ/@TransactionIdentifier"(StringLength1to32) to "TransactionIdentifier"(StringLength1to32) -->
          <xsl:if test="$smo/context/correlation/io5:NCL_CruiseCheckBookingStatusRQ/@TransactionIdentifier">
            <xsl:attribute name="TransactionIdentifier">
              <xsl:value-of select="$smo/context/correlation/io5:NCL_CruiseCheckBookingStatusRQ/@TransactionIdentifier"/>
            </xsl:attribute>
          </xsl:if>
          <!-- a simple data mapping: "$smo/context/correlation/io5:NCL_CruiseCheckBookingStatusRQ/@Version"(decimal) to "Version"(decimal) -->
          <xsl:attribute name="Version">
            <xsl:value-of select="$smo/context/correlation/io5:NCL_CruiseCheckBookingStatusRQ/@Version"/>
          </xsl:attribute>
          <!-- a structural mapping with no associated source:  to "io5:Success"(SuccessType) -->
          <xsl:element name="io5:Success">
            <xsl:call-template name="ToSuccess"/>
          </xsl:element>
        </xsl:element>
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

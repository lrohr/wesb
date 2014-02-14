<?xml version="1.0" encoding="UTF-8"?>
<!-- @generated mapFile="xslt/XSLT_intoCtx_req_1.map" md5sum="4734db9f85d2b1aa5b0764df133806d8" version="7.6.100" -->
<!--
*****************************************************************************
*   This file has been generated by the IBM XML Mapping Editor.
*
*   Mapping file:		XSLT_intoCtx_req_1.map
*   Map declaration(s):	XSLT_intoCtx_req_1
*   Input file(s):		smo://smo/name%3Dwsdl-primary/correlationContext%3D%257Bhttp%253A%252F%252FGeneric_Service%257DApp_Context/message%3D%257Bhttp%253A%252F%252FGeneric_Service%252FGeneric%257DRequest_ResponseRequestMsg/xpath%3D%252F/smo.xsd
*   Output file(s):		smo://smo/name%3Dwsdl-primary/correlationContext%3D%257Bhttp%253A%252F%252FGeneric_Service%257DApp_Context/message%3D%257Bhttp%253A%252F%252FGeneric_Service%252FEmailServiceImport%257DsendSimpleAlertEmailRequestMsg/xpath%3D%252F/smo.xsd
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
    xmlns:in="http://Generic_Service/Generic"
    xmlns:in2="wsdl.http://Generic_Service/Generic"
    xmlns:xml="http://www.w3.org/XML/1998/namespace"
    xmlns:out="http://Generic_Service/EmailServiceImport"
    xmlns:io="http://www.w3.org/2003/05/soap-envelope"
    xmlns:io3="http://www.ibm.com/xmlns/prod/websphere/mq/sca/6.0.0"
    xmlns:io2="http://www.ibm.com/websphere/sibx/smo/v6.0.1"
    xmlns:io4="http://schemas.xmlsoap.org/ws/2004/08/addressing"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xmlns:out2="wsdl.http://Generic_Service/EmailServiceImport"
    xmlns:io5="http://www.ibm.com/xmlns/prod/websphere/http/sca/6.1.0"
    xmlns:io6="http://Generic_Service"
    xmlns:out3="http://www.ibm.com/xmlns/prod/websphere/j2ca/email/simplealertemail"
    xmlns:xs4xs="http://www.w3.org/2001/XMLSchema"
    xmlns:io7="http://www.w3.org/2005/08/addressing"
    xmlns:map="http://Generic_Service/xslt/XSLT_intoCtx_req_1"
    xmlns:msl="http://www.ibm.com/xmlmap"
    exclude-result-prefixes="in in2 xml str set math fn regexp dyn dp exsl date map xalan msl"
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
            <xsl:call-template name="map:XSLT_intoCtx_req_12">
              <xsl:with-param name="smo" select="msl:datamap/dataObject[1]"/>
            </xsl:call-template>
          </xsl:element>
        </msl:datamap>
      </xsl:when>
      <xsl:otherwise>
        <xsl:apply-templates select="io2:smo" mode="map:XSLT_intoCtx_req_1"/>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <!-- This rule represents an element mapping: "io2:smo" to "io2:smo".  -->
  <xsl:template match="io2:smo"  mode="map:XSLT_intoCtx_req_1">
    <io2:smo>
      <context>
        <correlation>
          <xsl:attribute name="xsi:type">
            <xsl:value-of select="'io6:App_Context'"/>
          </xsl:attribute>
          <!-- a simple data mapping: "body/in:Request_Response/message"(string) to "request"(string) -->
          <xsl:if test="body/in:Request_Response/message">
            <xsl:element name="request">
              <xsl:value-of select="body/in:Request_Response/message"/>
            </xsl:element>
          </xsl:if>
          <!-- a simple data mapping: "context/failInfo/@xml:lang"(<Anonymous>) to "failinfo_lang"(string) -->
          <xsl:if test="context/failInfo/@xml:lang">
            <xsl:element name="failinfo_lang">
              <xsl:value-of select="context/failInfo/@xml:lang"/>
            </xsl:element>
          </xsl:if>
          <!-- a simple data mapping: "context/failInfo/failureString"(string) to "fainInfo_failureString"(string) -->
          <xsl:if test="context/failInfo/failureString">
            <xsl:element name="fainInfo_failureString">
              <xsl:value-of select="context/failInfo/failureString"/>
            </xsl:element>
          </xsl:if>
          <!-- a simple data mapping: "context/failInfo/origin"(string) to "failInfo_Origin"(string) -->
          <xsl:if test="context/failInfo/origin">
            <xsl:element name="failInfo_Origin">
              <xsl:value-of select="context/failInfo/origin"/>
            </xsl:element>
          </xsl:if>
        </correlation>
      </context>
      <xsl:element name="body">
        <xsl:attribute name="xsi:type">
          <xsl:value-of select="'out2:sendSimpleAlertEmailRequestMsg'"/>
        </xsl:attribute>
        <xsl:element name="out:sendSimpleAlertEmail">
          <xsl:element name="out:sendSimpleAlertEmailInput">
            <!-- a simple mapping with no associated source:  to "To"(string) -->
            <xsl:element name="To">
              <xsl:text>esbteam@ncl.com</xsl:text>
            </xsl:element>
            <!-- a simple mapping with no associated source:  to "From"(string) -->
            <xsl:element name="From">
              <xsl:text>esbmon@ncl.com</xsl:text>
            </xsl:element>
            <!-- a simple mapping with no associated source:  to "Subject"(string) -->
            <xsl:element name="Subject">
              <xsl:text>Error in to Ctx</xsl:text>
            </xsl:element>
            <!-- a simple data mapping: "context/failInfo/failureString"(string) to "mailContent"(string) -->
            <xsl:if test="context/failInfo/failureString">
              <xsl:element name="mailContent">
                <xsl:value-of select="concat(' :', context/failInfo/failureString, ' :', body/in:Request_Response/message, ' :', ' :')"/>
              </xsl:element>
            </xsl:if>
          </xsl:element>
        </xsl:element>
      </xsl:element>
    </io2:smo>
  </xsl:template>

  <!-- This rule represents a type mapping: "io2:smo" to "io2:smo".  -->
  <xsl:template name="map:XSLT_intoCtx_req_12">
    <xsl:param name="smo"/>
    <context>
      <correlation>
        <xsl:attribute name="xsi:type">
          <xsl:value-of select="'io6:App_Context'"/>
        </xsl:attribute>
        <!-- a simple data mapping: "$smo/body/in:Request_Response/message"(string) to "request"(string) -->
        <xsl:if test="$smo/body/in:Request_Response/message">
          <xsl:element name="request">
            <xsl:value-of select="$smo/body/in:Request_Response/message"/>
          </xsl:element>
        </xsl:if>
        <!-- a simple data mapping: "$smo/context/failInfo/@xml:lang"(<Anonymous>) to "failinfo_lang"(string) -->
        <xsl:if test="$smo/context/failInfo/@xml:lang">
          <xsl:element name="failinfo_lang">
            <xsl:value-of select="$smo/context/failInfo/@xml:lang"/>
          </xsl:element>
        </xsl:if>
        <!-- a simple data mapping: "$smo/context/failInfo/failureString"(string) to "fainInfo_failureString"(string) -->
        <xsl:if test="$smo/context/failInfo/failureString">
          <xsl:element name="fainInfo_failureString">
            <xsl:value-of select="$smo/context/failInfo/failureString"/>
          </xsl:element>
        </xsl:if>
        <!-- a simple data mapping: "$smo/context/failInfo/origin"(string) to "failInfo_Origin"(string) -->
        <xsl:if test="$smo/context/failInfo/origin">
          <xsl:element name="failInfo_Origin">
            <xsl:value-of select="$smo/context/failInfo/origin"/>
          </xsl:element>
        </xsl:if>
      </correlation>
    </context>
    <xsl:element name="body">
      <xsl:attribute name="xsi:type">
        <xsl:value-of select="'out2:sendSimpleAlertEmailRequestMsg'"/>
      </xsl:attribute>
      <xsl:element name="out:sendSimpleAlertEmail">
        <xsl:element name="out:sendSimpleAlertEmailInput">
          <!-- a simple mapping with no associated source:  to "To"(string) -->
          <xsl:element name="To">
            <xsl:text>esbteam@ncl.com</xsl:text>
          </xsl:element>
          <!-- a simple mapping with no associated source:  to "From"(string) -->
          <xsl:element name="From">
            <xsl:text>esbmon@ncl.com</xsl:text>
          </xsl:element>
          <!-- a simple mapping with no associated source:  to "Subject"(string) -->
          <xsl:element name="Subject">
            <xsl:text>Error in to Ctx</xsl:text>
          </xsl:element>
          <!-- a simple data mapping: "$smo/context/failInfo/failureString"(string) to "mailContent"(string) -->
          <xsl:if test="$smo/context/failInfo/failureString">
            <xsl:element name="mailContent">
              <xsl:value-of select="concat(' :', $smo/context/failInfo/failureString, ' :', $smo/body/in:Request_Response/message, ' :', ' :')"/>
            </xsl:element>
          </xsl:if>
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

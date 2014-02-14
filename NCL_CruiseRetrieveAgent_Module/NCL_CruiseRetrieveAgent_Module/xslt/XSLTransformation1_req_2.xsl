<?xml version="1.0" encoding="UTF-8"?>
<!-- @generated mapFile="xslt/XSLTransformation1_req_2.map" md5sum="4fa5d9dea41e6ea6214a661ea468493d" version="7.6.100" -->
<!--
*****************************************************************************
*   This file has been generated by the IBM XML Mapping Editor.
*
*   Mapping file:		XSLTransformation1_req_2.map
*   Map declaration(s):	XSLTransformation1_req_2
*   Input file(s):		smo://smo/name%3Dwsdl-primary/correlationContext%3D%257Bhttp%253A%252F%252FNCL_CruiseRetrieveAgent_Module%257DappContext/message%3D%257Bhttp%253A%252F%252FNCL_CruiseRetrieveAgent_Module%252FJDBCOutboundInterface%257DexecuteNclseaNcl_Wesb_Get_Agent_With_PagedRequestMsg/xpath%3D%252F/smo.xsd
*   Output file(s):		smo://smo/name%3Dwsdl-primary/correlationContext%3D%257Bhttp%253A%252F%252FNCL_CruiseRetrieveAgent_Module%257DappContext/message%3D%257Bhttp%253A%252F%252FNCL_WESB_Shared_Library%252FNCL_CruiseRetrieveAgent_Interface%257DPerform_NCL_CruiseRetrieveAgentResponseMsg/xpath%3D%252F/smo.xsd
*   XSLT import(s):   	XSLTransformation1_req_2_custom.xsl
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
    xmlns:in7="wsdl.http://NCL_CruiseRetrieveAgent_Module/JDBCOutboundInterface"
    xmlns:in="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_get_agent_with_paging"
    xmlns:in2="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_get_agy_for_agtreq"
    xmlns:in8="http://NCL_CruiseRetrieveAgent_Module/JDBCOutboundInterface"
    xmlns:in3="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_get_agent_with_pagingp_cursor"
    xmlns:in4="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_get_agent_with_paged"
    xmlns:in5="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_get_agy_for_agtreqp_cursor"
    xmlns:in6="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_get_agent_with_pagedp_cursor"
    xmlns:out="http://NCL_WESB_Shared_Library/NCL_CruiseRetrieveAgent_Interface"
    xmlns:io="http://NCL_CruiseRetrieveAgent_Module"
    xmlns:io2="http://www.w3.org/2003/05/soap-envelope"
    xmlns:io4="http://www.ibm.com/xmlns/prod/websphere/mq/sca/6.0.0"
    xmlns:io3="http://www.ibm.com/websphere/sibx/smo/v6.0.1"
    xmlns:io5="http://schemas.xmlsoap.org/ws/2004/08/addressing"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xmlns:io7="http://www.ibm.com/xmlns/prod/websphere/http/sca/6.1.0"
    xmlns:io6="http://nclapi/schemas"
    xmlns:out2="wsdl.http://NCL_WESB_Shared_Library/NCL_CruiseRetrieveAgent_Interface"
    xmlns:xs4xs="http://www.w3.org/2001/XMLSchema"
    xmlns:io8="http://www.w3.org/2005/08/addressing"
    xmlns:map="http://NCL_CruiseRetrieveAgent_Module/xslt/XSLTransformation1_req_2"
    xmlns:msl="http://www.ibm.com/xmlmap"
    exclude-result-prefixes="in7 in in2 in8 in3 in4 in5 in6 str set math fn regexp dyn dp exsl date map xalan msl"
    version="1.0">

  <!-- imports  -->
  <xsl:import href="XSLTransformation1_req_2_custom.xsl"/>
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
            <xsl:call-template name="map:XSLTransformation1_req_22">
              <xsl:with-param name="smo" select="msl:datamap/dataObject[1]"/>
            </xsl:call-template>
          </xsl:element>
        </msl:datamap>
      </xsl:when>
      <xsl:otherwise>
        <xsl:apply-templates select="io3:smo" mode="map:XSLTransformation1_req_2"/>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <!-- This rule represents an element mapping: "io3:smo" to "io3:smo".  -->
  <xsl:template match="io3:smo"  mode="map:XSLTransformation1_req_2">
    <io3:smo>
      <context>
        <correlation>
          <xsl:attribute name="xsi:type">
            <xsl:value-of select="'io:appContext'"/>
          </xsl:attribute>
          <!-- a simple data mapping: "context/correlation/logId"(string) to "logId"(string) -->
          <xsl:if test="context/correlation/logId">
            <xsl:element name="logId">
              <xsl:value-of select="context/correlation/logId"/>
            </xsl:element>
          </xsl:if>
          <!-- a structural mapping: "context/correlation/io6:NCL_CruiseRetrieveAgentRQ"(<Anonymous>) to "io6:NCL_CruiseRetrieveAgentRQ"(<Anonymous>) -->
          <xsl:if test="context/correlation/io6:NCL_CruiseRetrieveAgentRQ">
            <xsl:copy-of select="context/correlation/io6:NCL_CruiseRetrieveAgentRQ"/>
          </xsl:if>
        </correlation>
      </context>
      <xsl:element name="body">
        <xsl:attribute name="xsi:type">
          <xsl:value-of select="'out2:Perform_NCL_CruiseRetrieveAgentResponseMsg'"/>
        </xsl:attribute>
        <xsl:element name="out:Perform_NCL_CruiseRetrieveAgentResponse">
          <xsl:element name="io6:NCL_CruiseRetrieveAgentRS">
            <!-- a simple data mapping: "context/correlation/io6:NCL_CruiseRetrieveAgentRQ/@TransactionIdentifier"(StringLength1to32) to "TransactionIdentifier"(StringLength1to32) -->
            <xsl:if test="context/correlation/io6:NCL_CruiseRetrieveAgentRQ/@TransactionIdentifier">
              <xsl:attribute name="TransactionIdentifier">
                <xsl:value-of select="context/correlation/io6:NCL_CruiseRetrieveAgentRQ/@TransactionIdentifier"/>
              </xsl:attribute>
            </xsl:if>
            <!-- a simple mapping with no associated source:  to "io6:Success"(string) -->
            <xsl:element name="io6:Success">
              <xsl:call-template name="ToSuccess"/>
            </xsl:element>
            <xsl:element name="io6:Warnings">
              <xsl:element name="io6:Warning">
                <!-- a simple mapping with no associated source:  to "Code"(OTA_CodeType) -->
                <xsl:attribute name="Code">
                  <xsl:value-of select="'9915'"/>
                </xsl:attribute>
                <!-- a simple mapping with no associated source:  to "ShortText"(StringLength1to64) -->
                <xsl:attribute name="ShortText">
                  <xsl:value-of select="'invalid input or SEAP not available'"/>
                </xsl:attribute>
              </xsl:element>
            </xsl:element>
          </xsl:element>
        </xsl:element>
      </xsl:element>
    </io3:smo>
  </xsl:template>

  <!-- This rule represents a type mapping: "io3:smo" to "io3:smo".  -->
  <xsl:template name="map:XSLTransformation1_req_22">
    <xsl:param name="smo"/>
    <context>
      <correlation>
        <xsl:attribute name="xsi:type">
          <xsl:value-of select="'io:appContext'"/>
        </xsl:attribute>
        <!-- a simple data mapping: "$smo/context/correlation/logId"(string) to "logId"(string) -->
        <xsl:if test="$smo/context/correlation/logId">
          <xsl:element name="logId">
            <xsl:value-of select="$smo/context/correlation/logId"/>
          </xsl:element>
        </xsl:if>
        <!-- a structural mapping: "$smo/context/correlation/io6:NCL_CruiseRetrieveAgentRQ"(<Anonymous>) to "io6:NCL_CruiseRetrieveAgentRQ"(<Anonymous>) -->
        <xsl:if test="$smo/context/correlation/io6:NCL_CruiseRetrieveAgentRQ">
          <xsl:copy-of select="$smo/context/correlation/io6:NCL_CruiseRetrieveAgentRQ"/>
        </xsl:if>
      </correlation>
    </context>
    <xsl:element name="body">
      <xsl:attribute name="xsi:type">
        <xsl:value-of select="'out2:Perform_NCL_CruiseRetrieveAgentResponseMsg'"/>
      </xsl:attribute>
      <xsl:element name="out:Perform_NCL_CruiseRetrieveAgentResponse">
        <xsl:element name="io6:NCL_CruiseRetrieveAgentRS">
          <!-- a simple data mapping: "$smo/context/correlation/io6:NCL_CruiseRetrieveAgentRQ/@TransactionIdentifier"(StringLength1to32) to "TransactionIdentifier"(StringLength1to32) -->
          <xsl:if test="$smo/context/correlation/io6:NCL_CruiseRetrieveAgentRQ/@TransactionIdentifier">
            <xsl:attribute name="TransactionIdentifier">
              <xsl:value-of select="$smo/context/correlation/io6:NCL_CruiseRetrieveAgentRQ/@TransactionIdentifier"/>
            </xsl:attribute>
          </xsl:if>
          <!-- a simple mapping with no associated source:  to "io6:Success"(string) -->
          <xsl:element name="io6:Success">
            <xsl:call-template name="ToSuccess"/>
          </xsl:element>
          <xsl:element name="io6:Warnings">
            <xsl:element name="io6:Warning">
              <!-- a simple mapping with no associated source:  to "Code"(OTA_CodeType) -->
              <xsl:attribute name="Code">
                <xsl:value-of select="'9915'"/>
              </xsl:attribute>
              <!-- a simple mapping with no associated source:  to "ShortText"(StringLength1to64) -->
              <xsl:attribute name="ShortText">
                <xsl:value-of select="'invalid input or SEAP not available'"/>
              </xsl:attribute>
            </xsl:element>
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
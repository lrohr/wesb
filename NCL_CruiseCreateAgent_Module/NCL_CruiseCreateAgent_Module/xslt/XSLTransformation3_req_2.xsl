<?xml version="1.0" encoding="UTF-8"?>
<!-- @generated mapFile="xslt/XSLTransformation3_req_2.map" md5sum="549832408b566da1fa8c08a262bcb04c" version="7.6.100" -->
<!--
*****************************************************************************
*   This file has been generated by the IBM XML Mapping Editor.
*
*   Mapping file:		XSLTransformation3_req_2.map
*   Map declaration(s):	XSLTransformation3_req_2
*   Input file(s):		smo://smo/name%3Dwsdl-primary/correlationContext%3D%257Bhttp%253A%252F%252FAgent_Create_Update%257Dapp_context/message%3D%257Bhttp%253A%252F%252FAgent_Create_Update%252FDB_AGent_createupdate%257DexecuteNclseaNcl_Wesb_Create_AgentBGRequestMsg/xpath%3D%252F/smo.xsd
*   Output file(s):		smo://smo/name%3Dwsdl-primary/correlationContext%3D%257Bhttp%253A%252F%252FAgent_Create_Update%257Dapp_context/message%3D%257Bhttp%253A%252F%252FNCL_WESB_Shared_Library%252FNCL_CruiseCreateAgent_Interface%257DPerform_NCL_CruiseCreateAgentResponseMsg/xpath%3D%252F/smo.xsd
*   XSLT import(s):   	XSLTransformation3_req_2_custom.xsl
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
    xmlns:in="http://Agent_Create_Update/DB_AGent_createupdate"
    xmlns:in2="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_create_agent"
    xmlns:in3="http://www.ibm.com/xmlns/prod/websphere/bo/6.0.0"
    xmlns:in4="wsdl.http://Agent_Create_Update/DB_AGent_createupdate"
    xmlns:in5="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_create_agentbg"
    xmlns:out="http://NCL_WESB_Shared_Library/NCL_CruiseCreateAgent_Interface"
    xmlns:io="http://Agent_Create_Update"
    xmlns:io2="http://www.w3.org/2003/05/soap-envelope"
    xmlns:io4="http://www.ibm.com/xmlns/prod/websphere/mq/sca/6.0.0"
    xmlns:io3="http://www.ibm.com/websphere/sibx/smo/v6.0.1"
    xmlns:io5="http://schemas.xmlsoap.org/ws/2004/08/addressing"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xmlns:io7="http://www.ibm.com/xmlns/prod/websphere/http/sca/6.1.0"
    xmlns:io6="http://nclapi/schemas"
    xmlns:out2="wsdl.http://NCL_WESB_Shared_Library/NCL_CruiseCreateAgent_Interface"
    xmlns:xs4xs="http://www.w3.org/2001/XMLSchema"
    xmlns:io8="http://www.w3.org/2005/08/addressing"
    xmlns:map="http://NCL_CruiseCreateAgent_Module/xslt/XSLTransformation3_req_2"
    xmlns:msl="http://www.ibm.com/xmlmap"
    exclude-result-prefixes="in in2 in3 in4 in5 str set math fn regexp dyn dp exsl date map xalan msl"
    version="1.0">

  <!-- imports  -->
  <xsl:import href="XSLTransformation3_req_2_custom.xsl"/>
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
            <xsl:call-template name="map:XSLTransformation3_req_22">
              <xsl:with-param name="smo" select="msl:datamap/dataObject[1]"/>
            </xsl:call-template>
          </xsl:element>
        </msl:datamap>
      </xsl:when>
      <xsl:otherwise>
        <xsl:apply-templates select="io3:smo" mode="map:XSLTransformation3_req_2"/>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <!-- This rule represents an element mapping: "io3:smo" to "io3:smo".  -->
  <xsl:template match="io3:smo"  mode="map:XSLTransformation3_req_2">
    <io3:smo>
      <context>
        <correlation>
          <xsl:attribute name="xsi:type">
            <xsl:value-of select="'io:app_context'"/>
          </xsl:attribute>
          <!-- a structural mapping: "context/correlation/io6:NCL_CruiseCreateAgentRQ"(<Anonymous>) to "io6:NCL_CruiseCreateAgentRQ"(<Anonymous>) -->
          <xsl:if test="context/correlation/io6:NCL_CruiseCreateAgentRQ">
            <xsl:copy-of select="context/correlation/io6:NCL_CruiseCreateAgentRQ"/>
          </xsl:if>
          <!-- a simple data mapping: "context/correlation/LogID"(string) to "LogID"(string) -->
          <xsl:if test="context/correlation/LogID">
            <xsl:element name="LogID">
              <xsl:value-of select="context/correlation/LogID"/>
            </xsl:element>
          </xsl:if>
        </correlation>
      </context>
      <xsl:element name="body">
        <xsl:attribute name="xsi:type">
          <xsl:value-of select="'out2:Perform_NCL_CruiseCreateAgentResponseMsg'"/>
        </xsl:attribute>
        <xsl:element name="out:Perform_NCL_CruiseCreateAgentResponse">
          <xsl:element name="io6:NCL_CruiseCreateAgentRS">
            <!-- a simple data mapping: "context/correlation/io6:NCL_CruiseCreateAgentRQ/@TransactionIdentifier"(StringLength1to32) to "TransactionIdentifier"(StringLength1to32) -->
            <xsl:if test="context/correlation/io6:NCL_CruiseCreateAgentRQ/@TransactionIdentifier">
              <xsl:attribute name="TransactionIdentifier">
                <xsl:value-of select="context/correlation/io6:NCL_CruiseCreateAgentRQ/@TransactionIdentifier"/>
              </xsl:attribute>
            </xsl:if>
            <!-- a structural mapping with no associated source:  to "io6:Success"(SuccessType) -->
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
                  <xsl:value-of select="'database timeout'"/>
                </xsl:attribute>
              </xsl:element>
            </xsl:element>
          </xsl:element>
        </xsl:element>
      </xsl:element>
    </io3:smo>
  </xsl:template>

  <!-- This rule represents a type mapping: "io3:smo" to "io3:smo".  -->
  <xsl:template name="map:XSLTransformation3_req_22">
    <xsl:param name="smo"/>
    <context>
      <correlation>
        <xsl:attribute name="xsi:type">
          <xsl:value-of select="'io:app_context'"/>
        </xsl:attribute>
        <!-- a structural mapping: "$smo/context/correlation/io6:NCL_CruiseCreateAgentRQ"(<Anonymous>) to "io6:NCL_CruiseCreateAgentRQ"(<Anonymous>) -->
        <xsl:if test="$smo/context/correlation/io6:NCL_CruiseCreateAgentRQ">
          <xsl:copy-of select="$smo/context/correlation/io6:NCL_CruiseCreateAgentRQ"/>
        </xsl:if>
        <!-- a simple data mapping: "$smo/context/correlation/LogID"(string) to "LogID"(string) -->
        <xsl:if test="$smo/context/correlation/LogID">
          <xsl:element name="LogID">
            <xsl:value-of select="$smo/context/correlation/LogID"/>
          </xsl:element>
        </xsl:if>
      </correlation>
    </context>
    <xsl:element name="body">
      <xsl:attribute name="xsi:type">
        <xsl:value-of select="'out2:Perform_NCL_CruiseCreateAgentResponseMsg'"/>
      </xsl:attribute>
      <xsl:element name="out:Perform_NCL_CruiseCreateAgentResponse">
        <xsl:element name="io6:NCL_CruiseCreateAgentRS">
          <!-- a simple data mapping: "$smo/context/correlation/io6:NCL_CruiseCreateAgentRQ/@TransactionIdentifier"(StringLength1to32) to "TransactionIdentifier"(StringLength1to32) -->
          <xsl:if test="$smo/context/correlation/io6:NCL_CruiseCreateAgentRQ/@TransactionIdentifier">
            <xsl:attribute name="TransactionIdentifier">
              <xsl:value-of select="$smo/context/correlation/io6:NCL_CruiseCreateAgentRQ/@TransactionIdentifier"/>
            </xsl:attribute>
          </xsl:if>
          <!-- a structural mapping with no associated source:  to "io6:Success"(SuccessType) -->
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
                <xsl:value-of select="'database timeout'"/>
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

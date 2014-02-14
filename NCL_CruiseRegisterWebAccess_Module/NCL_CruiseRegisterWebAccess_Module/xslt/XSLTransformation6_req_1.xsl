<?xml version="1.0" encoding="UTF-8"?>
<!-- @generated mapFile="xslt/XSLTransformation6_req_1.map" md5sum="10d69d7de6bff7faa57f9d714fccec12" version="7.6.100" -->
<!--
*****************************************************************************
*   This file has been generated by the IBM XML Mapping Editor.
*
*   Mapping file:		XSLTransformation6_req_1.map
*   Map declaration(s):	XSLTransformation6_req_1
*   Input file(s):		smo://smo/name%3Dwsdl-primary/correlationContext%3D%257Bhttp%253A%252F%252FNCL_CruiseRegisterWebAccess_Module%257Dapp_context/message%3D%257Bhttp%253A%252F%252FNCL_WESB_Shared_Library%252FEncrypt_Decrypt_Interface%257DprocessEncryptDecryptResponse/xpath%3D%252F/smo.xsd
*   Output file(s):		smo://smo/name%3Dwsdl-primary/correlationContext%3D%257Bhttp%253A%252F%252FNCL_CruiseRegisterWebAccess_Module%257Dapp_context/message%3D%257Bhttp%253A%252F%252FNCL_CruiseRegisterWebAccess_Module%252FDB_LOOKUP%257DexecuteNclseaNcl_Wesb_Create_AgentBGRequestMsg/xpath%3D%252F/smo.xsd
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
    xmlns:in="wsdl.http://NCL_WESB_Shared_Library/Encrypt_Decrypt_Interface"
    xmlns:in2="http://NCL_WESB_Shared_Library/Encrypt_Decrypt_Interface"
    xmlns:io="http://www.w3.org/2003/05/soap-envelope"
    xmlns:io2="http://www.ibm.com/websphere/sibx/smo/v6.0.1"
    xmlns:io3="http://NCL_CruiseRegisterWebAccess_Module"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xmlns:out="wsdl.http://NCL_CruiseRegisterWebAccess_Module/DB_LOOKUP"
    xmlns:out2="http://NCL_CruiseRegisterWebAccess_Module/DB_LOOKUP"
    xmlns:io4="http://www.ibm.com/xmlns/prod/websphere/mq/sca/6.0.0"
    xmlns:io5="http://schemas.xmlsoap.org/ws/2004/08/addressing"
    xmlns:out3="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_register_agcy_lookup"
    xmlns:out4="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_create_agent"
    xmlns:io6="http://www.ibm.com/xmlns/prod/websphere/http/sca/6.1.0"
    xmlns:io7="http://nclapi/schemas"
    xmlns:out5="http://www.ibm.com/xmlns/prod/websphere/bo/6.0.0"
    xmlns:out6="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_register_agcy_lookupbg"
    xmlns:out7="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_create_agentbg"
    xmlns:xs4xs="http://www.w3.org/2001/XMLSchema"
    xmlns:io8="http://www.w3.org/2005/08/addressing"
    xmlns:map="http://NCL_CruiseRegisterWebAccess_Module/xslt/XSLTransformation6_req_1"
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
              <xsl:value-of select="'io2:ServiceMessageObject'"/>
            </xsl:attribute>
            <xsl:call-template name="map:XSLTransformation6_req_12">
              <xsl:with-param name="smo" select="msl:datamap/dataObject[1]"/>
            </xsl:call-template>
          </xsl:element>
        </msl:datamap>
      </xsl:when>
      <xsl:otherwise>
        <xsl:apply-templates select="io2:smo" mode="map:XSLTransformation6_req_1"/>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <!-- This rule represents an element mapping: "io2:smo" to "io2:smo".  -->
  <xsl:template match="io2:smo"  mode="map:XSLTransformation6_req_1">
    <io2:smo>
      <context>
        <correlation>
          <xsl:attribute name="xsi:type">
            <xsl:value-of select="'io3:app_context'"/>
          </xsl:attribute>
          <!-- a structural mapping: "context/correlation/io7:NCL_CruiseRegisterWebAccessRQ"(<Anonymous>) to "io7:NCL_CruiseRegisterWebAccessRQ"(<Anonymous>) -->
          <xsl:if test="context/correlation/io7:NCL_CruiseRegisterWebAccessRQ">
            <xsl:copy-of select="context/correlation/io7:NCL_CruiseRegisterWebAccessRQ"/>
          </xsl:if>
          <!-- a simple data mapping: "context/correlation/LogID"(string) to "LogID"(string) -->
          <xsl:if test="context/correlation/LogID">
            <xsl:element name="LogID">
              <xsl:value-of select="context/correlation/LogID"/>
            </xsl:element>
          </xsl:if>
          <!-- a simple data mapping: "context/correlation/ErrorCode"(string) to "ErrorCode"(string) -->
          <xsl:if test="context/correlation/ErrorCode">
            <xsl:element name="ErrorCode">
              <xsl:value-of select="context/correlation/ErrorCode"/>
            </xsl:element>
          </xsl:if>
          <!-- a simple data mapping: "context/correlation/Agency_ID"(string) to "Agency_ID"(string) -->
          <xsl:if test="context/correlation/Agency_ID">
            <xsl:element name="Agency_ID">
              <xsl:value-of select="context/correlation/Agency_ID"/>
            </xsl:element>
          </xsl:if>
          <!-- a simple data mapping: "body/in2:processEncryptDecryptResponse/Encrypt_Decrypt/EncryptString"(string) to "EncString"(string) -->
          <xsl:if test="body/in2:processEncryptDecryptResponse/Encrypt_Decrypt/EncryptString">
            <xsl:element name="EncString">
              <xsl:value-of select="body/in2:processEncryptDecryptResponse/Encrypt_Decrypt/EncryptString"/>
            </xsl:element>
          </xsl:if>
          <!-- a simple data mapping: "context/correlation/DecString"(string) to "DecString"(string) -->
          <xsl:if test="context/correlation/DecString">
            <xsl:element name="DecString">
              <xsl:value-of select="context/correlation/DecString"/>
            </xsl:element>
          </xsl:if>
        </correlation>
      </context>
    </io2:smo>
  </xsl:template>

  <!-- This rule represents a type mapping: "io2:smo" to "io2:smo".  -->
  <xsl:template name="map:XSLTransformation6_req_12">
    <xsl:param name="smo"/>
    <context>
      <correlation>
        <xsl:attribute name="xsi:type">
          <xsl:value-of select="'io3:app_context'"/>
        </xsl:attribute>
        <!-- a structural mapping: "$smo/context/correlation/io7:NCL_CruiseRegisterWebAccessRQ"(<Anonymous>) to "io7:NCL_CruiseRegisterWebAccessRQ"(<Anonymous>) -->
        <xsl:if test="$smo/context/correlation/io7:NCL_CruiseRegisterWebAccessRQ">
          <xsl:copy-of select="$smo/context/correlation/io7:NCL_CruiseRegisterWebAccessRQ"/>
        </xsl:if>
        <!-- a simple data mapping: "$smo/context/correlation/LogID"(string) to "LogID"(string) -->
        <xsl:if test="$smo/context/correlation/LogID">
          <xsl:element name="LogID">
            <xsl:value-of select="$smo/context/correlation/LogID"/>
          </xsl:element>
        </xsl:if>
        <!-- a simple data mapping: "$smo/context/correlation/ErrorCode"(string) to "ErrorCode"(string) -->
        <xsl:if test="$smo/context/correlation/ErrorCode">
          <xsl:element name="ErrorCode">
            <xsl:value-of select="$smo/context/correlation/ErrorCode"/>
          </xsl:element>
        </xsl:if>
        <!-- a simple data mapping: "$smo/context/correlation/Agency_ID"(string) to "Agency_ID"(string) -->
        <xsl:if test="$smo/context/correlation/Agency_ID">
          <xsl:element name="Agency_ID">
            <xsl:value-of select="$smo/context/correlation/Agency_ID"/>
          </xsl:element>
        </xsl:if>
        <!-- a simple data mapping: "$smo/body/in2:processEncryptDecryptResponse/Encrypt_Decrypt/EncryptString"(string) to "EncString"(string) -->
        <xsl:if test="$smo/body/in2:processEncryptDecryptResponse/Encrypt_Decrypt/EncryptString">
          <xsl:element name="EncString">
            <xsl:value-of select="$smo/body/in2:processEncryptDecryptResponse/Encrypt_Decrypt/EncryptString"/>
          </xsl:element>
        </xsl:if>
        <!-- a simple data mapping: "$smo/context/correlation/DecString"(string) to "DecString"(string) -->
        <xsl:if test="$smo/context/correlation/DecString">
          <xsl:element name="DecString">
            <xsl:value-of select="$smo/context/correlation/DecString"/>
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
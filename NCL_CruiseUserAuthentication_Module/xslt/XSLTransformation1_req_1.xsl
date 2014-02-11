<?xml version="1.0" encoding="UTF-8"?>
<!-- @generated mapFile="xslt/XSLTransformation1_req_1.map" md5sum="bf6f7d5c019abdaaf98142d643dee3ee" version="7.5.100" -->
<!--
*****************************************************************************
*   This file has been generated by the IBM XML Mapping Editor.
*
*   Mapping file:		XSLTransformation1_req_1.map
*   Map declaration(s):	XSLTransformation1_req_1
*   Input file(s):		smo://smo/name%3Dwsdl-primary/correlationContext%3D%257Bhttp%253A%252F%252FNCL_CruiseUserAuthentication_Module%257DApp_context/message%3D%257Bhttp%253A%252F%252Fversonix.com%252Fapi%252Fdefinitions%257DprocessEncryptDecryptResponse/xpath%3D%252F/smo.xsd
*   Output file(s):		smo://smo/name%3Dwsdl-primary/correlationContext%3D%257Bhttp%253A%252F%252FNCL_CruiseUserAuthentication_Module%257DApp_context/message%3D%257Bhttp%253A%252F%252FNCL_CruiseUserAuthentication_Module%252FDB_Lookup%257DexecuteNclseaNcl_Wesb_User_LookupBGRequestMsg/xpath%3D%252F/smo.xsd
*   XSLT import(s):   	XSLTransformation1_req_1_custom.xsl
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
    xmlns:in="http://versonix.com/api/schemas"
    xmlns:in2="wsdl.http://versonix.com/api/definitions"
    xmlns:io="http://www.w3.org/2003/05/soap-envelope"
    xmlns:io2="http://www.ibm.com/websphere/sibx/smo/v6.0.1"
    xmlns:out="http://NCL_CruiseUserAuthentication_Module/DB_Lookup"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xmlns:out2="wsdl.http://NCL_CruiseUserAuthentication_Module/DB_Lookup"
    xmlns:io3="http://www.ibm.com/xmlns/prod/websphere/mq/sca/6.0.0"
    xmlns:io4="http://schemas.xmlsoap.org/ws/2004/08/addressing"
    xmlns:io6="http://nclapi/schemas"
    xmlns:io5="http://www.ibm.com/xmlns/prod/websphere/http/sca/6.1.0"
    xmlns:io7="http://NCL_CruiseUserAuthentication_Module"
    xmlns:out3="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_user_lookup"
    xmlns:out4="http://www.ibm.com/xmlns/prod/websphere/bo/6.0.0"
    xmlns:out5="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/metadata"
    xmlns:xs4xs="http://www.w3.org/2001/XMLSchema"
    xmlns:io8="http://www.w3.org/2005/08/addressing"
    xmlns:out6="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_user_lookupbg"
    xmlns:map="http://NCL_CruiseUserAuthentication_Module/xslt/XSLTransformation1_req_1"
    xmlns:msl="http://www.ibm.com/xmlmap"
    exclude-result-prefixes="in in2 str set math fn regexp dyn dp exsl date map xalan msl"
    version="1.0">

  <!-- imports  -->
  <xsl:import href="XSLTransformation1_req_1_custom.xsl"/>
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
            <xsl:call-template name="map:XSLTransformation1_req_12">
              <xsl:with-param name="smo" select="msl:datamap/dataObject[1]"/>
            </xsl:call-template>
          </xsl:element>
        </msl:datamap>
      </xsl:when>
      <xsl:otherwise>
        <xsl:apply-templates select="io2:smo" mode="map:XSLTransformation1_req_1"/>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <!-- This rule represents an element mapping: "io2:smo" to "io2:smo".  -->
  <xsl:template match="io2:smo"  mode="map:XSLTransformation1_req_1">
    <io2:smo>
      <context>
        <correlation>
          <xsl:attribute name="xsi:type">
            <xsl:value-of select="'io7:App_context'"/>
          </xsl:attribute>
          <!-- a structural mapping: "context/correlation/io6:NCL_CruiseUserAuthenticationRQ"(<Anonymous>) to "io6:NCL_CruiseUserAuthenticationRQ"(<Anonymous>) -->
          <xsl:if test="context/correlation/io6:NCL_CruiseUserAuthenticationRQ">
            <xsl:copy-of select="context/correlation/io6:NCL_CruiseUserAuthenticationRQ"/>
          </xsl:if>
          <!-- a simple data mapping: "context/correlation/LogID"(string) to "LogID"(string) -->
          <xsl:if test="context/correlation/LogID">
            <xsl:element name="LogID">
              <xsl:value-of select="context/correlation/LogID"/>
            </xsl:element>
          </xsl:if>
          <!-- a simple data mapping: "context/correlation/InuptLength"(string) to "InuptLength"(string) -->
          <xsl:if test="context/correlation/InuptLength">
            <xsl:element name="InuptLength">
              <xsl:value-of select="context/correlation/InuptLength"/>
            </xsl:element>
          </xsl:if>
          <!-- a simple data mapping: "body/in:processEncryptDecryptResponse/in:Encrypt_Decrypt/in:EncryptString"(string) to "OutputLength"(string) -->
          <xsl:if test="body/in:processEncryptDecryptResponse/in:Encrypt_Decrypt/in:EncryptString">
            <xsl:element name="OutputLength">
              <!-- variables for custom code -->
              <xsl:variable name="EncryptString" select="body/in:processEncryptDecryptResponse/in:Encrypt_Decrypt/in:EncryptString"/>
              <xsl:call-template name="EncryptStringToOutputLength">
                <xsl:with-param name="EncryptString" select="$EncryptString"/>
              </xsl:call-template>
            </xsl:element>
          </xsl:if>
        </correlation>
      </context>
      <xsl:element name="body">
        <xsl:attribute name="xsi:type">
          <xsl:value-of select="'out2:executeNclseaNcl_Wesb_User_LookupBGRequestMsg'"/>
        </xsl:attribute>
        <xsl:element name="out:executeNclseaNcl_Wesb_User_LookupBG">
          <xsl:element name="out:executeNclseaNcl_Wesb_User_LookupBGInput">
            <xsl:element name="NclseaNcl_Wesb_User_Lookup">
              <!-- a simple data mapping: "context/correlation/io6:NCL_CruiseUserAuthenticationRQ/io6:UserLogin/@UserType"(StringLength1to16) to "p_type"(string) -->
              <xsl:if test="context/correlation/io6:NCL_CruiseUserAuthenticationRQ/io6:UserLogin/@UserType">
                <xsl:element name="p_type">
                  <xsl:value-of select="context/correlation/io6:NCL_CruiseUserAuthenticationRQ/io6:UserLogin/@UserType"/>
                </xsl:element>
              </xsl:if>
              <!-- a simple data mapping: "context/correlation/io6:NCL_CruiseUserAuthenticationRQ/io6:UserLogin/@UserLoginName"(StringLength1to64) to "p_username"(string) -->
              <xsl:if test="context/correlation/io6:NCL_CruiseUserAuthenticationRQ/io6:UserLogin/@UserLoginName">
                <xsl:element name="p_username">
                  <!-- variables for custom code -->
                  <xsl:variable name="UserLoginName" select="context/correlation/io6:NCL_CruiseUserAuthenticationRQ/io6:UserLogin/@UserLoginName"/>
                  <xsl:value-of select="translate($UserLoginName,'abcdefghijklmnopqrstuvwxyz','ABCDEFGHIJKLMNOPQRSTUVWXYZ')"/>
                </xsl:element>
              </xsl:if>
              <!-- a simple data mapping: "body/in:processEncryptDecryptResponse/in:Encrypt_Decrypt/in:EncryptString"(string) to "p_password"(string) -->
              <xsl:if test="body/in:processEncryptDecryptResponse/in:Encrypt_Decrypt/in:EncryptString">
                <xsl:element name="p_password">
                  <xsl:value-of select="body/in:processEncryptDecryptResponse/in:Encrypt_Decrypt/in:EncryptString"/>
                </xsl:element>
              </xsl:if>
            </xsl:element>
          </xsl:element>
        </xsl:element>
      </xsl:element>
    </io2:smo>
  </xsl:template>

  <!-- This rule represents a type mapping: "io2:smo" to "io2:smo".  -->
  <xsl:template name="map:XSLTransformation1_req_12">
    <xsl:param name="smo"/>
    <context>
      <correlation>
        <xsl:attribute name="xsi:type">
          <xsl:value-of select="'io7:App_context'"/>
        </xsl:attribute>
        <!-- a structural mapping: "$smo/context/correlation/io6:NCL_CruiseUserAuthenticationRQ"(<Anonymous>) to "io6:NCL_CruiseUserAuthenticationRQ"(<Anonymous>) -->
        <xsl:if test="$smo/context/correlation/io6:NCL_CruiseUserAuthenticationRQ">
          <xsl:copy-of select="$smo/context/correlation/io6:NCL_CruiseUserAuthenticationRQ"/>
        </xsl:if>
        <!-- a simple data mapping: "$smo/context/correlation/LogID"(string) to "LogID"(string) -->
        <xsl:if test="$smo/context/correlation/LogID">
          <xsl:element name="LogID">
            <xsl:value-of select="$smo/context/correlation/LogID"/>
          </xsl:element>
        </xsl:if>
        <!-- a simple data mapping: "$smo/context/correlation/InuptLength"(string) to "InuptLength"(string) -->
        <xsl:if test="$smo/context/correlation/InuptLength">
          <xsl:element name="InuptLength">
            <xsl:value-of select="$smo/context/correlation/InuptLength"/>
          </xsl:element>
        </xsl:if>
        <!-- a simple data mapping: "$smo/body/in:processEncryptDecryptResponse/in:Encrypt_Decrypt/in:EncryptString"(string) to "OutputLength"(string) -->
        <xsl:if test="$smo/body/in:processEncryptDecryptResponse/in:Encrypt_Decrypt/in:EncryptString">
          <xsl:element name="OutputLength">
            <!-- variables for custom code -->
            <xsl:variable name="EncryptString" select="$smo/body/in:processEncryptDecryptResponse/in:Encrypt_Decrypt/in:EncryptString"/>
            <xsl:call-template name="EncryptStringToOutputLength">
              <xsl:with-param name="EncryptString" select="$EncryptString"/>
            </xsl:call-template>
          </xsl:element>
        </xsl:if>
      </correlation>
    </context>
    <xsl:element name="body">
      <xsl:attribute name="xsi:type">
        <xsl:value-of select="'out2:executeNclseaNcl_Wesb_User_LookupBGRequestMsg'"/>
      </xsl:attribute>
      <xsl:element name="out:executeNclseaNcl_Wesb_User_LookupBG">
        <xsl:element name="out:executeNclseaNcl_Wesb_User_LookupBGInput">
          <xsl:element name="NclseaNcl_Wesb_User_Lookup">
            <!-- a simple data mapping: "$smo/context/correlation/io6:NCL_CruiseUserAuthenticationRQ/io6:UserLogin/@UserType"(StringLength1to16) to "p_type"(string) -->
            <xsl:if test="$smo/context/correlation/io6:NCL_CruiseUserAuthenticationRQ/io6:UserLogin/@UserType">
              <xsl:element name="p_type">
                <xsl:value-of select="$smo/context/correlation/io6:NCL_CruiseUserAuthenticationRQ/io6:UserLogin/@UserType"/>
              </xsl:element>
            </xsl:if>
            <!-- a simple data mapping: "$smo/context/correlation/io6:NCL_CruiseUserAuthenticationRQ/io6:UserLogin/@UserLoginName"(StringLength1to64) to "p_username"(string) -->
            <xsl:if test="$smo/context/correlation/io6:NCL_CruiseUserAuthenticationRQ/io6:UserLogin/@UserLoginName">
              <xsl:element name="p_username">
                <!-- variables for custom code -->
                <xsl:variable name="UserLoginName" select="$smo/context/correlation/io6:NCL_CruiseUserAuthenticationRQ/io6:UserLogin/@UserLoginName"/>
                <xsl:value-of select="translate($UserLoginName,'abcdefghijklmnopqrstuvwxyz','ABCDEFGHIJKLMNOPQRSTUVWXYZ')"/>
              </xsl:element>
            </xsl:if>
            <!-- a simple data mapping: "$smo/body/in:processEncryptDecryptResponse/in:Encrypt_Decrypt/in:EncryptString"(string) to "p_password"(string) -->
            <xsl:if test="$smo/body/in:processEncryptDecryptResponse/in:Encrypt_Decrypt/in:EncryptString">
              <xsl:element name="p_password">
                <xsl:value-of select="$smo/body/in:processEncryptDecryptResponse/in:Encrypt_Decrypt/in:EncryptString"/>
              </xsl:element>
            </xsl:if>
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

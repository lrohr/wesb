<?xml version="1.0" encoding="UTF-8"?>
<!-- @generated mapFile="xslt/XSLTransformation1_req_3.map" md5sum="2371bbae2762d9e80170a59f9386408f" version="7.6.100" -->
<!--
*****************************************************************************
*   This file has been generated by the IBM XML Mapping Editor.
*
*   Mapping file:		XSLTransformation1_req_3.map
*   Map declaration(s):	XSLTransformation1_req_3
*   Input file(s):		smo://smo/name%3Dwsdl-primary/message%3D%257Bhttp%253A%252F%252FFuseBoxLib%252FFuseBoxCredCardProvider%257DprocessCardInfoResponseMsg/xpath%3D%252Fbody/smo.xsd
*   Output file(s):		smo://smo/name%3Dwsdl-primary/message%3D%257Bhttp%253A%252F%252FNCLFuseBoxMediation%252FNclEsbCreditCardUpdateImport%257DexecuteNclseaNcl_Esb_Cc_UpdateRequestMsg/xpath%3D%252Fbody/smo.xsd
*   XSLT import(s):   	FuseBoxResponseToNCLTransform_custom.xsl
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
    xmlns:in="http://FuseBoxLib/FuseBoxCredCardProvider"
    xmlns:in2="wsdl.http://FuseBoxLib/FuseBoxCredCardProvider"
    xmlns:out="http://NCLFuseBoxMediation/NclEsbCreditCardUpdateImport"
    xmlns:out2="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_esb_cc_update"
    xmlns:io="http://www.w3.org/2003/05/soap-envelope"
    xmlns:io3="http://www.ibm.com/xmlns/prod/websphere/mq/sca/6.0.0"
    xmlns:io2="http://www.ibm.com/websphere/sibx/smo/v6.0.1"
    xmlns:out3="wsdl.http://NCLFuseBoxMediation/NclEsbCreditCardUpdateImport"
    xmlns:io4="http://schemas.xmlsoap.org/ws/2004/08/addressing"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xmlns:io5="http://www.ibm.com/xmlns/prod/websphere/http/sca/6.1.0"
    xmlns:xs4xs="http://www.w3.org/2001/XMLSchema"
    xmlns:io6="http://www.w3.org/2005/08/addressing"
    xmlns:map="http://NCLFuseBoxMediation/xslt/XSLTransformation1_req_3"
    xmlns:msl="http://www.ibm.com/xmlmap"
    exclude-result-prefixes="in in2 str set math fn regexp dyn dp exsl date map xalan msl"
    version="1.0">

  <!-- imports  -->
  <xsl:import href="FuseBoxResponseToNCLTransform_custom.xsl"/>
  <xsl:output method="xml" encoding="UTF-8" indent="no"/>

  <!-- root wrapper template  -->
  <xsl:template match="/">
    <xsl:choose>
      <xsl:when test="msl:datamap">
        <msl:datamap>
          <xsl:element name="dataObject">
            <xsl:attribute name="xsi:type">
              <xsl:value-of select="'out3:executeNclseaNcl_Esb_Cc_UpdateRequestMsg'"/>
            </xsl:attribute>
            <xsl:call-template name="map:XSLTransformation1_req_32">
              <xsl:with-param name="body" select="msl:datamap/dataObject[1]"/>
            </xsl:call-template>
          </xsl:element>
        </msl:datamap>
      </xsl:when>
      <xsl:otherwise>
        <xsl:apply-templates select="body" mode="map:XSLTransformation1_req_3"/>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <!-- This rule represents an element mapping: "body" to "body".  -->
  <xsl:template match="body"  mode="map:XSLTransformation1_req_3">
    <body>
      <xsl:attribute name="xsi:type">
        <xsl:value-of select="'out3:executeNclseaNcl_Esb_Cc_UpdateRequestMsg'"/>
      </xsl:attribute>
      <out:executeNclseaNcl_Esb_Cc_Update>
        <!-- a structural mapping: "in:processCardInfoResponse/Response"(<Anonymous>) to "out:executeNclseaNcl_Esb_Cc_UpdateInput"(NclseaNcl_Esb_Cc_Update) -->
        <xsl:element name="out:executeNclseaNcl_Esb_Cc_UpdateInput">
          <!-- variables for custom code -->
          <xsl:variable name="Response" select="in:processCardInfoResponse/Response"/>
          <xsl:call-template name="ResponseToExecuteNclseaNcl_Esb_Cc_UpdateInput">
            <xsl:with-param name="Response" select="$Response"/>
          </xsl:call-template>
        </xsl:element>
      </out:executeNclseaNcl_Esb_Cc_Update>
    </body>
  </xsl:template>

  <!-- This rule represents a type mapping: "body" to "body".  -->
  <xsl:template name="map:XSLTransformation1_req_32">
    <xsl:param name="body"/>
    <out:executeNclseaNcl_Esb_Cc_Update>
      <!-- a structural mapping: "$body/in:processCardInfoResponse/Response"(<Anonymous>) to "out:executeNclseaNcl_Esb_Cc_UpdateInput"(NclseaNcl_Esb_Cc_Update) -->
      <xsl:element name="out:executeNclseaNcl_Esb_Cc_UpdateInput">
        <!-- variables for custom code -->
        <xsl:variable name="Response" select="$body/in:processCardInfoResponse/Response"/>
        <xsl:call-template name="ResponseToExecuteNclseaNcl_Esb_Cc_UpdateInput">
          <xsl:with-param name="Response" select="$Response"/>
        </xsl:call-template>
      </xsl:element>
    </out:executeNclseaNcl_Esb_Cc_Update>
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

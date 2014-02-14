<?xml version="1.0" encoding="UTF-8"?>
<!-- @generated mapFile="xslt/XSLTransformation1_req_8.map" md5sum="91eb6a90b185e439608916e0aad9990d" version="7.5.100" -->
<!--
*****************************************************************************
*   This file has been generated by the IBM XML Mapping Editor.
*
*   Mapping file:		XSLTransformation1_req_8.map
*   Map declaration(s):	XSLTransformation1_req_8
*   Input file(s):		smo://smo/name%3Dwsdl-primary/correlationContext%3D%257Bhttp%253A%252F%252FNCL_CruiseRetrieveClient_Module%257DApp_Context/message%3D%257Bhttp%253A%252F%252FTP_Logger%252FTP_Interface%257DTP_InsertUpdateRequestMsg/xpath%3D%252F/smo.xsd
*   Output file(s):		smo://smo/name%3Dwsdl-primary/correlationContext%3D%257Bhttp%253A%252F%252FNCL_CruiseRetrieveClient_Module%257DApp_Context/message%3D%257Bhttp%253A%252F%252FNCL_WESB_Shared_Library%252FNCL_CruiseRetrieveClient_Interface%257DPerform_NCL_CruiseRetrieveClientResponseMsg/xpath%3D%252F/smo.xsd
*   XSLT import(s):   	XSLTransformation1_req_8_custom.xsl
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
    xmlns:io="http://www.w3.org/2003/05/soap-envelope"
    xmlns:io3="http://www.ibm.com/xmlns/prod/websphere/mq/sca/6.0.0"
    xmlns:io2="http://www.ibm.com/websphere/sibx/smo/v6.0.1"
    xmlns:out="http://NCL_WESB_Shared_Library/NCL_CruiseRetrieveClient_Interface"
    xmlns:io4="http://NCL_CruiseRetrieveClient_Module"
    xmlns:io5="http://schemas.xmlsoap.org/ws/2004/08/addressing"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xmlns:io7="http://www.ibm.com/xmlns/prod/websphere/http/sca/6.1.0"
    xmlns:io6="http://nclapi/schemas"
    xmlns:out2="wsdl.http://NCL_WESB_Shared_Library/NCL_CruiseRetrieveClient_Interface"
    xmlns:xs4xs="http://www.w3.org/2001/XMLSchema"
    xmlns:io8="http://www.w3.org/2005/08/addressing"
    xmlns:map="http://NCL_CruiseRetrieveClient_Module/xslt/XSLTransformation1_req_8"
    xmlns:msl="http://www.ibm.com/xmlmap"
    exclude-result-prefixes="in in2 str set math fn regexp dyn dp exsl date map xalan msl"
    version="1.0">

  <!-- imports  -->
  <xsl:import href="XSLTransformation1_req_8_custom.xsl"/>
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
            <xsl:call-template name="map:XSLTransformation1_req_82">
              <xsl:with-param name="smo" select="msl:datamap/dataObject[1]"/>
            </xsl:call-template>
          </xsl:element>
        </msl:datamap>
      </xsl:when>
      <xsl:otherwise>
        <xsl:apply-templates select="io2:smo" mode="map:XSLTransformation1_req_8"/>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <!-- This rule represents an element mapping: "io2:smo" to "io2:smo".  -->
  <xsl:template match="io2:smo"  mode="map:XSLTransformation1_req_8">
    <io2:smo>
      <context>
        <!-- a structural mapping: "context/correlation"(App_Context) to "correlation"(App_Context) -->
        <xsl:if test="context/correlation">
          <xsl:copy-of select="context/correlation"/>
        </xsl:if>
      </context>
      <xsl:element name="body">
        <xsl:attribute name="xsi:type">
          <xsl:value-of select="'out2:Perform_NCL_CruiseRetrieveClientResponseMsg'"/>
        </xsl:attribute>
        <xsl:element name="out:Perform_NCL_CruiseRetrieveClientResponse">
          <xsl:element name="io6:NCL_CruiseRetrieveClientRS">
            <!-- a simple data mapping: "context/correlation/io6:NCL_CruiseRetrieveClientRS/@TransactionIdentifier"(StringLength1to32) to "TransactionIdentifier"(StringLength1to32) -->
            <xsl:if test="context/correlation/io6:NCL_CruiseRetrieveClientRS/@TransactionIdentifier">
              <xsl:attribute name="TransactionIdentifier">
                <xsl:value-of select="context/correlation/io6:NCL_CruiseRetrieveClientRS/@TransactionIdentifier"/>
              </xsl:attribute>
            </xsl:if>
            <!-- a structural mapping: "context/correlation/io6:NCL_CruiseRetrieveClientRS/@TransactionIdentifier"(StringLength1to32) to "io6:Success"(SuccessType) -->
            <xsl:if test="context/correlation/io6:NCL_CruiseRetrieveClientRS/@TransactionIdentifier">
              <xsl:element name="io6:Success">
                <!-- variables for custom code -->
                <xsl:variable name="TransactionIdentifier" select="context/correlation/io6:NCL_CruiseRetrieveClientRS/@TransactionIdentifier"/>
                <xsl:call-template name="TransactionIdentifierToSuccess">
                  <xsl:with-param name="TransactionIdentifier" select="$TransactionIdentifier"/>
                </xsl:call-template>
              </xsl:element>
            </xsl:if>
            <xsl:element name="io6:Warnings">
              <xsl:element name="io6:Warning">
                <!-- a simple mapping with no associated source:  to "Code"(OTA_CodeType) -->
                <xsl:attribute name="Code">
                  <xsl:value-of select="'9917'"/>
                </xsl:attribute>
                <!-- a simple mapping with no associated source:  to "ShortText"(StringLength1to64) -->
                <xsl:attribute name="ShortText">
                  <xsl:value-of select="'Unexpected Error 4.5'"/>
                </xsl:attribute>
              </xsl:element>
            </xsl:element>
          </xsl:element>
        </xsl:element>
      </xsl:element>
    </io2:smo>
  </xsl:template>

  <!-- This rule represents a type mapping: "io2:smo" to "io2:smo".  -->
  <xsl:template name="map:XSLTransformation1_req_82">
    <xsl:param name="smo"/>
    <context>
      <!-- a structural mapping: "$smo/context/correlation"(App_Context) to "correlation"(App_Context) -->
      <xsl:if test="$smo/context/correlation">
        <xsl:copy-of select="$smo/context/correlation"/>
      </xsl:if>
    </context>
    <xsl:element name="body">
      <xsl:attribute name="xsi:type">
        <xsl:value-of select="'out2:Perform_NCL_CruiseRetrieveClientResponseMsg'"/>
      </xsl:attribute>
      <xsl:element name="out:Perform_NCL_CruiseRetrieveClientResponse">
        <xsl:element name="io6:NCL_CruiseRetrieveClientRS">
          <!-- a simple data mapping: "$smo/context/correlation/io6:NCL_CruiseRetrieveClientRS/@TransactionIdentifier"(StringLength1to32) to "TransactionIdentifier"(StringLength1to32) -->
          <xsl:if test="$smo/context/correlation/io6:NCL_CruiseRetrieveClientRS/@TransactionIdentifier">
            <xsl:attribute name="TransactionIdentifier">
              <xsl:value-of select="$smo/context/correlation/io6:NCL_CruiseRetrieveClientRS/@TransactionIdentifier"/>
            </xsl:attribute>
          </xsl:if>
          <!-- a structural mapping: "$smo/context/correlation/io6:NCL_CruiseRetrieveClientRS/@TransactionIdentifier"(StringLength1to32) to "io6:Success"(SuccessType) -->
          <xsl:if test="$smo/context/correlation/io6:NCL_CruiseRetrieveClientRS/@TransactionIdentifier">
            <xsl:element name="io6:Success">
              <!-- variables for custom code -->
              <xsl:variable name="TransactionIdentifier" select="$smo/context/correlation/io6:NCL_CruiseRetrieveClientRS/@TransactionIdentifier"/>
              <xsl:call-template name="TransactionIdentifierToSuccess">
                <xsl:with-param name="TransactionIdentifier" select="$TransactionIdentifier"/>
              </xsl:call-template>
            </xsl:element>
          </xsl:if>
          <xsl:element name="io6:Warnings">
            <xsl:element name="io6:Warning">
              <!-- a simple mapping with no associated source:  to "Code"(OTA_CodeType) -->
              <xsl:attribute name="Code">
                <xsl:value-of select="'9917'"/>
              </xsl:attribute>
              <!-- a simple mapping with no associated source:  to "ShortText"(StringLength1to64) -->
              <xsl:attribute name="ShortText">
                <xsl:value-of select="'Unexpected Error 4.5'"/>
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

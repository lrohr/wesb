<?xml version="1.0" encoding="UTF-8"?>
<!-- @generated mapFile="xslt/XSLTransformation3_req_1.map" md5sum="7f34d4965f7eb5a96d0685fe1b9090eb" version="7.5.100" -->
<!--
*****************************************************************************
*   This file has been generated by the IBM XML Mapping Editor.
*
*   Mapping file:		XSLTransformation3_req_1.map
*   Map declaration(s):	XSLTransformation3_req_1
*   Input file(s):		smo://smo/name%3Dwsdl-primary/correlationContext%3D%257Bhttp%253A%252F%252FNCL_CruiseUserAuthenticationAndRetrieve%257DAppContext/message%3D%257Bhttp%253A%252F%252FNCL_CruiseUserAuthenticationAndRetrieve%252FJDBCImport%257DexecuteNclseaNcl_Wesb_User_LookupResponseMsg/xpath%3D%252F/smo.xsd
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
    xmlns:in="wsdl.http://NCL_CruiseUserAuthenticationAndRetrieve/JDBCImport"
    xmlns:in2="http://NCL_CruiseUserAuthenticationAndRetrieve/JDBCImport"
    xmlns:in3="http://com/ibm/j2ca/fault"
    xmlns:in4="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_user_lookup"
    xmlns:in5="http://com/ibm/j2ca/fault/afcfault"
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
    xmlns:map="http://NCL_CruiseUserAuthenticationAndRetrieve/xslt/XSLTransformation3_req_1"
    xmlns:msl="http://www.ibm.com/xmlmap"
    exclude-result-prefixes="in in2 in3 in4 in5 str set math fn regexp dyn dp exsl date map xalan msl"
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
            <xsl:call-template name="map:XSLTransformation3_req_12">
              <xsl:with-param name="smo" select="msl:datamap/dataObject[1]"/>
            </xsl:call-template>
          </xsl:element>
        </msl:datamap>
      </xsl:when>
      <xsl:otherwise>
        <xsl:apply-templates select="io3:smo" mode="map:XSLTransformation3_req_1"/>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <!-- This rule represents an element mapping: "io3:smo" to "io3:smo".  -->
  <xsl:template match="io3:smo"  mode="map:XSLTransformation3_req_1">
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
          <xsl:element name="io6:NCL_CruiseUserAuthenticationAndRetrieveRS">
            <!-- a simple data mapping: "context/correlation/io6:NCL_CruiseUserAuthenticationAndRetrieveRQ/@AltLangID"(language) to "AltLangID"(language) -->
            <xsl:if test="context/correlation/io6:NCL_CruiseUserAuthenticationAndRetrieveRQ/@AltLangID">
              <xsl:attribute name="AltLangID">
                <xsl:value-of select="context/correlation/io6:NCL_CruiseUserAuthenticationAndRetrieveRQ/@AltLangID"/>
              </xsl:attribute>
            </xsl:if>
            <!-- a simple data mapping: "context/correlation/io6:NCL_CruiseUserAuthenticationAndRetrieveRQ/@EchoToken"(StringLength1to128) to "EchoToken"(StringLength1to128) -->
            <xsl:if test="context/correlation/io6:NCL_CruiseUserAuthenticationAndRetrieveRQ/@EchoToken">
              <xsl:attribute name="EchoToken">
                <xsl:value-of select="context/correlation/io6:NCL_CruiseUserAuthenticationAndRetrieveRQ/@EchoToken"/>
              </xsl:attribute>
            </xsl:if>
            <!-- a simple data mapping: "context/correlation/io6:NCL_CruiseUserAuthenticationAndRetrieveRQ/@PrimaryLangID"(language) to "PrimaryLangID"(language) -->
            <xsl:if test="context/correlation/io6:NCL_CruiseUserAuthenticationAndRetrieveRQ/@PrimaryLangID">
              <xsl:attribute name="PrimaryLangID">
                <xsl:value-of select="context/correlation/io6:NCL_CruiseUserAuthenticationAndRetrieveRQ/@PrimaryLangID"/>
              </xsl:attribute>
            </xsl:if>
            <!-- a simple data mapping: "context/correlation/io6:NCL_CruiseUserAuthenticationAndRetrieveRQ/@RetransmissionIndicator"(boolean) to "RetransmissionIndicator"(boolean) -->
            <xsl:if test="context/correlation/io6:NCL_CruiseUserAuthenticationAndRetrieveRQ/@RetransmissionIndicator">
              <xsl:attribute name="RetransmissionIndicator">
                <xsl:value-of select="context/correlation/io6:NCL_CruiseUserAuthenticationAndRetrieveRQ/@RetransmissionIndicator"/>
              </xsl:attribute>
            </xsl:if>
            <!-- a simple data mapping: "context/correlation/io6:NCL_CruiseUserAuthenticationAndRetrieveRQ/@SequenceNmbr"(nonNegativeInteger) to "SequenceNmbr"(nonNegativeInteger) -->
            <xsl:if test="context/correlation/io6:NCL_CruiseUserAuthenticationAndRetrieveRQ/@SequenceNmbr">
              <xsl:attribute name="SequenceNmbr">
                <xsl:value-of select="context/correlation/io6:NCL_CruiseUserAuthenticationAndRetrieveRQ/@SequenceNmbr"/>
              </xsl:attribute>
            </xsl:if>
            <!-- a simple data mapping: "context/correlation/io6:NCL_CruiseUserAuthenticationAndRetrieveRQ/@Target"(<NMTOKEN>) to "Target"(<NMTOKEN>) -->
            <xsl:if test="context/correlation/io6:NCL_CruiseUserAuthenticationAndRetrieveRQ/@Target">
              <xsl:attribute name="Target">
                <xsl:value-of select="context/correlation/io6:NCL_CruiseUserAuthenticationAndRetrieveRQ/@Target"/>
              </xsl:attribute>
            </xsl:if>
            <!-- a simple data mapping: "context/correlation/io6:NCL_CruiseUserAuthenticationAndRetrieveRQ/@TimeStamp"(dateTime) to "TimeStamp"(dateTime) -->
            <xsl:if test="context/correlation/io6:NCL_CruiseUserAuthenticationAndRetrieveRQ/@TimeStamp">
              <xsl:attribute name="TimeStamp">
                <xsl:value-of select="context/correlation/io6:NCL_CruiseUserAuthenticationAndRetrieveRQ/@TimeStamp"/>
              </xsl:attribute>
            </xsl:if>
            <!-- a simple data mapping: "context/correlation/io6:NCL_CruiseUserAuthenticationAndRetrieveRQ/@TransactionIdentifier"(StringLength1to32) to "TransactionIdentifier"(StringLength1to32) -->
            <xsl:if test="context/correlation/io6:NCL_CruiseUserAuthenticationAndRetrieveRQ/@TransactionIdentifier">
              <xsl:attribute name="TransactionIdentifier">
                <xsl:value-of select="context/correlation/io6:NCL_CruiseUserAuthenticationAndRetrieveRQ/@TransactionIdentifier"/>
              </xsl:attribute>
            </xsl:if>
            <!-- a simple data mapping: "context/correlation/io6:NCL_CruiseUserAuthenticationAndRetrieveRQ/@TransactionStatusCode"(<NMTOKEN>) to "TransactionStatusCode"(<NMTOKEN>) -->
            <xsl:if test="context/correlation/io6:NCL_CruiseUserAuthenticationAndRetrieveRQ/@TransactionStatusCode">
              <xsl:attribute name="TransactionStatusCode">
                <xsl:value-of select="context/correlation/io6:NCL_CruiseUserAuthenticationAndRetrieveRQ/@TransactionStatusCode"/>
              </xsl:attribute>
            </xsl:if>
            <!-- a simple data mapping: "context/correlation/io6:NCL_CruiseUserAuthenticationAndRetrieveRQ/@Version"(decimal) to "Version"(decimal) -->
            <xsl:attribute name="Version">
              <xsl:value-of select="context/correlation/io6:NCL_CruiseUserAuthenticationAndRetrieveRQ/@Version"/>
            </xsl:attribute>
            <!-- a structural mapping with no associated source:  to "io6:Success"(SuccessType) -->
            <xsl:element name="io6:Success">
            </xsl:element>
            <xsl:element name="io6:Warnings">
              <xsl:element name="io6:Warning">
                <!-- a simple data mapping: "body/in2:executeNclseaNcl_Wesb_User_LookupResponse/in2:executeNclseaNcl_Wesb_User_LookupOutput/p_errorcode"(string) to "Code"(OTA_CodeType) -->
                <xsl:if test="body/in2:executeNclseaNcl_Wesb_User_LookupResponse/in2:executeNclseaNcl_Wesb_User_LookupOutput/p_errorcode">
                  <xsl:attribute name="Code">
                    <xsl:value-of select="body/in2:executeNclseaNcl_Wesb_User_LookupResponse/in2:executeNclseaNcl_Wesb_User_LookupOutput/p_errorcode"/>
                  </xsl:attribute>
                </xsl:if>
                <!-- a simple mapping with no associated source:  to "ShortText"(StringLength1to64) -->
                <xsl:attribute name="ShortText">
                  <xsl:value-of select="'Client not Authenticated'"/>
                </xsl:attribute>
                <!-- a simple mapping with no associated source:  to "Type"(OTA_CodeType) -->
                <xsl:attribute name="Type">
                  <xsl:value-of select="'3'"/>
                </xsl:attribute>
              </xsl:element>
            </xsl:element>
          </xsl:element>
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
  <xsl:template name="map:XSLTransformation3_req_12">
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
        <xsl:element name="io6:NCL_CruiseUserAuthenticationAndRetrieveRS">
          <!-- a simple data mapping: "$smo/context/correlation/io6:NCL_CruiseUserAuthenticationAndRetrieveRQ/@AltLangID"(language) to "AltLangID"(language) -->
          <xsl:if test="$smo/context/correlation/io6:NCL_CruiseUserAuthenticationAndRetrieveRQ/@AltLangID">
            <xsl:attribute name="AltLangID">
              <xsl:value-of select="$smo/context/correlation/io6:NCL_CruiseUserAuthenticationAndRetrieveRQ/@AltLangID"/>
            </xsl:attribute>
          </xsl:if>
          <!-- a simple data mapping: "$smo/context/correlation/io6:NCL_CruiseUserAuthenticationAndRetrieveRQ/@EchoToken"(StringLength1to128) to "EchoToken"(StringLength1to128) -->
          <xsl:if test="$smo/context/correlation/io6:NCL_CruiseUserAuthenticationAndRetrieveRQ/@EchoToken">
            <xsl:attribute name="EchoToken">
              <xsl:value-of select="$smo/context/correlation/io6:NCL_CruiseUserAuthenticationAndRetrieveRQ/@EchoToken"/>
            </xsl:attribute>
          </xsl:if>
          <!-- a simple data mapping: "$smo/context/correlation/io6:NCL_CruiseUserAuthenticationAndRetrieveRQ/@PrimaryLangID"(language) to "PrimaryLangID"(language) -->
          <xsl:if test="$smo/context/correlation/io6:NCL_CruiseUserAuthenticationAndRetrieveRQ/@PrimaryLangID">
            <xsl:attribute name="PrimaryLangID">
              <xsl:value-of select="$smo/context/correlation/io6:NCL_CruiseUserAuthenticationAndRetrieveRQ/@PrimaryLangID"/>
            </xsl:attribute>
          </xsl:if>
          <!-- a simple data mapping: "$smo/context/correlation/io6:NCL_CruiseUserAuthenticationAndRetrieveRQ/@RetransmissionIndicator"(boolean) to "RetransmissionIndicator"(boolean) -->
          <xsl:if test="$smo/context/correlation/io6:NCL_CruiseUserAuthenticationAndRetrieveRQ/@RetransmissionIndicator">
            <xsl:attribute name="RetransmissionIndicator">
              <xsl:value-of select="$smo/context/correlation/io6:NCL_CruiseUserAuthenticationAndRetrieveRQ/@RetransmissionIndicator"/>
            </xsl:attribute>
          </xsl:if>
          <!-- a simple data mapping: "$smo/context/correlation/io6:NCL_CruiseUserAuthenticationAndRetrieveRQ/@SequenceNmbr"(nonNegativeInteger) to "SequenceNmbr"(nonNegativeInteger) -->
          <xsl:if test="$smo/context/correlation/io6:NCL_CruiseUserAuthenticationAndRetrieveRQ/@SequenceNmbr">
            <xsl:attribute name="SequenceNmbr">
              <xsl:value-of select="$smo/context/correlation/io6:NCL_CruiseUserAuthenticationAndRetrieveRQ/@SequenceNmbr"/>
            </xsl:attribute>
          </xsl:if>
          <!-- a simple data mapping: "$smo/context/correlation/io6:NCL_CruiseUserAuthenticationAndRetrieveRQ/@Target"(<NMTOKEN>) to "Target"(<NMTOKEN>) -->
          <xsl:if test="$smo/context/correlation/io6:NCL_CruiseUserAuthenticationAndRetrieveRQ/@Target">
            <xsl:attribute name="Target">
              <xsl:value-of select="$smo/context/correlation/io6:NCL_CruiseUserAuthenticationAndRetrieveRQ/@Target"/>
            </xsl:attribute>
          </xsl:if>
          <!-- a simple data mapping: "$smo/context/correlation/io6:NCL_CruiseUserAuthenticationAndRetrieveRQ/@TimeStamp"(dateTime) to "TimeStamp"(dateTime) -->
          <xsl:if test="$smo/context/correlation/io6:NCL_CruiseUserAuthenticationAndRetrieveRQ/@TimeStamp">
            <xsl:attribute name="TimeStamp">
              <xsl:value-of select="$smo/context/correlation/io6:NCL_CruiseUserAuthenticationAndRetrieveRQ/@TimeStamp"/>
            </xsl:attribute>
          </xsl:if>
          <!-- a simple data mapping: "$smo/context/correlation/io6:NCL_CruiseUserAuthenticationAndRetrieveRQ/@TransactionIdentifier"(StringLength1to32) to "TransactionIdentifier"(StringLength1to32) -->
          <xsl:if test="$smo/context/correlation/io6:NCL_CruiseUserAuthenticationAndRetrieveRQ/@TransactionIdentifier">
            <xsl:attribute name="TransactionIdentifier">
              <xsl:value-of select="$smo/context/correlation/io6:NCL_CruiseUserAuthenticationAndRetrieveRQ/@TransactionIdentifier"/>
            </xsl:attribute>
          </xsl:if>
          <!-- a simple data mapping: "$smo/context/correlation/io6:NCL_CruiseUserAuthenticationAndRetrieveRQ/@TransactionStatusCode"(<NMTOKEN>) to "TransactionStatusCode"(<NMTOKEN>) -->
          <xsl:if test="$smo/context/correlation/io6:NCL_CruiseUserAuthenticationAndRetrieveRQ/@TransactionStatusCode">
            <xsl:attribute name="TransactionStatusCode">
              <xsl:value-of select="$smo/context/correlation/io6:NCL_CruiseUserAuthenticationAndRetrieveRQ/@TransactionStatusCode"/>
            </xsl:attribute>
          </xsl:if>
          <!-- a simple data mapping: "$smo/context/correlation/io6:NCL_CruiseUserAuthenticationAndRetrieveRQ/@Version"(decimal) to "Version"(decimal) -->
          <xsl:attribute name="Version">
            <xsl:value-of select="$smo/context/correlation/io6:NCL_CruiseUserAuthenticationAndRetrieveRQ/@Version"/>
          </xsl:attribute>
          <!-- a structural mapping with no associated source:  to "io6:Success"(SuccessType) -->
          <xsl:element name="io6:Success">
          </xsl:element>
          <xsl:element name="io6:Warnings">
            <xsl:element name="io6:Warning">
              <!-- a simple data mapping: "$smo/body/in2:executeNclseaNcl_Wesb_User_LookupResponse/in2:executeNclseaNcl_Wesb_User_LookupOutput/p_errorcode"(string) to "Code"(OTA_CodeType) -->
              <xsl:if test="$smo/body/in2:executeNclseaNcl_Wesb_User_LookupResponse/in2:executeNclseaNcl_Wesb_User_LookupOutput/p_errorcode">
                <xsl:attribute name="Code">
                  <xsl:value-of select="$smo/body/in2:executeNclseaNcl_Wesb_User_LookupResponse/in2:executeNclseaNcl_Wesb_User_LookupOutput/p_errorcode"/>
                </xsl:attribute>
              </xsl:if>
              <!-- a simple mapping with no associated source:  to "ShortText"(StringLength1to64) -->
              <xsl:attribute name="ShortText">
                <xsl:value-of select="'Client not Authenticated'"/>
              </xsl:attribute>
              <!-- a simple mapping with no associated source:  to "Type"(OTA_CodeType) -->
              <xsl:attribute name="Type">
                <xsl:value-of select="'3'"/>
              </xsl:attribute>
            </xsl:element>
          </xsl:element>
        </xsl:element>
        <!-- a simple data mapping: "$smo/context/correlation/logId"(string) to "logId"(string) -->
        <xsl:if test="$smo/context/correlation/logId">
          <xsl:element name="logId">
            <xsl:value-of select="$smo/context/correlation/logId"/>
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

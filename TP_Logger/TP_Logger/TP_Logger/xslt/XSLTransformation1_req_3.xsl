<?xml version="1.0" encoding="UTF-8"?>
<!-- @generated mapFile="xslt/XSLTransformation1_req_3.map" md5sum="860c428dac70885363ca06fe8c467b21" version="7.5.100" -->
<!--
*****************************************************************************
*   This file has been generated by the IBM XML Mapping Editor.
*
*   Mapping file:		XSLTransformation1_req_3.map
*   Map declaration(s):	XSLTransformation1_req_3
*   Input file(s):		smo://smo/name%3Dwsdl-primary/message%3D%257Bhttp%253A%252F%252FTP_Logger%252FJDBCOutboundInterface%257DexecuteNclseaNcl_Esb_Insert_Tp_LogBGRequestMsg/xpath%3D%252F/smo.xsd
*   Output file(s):		smo://smo/name%3Dwsdl-primary/message%3D%257Bhttp%253A%252F%252FTP_Logger%252FEmailServiceImport%257DsendSimpleAlertEmailRequestMsg/xpath%3D%252F/smo.xsd
*   XSLT import(s):   	XSLTransformation1_req_3_custom.xsl
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
    xmlns:in="http://TP_Logger/JDBCOutboundInterface"
    xmlns:in2="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_esb_update_tp_logbg"
    xmlns:in3="wsdl.http://TP_Logger/JDBCOutboundInterface"
    xmlns:in4="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_esb_insert_tp_log"
    xmlns:in5="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_esb_insert_tp_logbg"
    xmlns:in6="http://www.ibm.com/xmlns/prod/websphere/bo/6.0.0"
    xmlns:in7="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_esb_update_tp_log"
    xmlns:out="wsdl.http://TP_Logger/EmailServiceImport"
    xmlns:io="http://www.w3.org/2003/05/soap-envelope"
    xmlns:io3="http://www.ibm.com/xmlns/prod/websphere/mq/sca/6.0.0"
    xmlns:io2="http://www.ibm.com/websphere/sibx/smo/v6.0.1"
    xmlns:io4="http://schemas.xmlsoap.org/ws/2004/08/addressing"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xmlns:io5="http://www.ibm.com/xmlns/prod/websphere/http/sca/6.1.0"
    xmlns:out3="http://www.ibm.com/xmlns/prod/websphere/j2ca/email/simplealertemail"
    xmlns:out2="http://TP_Logger/EmailServiceImport"
    xmlns:xs4xs="http://www.w3.org/2001/XMLSchema"
    xmlns:io6="http://www.w3.org/2005/08/addressing"
    xmlns:map="http://TP_Logger/xslt/XSLTransformation1_req_3"
    xmlns:msl="http://www.ibm.com/xmlmap"
    exclude-result-prefixes="in in2 in3 in4 in5 in6 in7 str set math fn regexp dyn dp exsl date map xalan msl"
    version="1.0">

  <!-- imports  -->
  <xsl:import href="XSLTransformation1_req_3_custom.xsl"/>
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
            <xsl:call-template name="map:XSLTransformation1_req_32">
              <xsl:with-param name="smo" select="msl:datamap/dataObject[1]"/>
            </xsl:call-template>
          </xsl:element>
        </msl:datamap>
      </xsl:when>
      <xsl:otherwise>
        <xsl:apply-templates select="io2:smo" mode="map:XSLTransformation1_req_3"/>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <!-- This rule represents an element mapping: "io2:smo" to "io2:smo".  -->
  <xsl:template match="io2:smo"  mode="map:XSLTransformation1_req_3">
    <io2:smo>
      <body>
        <xsl:attribute name="xsi:type">
          <xsl:value-of select="'out:sendSimpleAlertEmailRequestMsg'"/>
        </xsl:attribute>
        <out2:sendSimpleAlertEmail>
          <out2:sendSimpleAlertEmailInput>
            <!-- a simple mapping with no associated source:  to "To"(string) -->
            <xsl:element name="To">
              <xsl:text>lrohr@ncl.com</xsl:text>
            </xsl:element>
            <!-- a simple mapping with no associated source:  to "From"(string) -->
            <xsl:element name="From">
              <xsl:text>esbmon@ncl.com</xsl:text>
            </xsl:element>
            <!-- a simple mapping with no associated source:  to "Subject"(string) -->
            <xsl:element name="Subject">
              <xsl:text>WESB Error Inserting into TP log</xsl:text>
            </xsl:element>
            <!-- a simple data mapping: "context/failInfo/failureString"(string) to "mailContent"(string) -->
            <xsl:if test="context/failInfo/failureString">
              <xsl:element name="mailContent">
                <!-- variables for custom code -->
                <xsl:variable name="failureString" select="context/failInfo/failureString"/>
                <xsl:variable name="record_id" select="body/in:executeNclseaNcl_Esb_Insert_Tp_LogBG/in:executeNclseaNcl_Esb_Insert_Tp_LogBGInput/NclseaNcl_Esb_Insert_Tp_Log/record_id"/>
                <xsl:variable name="request_msg" select="body/in:executeNclseaNcl_Esb_Insert_Tp_LogBG/in:executeNclseaNcl_Esb_Insert_Tp_LogBGInput/NclseaNcl_Esb_Insert_Tp_Log/request_msg"/>
                <xsl:call-template name="FailureStringToMailContent">
                  <xsl:with-param name="record_id" select="$record_id"/>
                  <xsl:with-param name="request_msg" select="$request_msg"/>
                  <xsl:with-param name="failureString" select="$failureString"/>
                </xsl:call-template>
              </xsl:element>
            </xsl:if>
          </out2:sendSimpleAlertEmailInput>
        </out2:sendSimpleAlertEmail>
      </body>
    </io2:smo>
  </xsl:template>

  <!-- This rule represents a type mapping: "io2:smo" to "io2:smo".  -->
  <xsl:template name="map:XSLTransformation1_req_32">
    <xsl:param name="smo"/>
    <body>
      <xsl:attribute name="xsi:type">
        <xsl:value-of select="'out:sendSimpleAlertEmailRequestMsg'"/>
      </xsl:attribute>
      <out2:sendSimpleAlertEmail>
        <out2:sendSimpleAlertEmailInput>
          <!-- a simple mapping with no associated source:  to "To"(string) -->
          <xsl:element name="To">
            <xsl:text>lrohr@ncl.com</xsl:text>
          </xsl:element>
          <!-- a simple mapping with no associated source:  to "From"(string) -->
          <xsl:element name="From">
            <xsl:text>esbmon@ncl.com</xsl:text>
          </xsl:element>
          <!-- a simple mapping with no associated source:  to "Subject"(string) -->
          <xsl:element name="Subject">
            <xsl:text>WESB Error Inserting into TP log</xsl:text>
          </xsl:element>
          <!-- a simple data mapping: "$smo/context/failInfo/failureString"(string) to "mailContent"(string) -->
          <xsl:if test="$smo/context/failInfo/failureString">
            <xsl:element name="mailContent">
              <!-- variables for custom code -->
              <xsl:variable name="failureString" select="$smo/context/failInfo/failureString"/>
              <xsl:variable name="record_id" select="$smo/body/in:executeNclseaNcl_Esb_Insert_Tp_LogBG/in:executeNclseaNcl_Esb_Insert_Tp_LogBGInput/NclseaNcl_Esb_Insert_Tp_Log/record_id"/>
              <xsl:variable name="request_msg" select="$smo/body/in:executeNclseaNcl_Esb_Insert_Tp_LogBG/in:executeNclseaNcl_Esb_Insert_Tp_LogBGInput/NclseaNcl_Esb_Insert_Tp_Log/request_msg"/>
              <xsl:call-template name="FailureStringToMailContent">
                <xsl:with-param name="record_id" select="$record_id"/>
                <xsl:with-param name="request_msg" select="$request_msg"/>
                <xsl:with-param name="failureString" select="$failureString"/>
              </xsl:call-template>
            </xsl:element>
          </xsl:if>
        </out2:sendSimpleAlertEmailInput>
      </out2:sendSimpleAlertEmail>
    </body>
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

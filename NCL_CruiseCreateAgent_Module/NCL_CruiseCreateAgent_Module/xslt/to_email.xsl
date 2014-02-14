<?xml version="1.0" encoding="UTF-8"?>
<!-- @generated mapFile="xslt/to_email.map" md5sum="b8e9e61c68c9db1f096668507b942e8a" version="7.5.100" -->
<!--
*****************************************************************************
*   This file has been generated by the IBM XML Mapping Editor.
*
*   Mapping file:		to_email.map
*   Map declaration(s):	to_email
*   Input file(s):		smo://smo/name%3Dwsdl-primary/correlationContext%3D%257Bhttp%253A%252F%252FAgent_Create_Update%257Dapp_context/message%3D%257Bhttp%253A%252F%252Fversonix.com%252Fapi%252Fdefinitions%257DprocessEncryptDecryptRequest/xpath%3D%252F/smo.xsd
*   Output file(s):		smo://smo/name%3Dwsdl-primary/correlationContext%3D%257Bhttp%253A%252F%252FAgent_Create_Update%257Dapp_context/message%3D%257Bhttp%253A%252F%252FE-Mail_Generic%252FE-Mail_Interface%257DSend_Email1RequestMsg/xpath%3D%252F/smo.xsd
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
    xmlns:io="http://Agent_Create_Update"
    xmlns:io2="http://www.w3.org/2003/05/soap-envelope"
    xmlns:io4="http://www.ibm.com/xmlns/prod/websphere/mq/sca/6.0.0"
    xmlns:io3="http://www.ibm.com/websphere/sibx/smo/v6.0.1"
    xmlns:io5="http://schemas.xmlsoap.org/ws/2004/08/addressing"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xmlns:io7="http://www.ibm.com/xmlns/prod/websphere/http/sca/6.1.0"
    xmlns:io6="http://nclapi/schemas"
    xmlns:out="wsdl.http://E-Mail_Generic/E-Mail_Interface"
    xmlns:xs4xs="http://www.w3.org/2001/XMLSchema"
    xmlns:io8="http://www.w3.org/2005/08/addressing"
    xmlns:out2="http://E-Mail_Generic/E-Mail_Interface"
    xmlns:map="http://Agent_Create_Update/xslt/to_email"
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
              <xsl:value-of select="'io3:ServiceMessageObject'"/>
            </xsl:attribute>
            <xsl:call-template name="map:to_email2">
              <xsl:with-param name="smo" select="msl:datamap/dataObject[1]"/>
            </xsl:call-template>
          </xsl:element>
        </msl:datamap>
      </xsl:when>
      <xsl:otherwise>
        <xsl:apply-templates select="io3:smo" mode="map:to_email"/>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <!-- This rule represents an element mapping: "io3:smo" to "io3:smo".  -->
  <xsl:template match="io3:smo"  mode="map:to_email">
    <io3:smo>
      <body>
        <xsl:attribute name="xsi:type">
          <xsl:value-of select="'out:Send_Email1RequestMsg'"/>
        </xsl:attribute>
        <out2:Send_Email1>
          <!-- a simple mapping with no associated source:  to "To"(string) -->
          <xsl:element name="To">
            <xsl:text>esbteam@ncl.com</xsl:text>
          </xsl:element>
          <!-- a simple mapping with no associated source:  to "Subject"(string) -->
          <xsl:element name="Subject">
            <xsl:text>problem with ENCRYPT/DECRYPT(WESB)</xsl:text>
          </xsl:element>
          <!-- a simple mapping with no associated source:  to "Content"(string) -->
          <xsl:element name="Content">
            <xsl:text>Please verify the WEB service ENCRYPT/DECRYPT</xsl:text>
          </xsl:element>
          <!-- a simple mapping with no associated source:  to "Severity"(string) -->
          <xsl:element name="Severity">
            <xsl:text>LOW</xsl:text>
          </xsl:element>
        </out2:Send_Email1>
      </body>
    </io3:smo>
  </xsl:template>

  <!-- This rule represents a type mapping: "io3:smo" to "io3:smo".  -->
  <xsl:template name="map:to_email2">
    <xsl:param name="smo"/>
    <body>
      <xsl:attribute name="xsi:type">
        <xsl:value-of select="'out:Send_Email1RequestMsg'"/>
      </xsl:attribute>
      <out2:Send_Email1>
        <!-- a simple mapping with no associated source:  to "To"(string) -->
        <xsl:element name="To">
          <xsl:text>esbteam@ncl.com</xsl:text>
        </xsl:element>
        <!-- a simple mapping with no associated source:  to "Subject"(string) -->
        <xsl:element name="Subject">
          <xsl:text>problem with ENCRYPT/DECRYPT(WESB)</xsl:text>
        </xsl:element>
        <!-- a simple mapping with no associated source:  to "Content"(string) -->
        <xsl:element name="Content">
          <xsl:text>Please verify the WEB service ENCRYPT/DECRYPT</xsl:text>
        </xsl:element>
        <!-- a simple mapping with no associated source:  to "Severity"(string) -->
        <xsl:element name="Severity">
          <xsl:text>LOW</xsl:text>
        </xsl:element>
      </out2:Send_Email1>
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

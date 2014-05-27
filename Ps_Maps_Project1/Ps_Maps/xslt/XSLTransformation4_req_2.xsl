<?xml version="1.0" encoding="UTF-8"?>
<!-- @generated mapFile="xslt/XSLTransformation4_req_2.map" md5sum="6481068938b8b76c1fa8ac102c5b4d33" version="7.6.100" -->
<!--
*****************************************************************************
*   This file has been generated by the IBM XML Mapping Editor.
*
*   Mapping file:		XSLTransformation4_req_2.map
*   Map declaration(s):	XSLTransformation4_req_2
*   Input file(s):		smo://smo/name%3Dwsdl-primary/correlationContext%3D%257Bhttp%253A%252F%252FPs_Maps%257DAppContext/xpath%3D%252F/smo.xsd
*   Output file(s):		smo://smo/name%3Dwsdl-primary/correlationContext%3D%257Bhttp%253A%252F%252FPs_Maps%257DAppContext/message%3D%257Bhttp%253A%252F%252Ftempuri.org%252FNCLCaseTools%252FNCLTools%257DPeopleSoft_TO_MAPSSoapIn/xpath%3D%252F/smo.xsd
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
    xmlns:io="http://Ps_Maps"
    xmlns:io2="http://www.w3.org/2003/05/soap-envelope"
    xmlns:io4="http://www.ibm.com/xmlns/prod/websphere/mq/sca/6.0.0"
    xmlns:io3="http://www.ibm.com/websphere/sibx/smo/v6.0.1"
    xmlns:out="wsdl.http://tempuri.org/NCLCaseTools/NCLTools"
    xmlns:io5="http://schemas.xmlsoap.org/ws/2004/08/addressing"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xmlns:io6="http://www.ibm.com/xmlns/prod/websphere/http/sca/6.1.0"
    xmlns:out2="http://tempuri.org/NCLCaseTools/NCLTools"
    xmlns:xs4xs="http://www.w3.org/2001/XMLSchema"
    xmlns:io8="http://www.w3.org/2005/08/addressing"
    xmlns:io7="http://tempuri.org/NewPerson.xsd"
    xmlns:map="http://Ps_Maps/xslt/XSLTransformation4_req_2"
    xmlns:msl="http://www.ibm.com/xmlmap"
    exclude-result-prefixes="str set math fn regexp dyn dp exsl date map xalan msl"
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
            <xsl:call-template name="map:XSLTransformation4_req_22">
              <xsl:with-param name="smo" select="msl:datamap/dataObject[1]"/>
            </xsl:call-template>
          </xsl:element>
        </msl:datamap>
      </xsl:when>
      <xsl:otherwise>
        <xsl:apply-templates select="io3:smo" mode="map:XSLTransformation4_req_2"/>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <!-- This rule represents an element mapping: "io3:smo" to "io3:smo".  -->
  <xsl:template match="io3:smo"  mode="map:XSLTransformation4_req_2">
    <io3:smo>
      <context>
        <!-- a structural mapping: "context/correlation"(AppContext) to "correlation"(AppContext) -->
        <xsl:if test="context/correlation">
          <xsl:copy-of select="context/correlation"/>
        </xsl:if>
      </context>
      <xsl:element name="body">
        <xsl:attribute name="xsi:type">
          <xsl:value-of select="'out:PeopleSoft_TO_MAPSSoapIn'"/>
        </xsl:attribute>
        <xsl:element name="out2:PeopleSoft_TO_MAPS">
          <!-- a simple data mapping: "context/correlation/NewPerson_str"(string) to "out2:XML"(string) -->
          <xsl:if test="context/correlation/NewPerson_str">
            <xsl:element name="out2:XML">
              <xsl:value-of select="context/correlation/NewPerson_str"/>
            </xsl:element>
          </xsl:if>
        </xsl:element>
      </xsl:element>
    </io3:smo>
  </xsl:template>

  <!-- This rule represents a type mapping: "io3:smo" to "io3:smo".  -->
  <xsl:template name="map:XSLTransformation4_req_22">
    <xsl:param name="smo"/>
    <context>
      <!-- a structural mapping: "$smo/context/correlation"(AppContext) to "correlation"(AppContext) -->
      <xsl:if test="$smo/context/correlation">
        <xsl:copy-of select="$smo/context/correlation"/>
      </xsl:if>
    </context>
    <xsl:element name="body">
      <xsl:attribute name="xsi:type">
        <xsl:value-of select="'out:PeopleSoft_TO_MAPSSoapIn'"/>
      </xsl:attribute>
      <xsl:element name="out2:PeopleSoft_TO_MAPS">
        <!-- a simple data mapping: "$smo/context/correlation/NewPerson_str"(string) to "out2:XML"(string) -->
        <xsl:if test="$smo/context/correlation/NewPerson_str">
          <xsl:element name="out2:XML">
            <xsl:value-of select="$smo/context/correlation/NewPerson_str"/>
          </xsl:element>
        </xsl:if>
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
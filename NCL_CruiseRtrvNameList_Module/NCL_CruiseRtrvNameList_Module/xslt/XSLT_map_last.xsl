<?xml version="1.0" encoding="UTF-8"?>
<!-- @generated mapFile="xslt/XSLT_map_last.map" md5sum="3b0d55664f65b48a269176831f6dcca9" version="7.6.100" -->
<!--
*****************************************************************************
*   This file has been generated by the IBM XML Mapping Editor.
*
*   Mapping file:		XSLT_map_last.map
*   Map declaration(s):	XSLT_map_last
*   Input file(s):		smo://smo/name%3Dwsdl-primary/correlationContext%3D%257Bhttp%253A%252F%252FNCL_CruiseRtrvNameList_Module%257DApp_Context/message%3D%257Bhttp%253A%252F%252FNCL_WESB_Shared_Library%252FNCL_CruiseRtrvNameList_Interface%257DPerform_NCL_CruiseRtrvNameListResponseMsg/xpath%3D%252F/smo.xsd
*   Output file(s):		smo://smo/name%3Dwsdl-primary/correlationContext%3D%257Bhttp%253A%252F%252FNCL_CruiseRtrvNameList_Module%257DApp_Context/message%3D%257Bhttp%253A%252F%252FNCL_WESB_Shared_Library%252FNCL_CruiseRtrvNameList_Interface%257DPerform_NCL_CruiseRtrvNameListResponseMsg/xpath%3D%252F/smo.xsd
*   XSLT import(s):   	XSLT_map_last_get_error_code.xsl, XSLT_map_last_Set_Error_Code.xsl
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
    xmlns:io2="wsdl.http://NCL_WESB_Shared_Library/NCL_CruiseRtrvNameList_Interface"
    xmlns:io="http://www.w3.org/2003/05/soap-envelope"
    xmlns:io4="http://www.ibm.com/xmlns/prod/websphere/mq/sca/6.0.0"
    xmlns:io3="http://www.ibm.com/websphere/sibx/smo/v6.0.1"
    xmlns:io5="http://schemas.xmlsoap.org/ws/2004/08/addressing"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xmlns:io7="http://www.ibm.com/xmlns/prod/websphere/http/sca/6.1.0"
    xmlns:io6="http://nclapi/schemas"
    xmlns:io8="http://NCL_WESB_Shared_Library/NCL_CruiseRtrvNameList_Interface"
    xmlns:xs4xs="http://www.w3.org/2001/XMLSchema"
    xmlns:io10="http://www.w3.org/2005/08/addressing"
    xmlns:io9="http://NCL_CruiseRtrvNameList_Module"
    xmlns:map="http://NCL_CruiseRtrvNameList_Module/xslt/XSLT_map_last"
    xmlns:msl="http://www.ibm.com/xmlmap"
    exclude-result-prefixes="str set math fn regexp dyn dp exsl date map xalan msl"
    version="1.0">

  <!-- imports  -->
  <xsl:import href="XSLT_map_last_get_error_code.xsl"/>
  <xsl:import href="XSLT_map_last_Set_Error_Code.xsl"/>
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
            <xsl:call-template name="map:XSLT_map_last2">
              <xsl:with-param name="smo" select="msl:datamap/dataObject[1]"/>
            </xsl:call-template>
          </xsl:element>
        </msl:datamap>
      </xsl:when>
      <xsl:otherwise>
        <xsl:apply-templates select="io3:smo" mode="map:XSLT_map_last"/>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <!-- This rule represents an element mapping: "io3:smo" to "io3:smo".  -->
  <xsl:template match="io3:smo"  mode="map:XSLT_map_last">
    <io3:smo>
      <!-- a head to head mapping -->
      <!-- variables for custom code -->
      <xsl:variable name="GuestInfo" select="body/io8:Perform_NCL_CruiseRtrvNameListResponse/io6:NCL_CruiseRtrvNameListRS/io6:GuestsInfo/io6:GuestInfo"/>
      <xsl:call-template name="GuestInfoToErrorCode">
        <xsl:with-param name="GuestInfo" select="$GuestInfo"/>
      </xsl:call-template>
    </io3:smo>
  </xsl:template>

  <!-- This rule represents a type mapping: "io3:smo" to "io3:smo".  -->
  <xsl:template name="map:XSLT_map_last2">
    <xsl:param name="smo"/>
    <!-- a head to head mapping -->
    <!-- variables for custom code -->
    <xsl:variable name="GuestInfo" select="$smo/body/io8:Perform_NCL_CruiseRtrvNameListResponse/io6:NCL_CruiseRtrvNameListRS/io6:GuestsInfo/io6:GuestInfo"/>
    <xsl:call-template name="GuestInfoToErrorCode">
      <xsl:with-param name="GuestInfo" select="$GuestInfo"/>
    </xsl:call-template>
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

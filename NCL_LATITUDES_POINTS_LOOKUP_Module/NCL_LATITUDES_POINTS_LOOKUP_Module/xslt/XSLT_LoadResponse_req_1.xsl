<?xml version="1.0" encoding="UTF-8"?>
<!-- @generated mapFile="xslt/XSLT_LoadResponse_req_1.map" md5sum="504ed3a644118a09f88d8969bd76ea68" version="7.6.100" -->
<!--
*****************************************************************************
*   This file has been generated by the IBM XML Mapping Editor.
*
*   Mapping file:		XSLT_LoadResponse_req_1.map
*   Map declaration(s):	XSLT_LoadResponse_req_1
*   Input file(s):		smo://smo/name%3Dwsdl-primary/message%3D%257Bhttp%253A%252F%252FNCL_LATITUDES_POINTS_LOOKUP_Module%252FJDBCImport%257DexecuteNclseaNcl_Lat_Lookup_TierResponseMsg/xpath%3D%252F/smo.xsd
*   Output file(s):		smo://smo/name%3Dwsdl-primary/message%3D%257Bhttp%253A%252F%252FNCL_WESB_Shared_Library%252FNCL_LATITUDES_POINTS_LOOKUP_Interface%257DPerform_NCL_LATITUDES_POINTS_LOOKUPResponseMsg/xpath%3D%252F/smo.xsd
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
    xmlns:in="wsdl.http://NCL_LATITUDES_POINTS_LOOKUP_Module/JDBCImport"
    xmlns:in2="http://NCL_LATITUDES_POINTS_LOOKUP_Module/JDBCImport"
    xmlns:in3="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_lat_lookup_tier"
    xmlns:in4="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_lat_lookup_tierp_cursor"
    xmlns:io="http://www.w3.org/2003/05/soap-envelope"
    xmlns:io3="http://www.ibm.com/xmlns/prod/websphere/mq/sca/6.0.0"
    xmlns:io2="http://www.ibm.com/websphere/sibx/smo/v6.0.1"
    xmlns:out="wsdl.http://NCL_WESB_Shared_Library/NCL_LATITUDES_POINTS_LOOKUP_Interface"
    xmlns:io4="http://schemas.xmlsoap.org/ws/2004/08/addressing"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xmlns:io5="http://www.ibm.com/xmlns/prod/websphere/http/sca/6.1.0"
    xmlns:out2="http://NCL_WESB_Shared_Library/NCL_LATITUDES_POINTS_LOOKUP_Interface"
    xmlns:xs4xs="http://www.w3.org/2001/XMLSchema"
    xmlns:io6="http://www.w3.org/2005/08/addressing"
    xmlns:map="http://NCL_LATITUDES_POINTS_LOOKUP_Module/xslt/XSLT_LoadResponse_req_1"
    xmlns:msl="http://www.ibm.com/xmlmap"
    exclude-result-prefixes="in in2 in3 in4 str set math fn regexp dyn dp exsl date map xalan msl"
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
            <xsl:call-template name="map:XSLT_LoadResponse_req_12">
              <xsl:with-param name="smo" select="msl:datamap/dataObject[1]"/>
            </xsl:call-template>
          </xsl:element>
        </msl:datamap>
      </xsl:when>
      <xsl:otherwise>
        <xsl:apply-templates select="io2:smo" mode="map:XSLT_LoadResponse_req_1"/>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <!-- This rule represents an element mapping: "io2:smo" to "io2:smo".  -->
  <xsl:template match="io2:smo"  mode="map:XSLT_LoadResponse_req_1">
    <io2:smo>
      <body>
        <xsl:attribute name="xsi:type">
          <xsl:value-of select="'out:Perform_NCL_LATITUDES_POINTS_LOOKUPResponseMsg'"/>
        </xsl:attribute>
        <out2:Perform_NCL_LATITUDES_POINTS_LOOKUPResponse>
          <NCL_LATITUDES_POINTS_LOOKUP_RESP>
            <TIERS>
              <!-- a for-each transform: "p_cursor"(NclseaNcl_Lat_Lookup_TierP_Cursor) to "TIER"(<Anonymous>) -->
              <xsl:apply-templates select="body/in2:executeNclseaNcl_Lat_Lookup_TierResponse/in2:executeNclseaNcl_Lat_Lookup_TierOutput/p_cursor" mode="localP_cursorToTIER_1037740300"/>
            </TIERS>
          </NCL_LATITUDES_POINTS_LOOKUP_RESP>
        </out2:Perform_NCL_LATITUDES_POINTS_LOOKUPResponse>
      </body>
    </io2:smo>
  </xsl:template>

  <!-- This rule represents a type mapping: "io2:smo" to "io2:smo".  -->
  <xsl:template name="map:XSLT_LoadResponse_req_12">
    <xsl:param name="smo"/>
    <body>
      <xsl:attribute name="xsi:type">
        <xsl:value-of select="'out:Perform_NCL_LATITUDES_POINTS_LOOKUPResponseMsg'"/>
      </xsl:attribute>
      <out2:Perform_NCL_LATITUDES_POINTS_LOOKUPResponse>
        <NCL_LATITUDES_POINTS_LOOKUP_RESP>
          <TIERS>
            <!-- a for-each transform: "p_cursor"(NclseaNcl_Lat_Lookup_TierP_Cursor) to "TIER"(<Anonymous>) -->
            <xsl:apply-templates select="$smo/body/in2:executeNclseaNcl_Lat_Lookup_TierResponse/in2:executeNclseaNcl_Lat_Lookup_TierOutput/p_cursor" mode="localP_cursorToTIER_1037740300"/>
          </TIERS>
        </NCL_LATITUDES_POINTS_LOOKUP_RESP>
      </out2:Perform_NCL_LATITUDES_POINTS_LOOKUPResponse>
    </body>
  </xsl:template>

  <!-- This rule represents a for-each transform: "p_cursor" to "TIER".  -->
  <xsl:template match="p_cursor"  mode="localP_cursorToTIER_1037740300">
    <TIER>
      <!-- a simple data mapping: "tier_level"(string) to "TIER_LEVEL"(string) -->
      <TIER_LEVEL>
        <xsl:value-of select="tier_level"/>
      </TIER_LEVEL>
      <!-- a simple data mapping: "min_points_qty"(decimal) to "MIN_POINTS"(string) -->
      <MIN_POINTS>
        <xsl:value-of select="min_points_qty"/>
      </MIN_POINTS>
      <!-- a simple data mapping: "eff_from_dt"(string) to "EFF_FROM_DT"(string) -->
      <EFF_FROM_DT>
        <xsl:value-of select="eff_from_dt"/>
      </EFF_FROM_DT>
      <!-- a simple data mapping: "eff_to_dt"(string) to "EFF_TO_DT"(string) -->
      <EFF_TO_DT>
        <xsl:value-of select="eff_to_dt"/>
      </EFF_TO_DT>
    </TIER>
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
<?xml version="1.0" encoding="UTF-8"?>
<!-- @generated mapFile="xslt/XSLTransformation2_req_1.map" md5sum="22e1946e9260dd10c78995d0ecf74821" version="7.6.100" -->
<!--
*****************************************************************************
*   This file has been generated by the IBM XML Mapping Editor.
*
*   Mapping file:		XSLTransformation2_req_1.map
*   Map declaration(s):	XSLTransformation2_req_1
*   Input file(s):		smo://smo/name%3Dwsdl-primary/message%3D%257Bhttp%253A%252F%252FLAT_Log_Logger%252FLAT_Log_Interface%257DLAT_Log_InsertUpdateRequestMsg/xpath%3D%252Fbody/smo.xsd
*   Output file(s):		smo://smo/name%3Dwsdl-primary/message%3D%257Bhttp%253A%252F%252FLAT_Log_Logger%252FJDBCImport%257DexecuteNclseaNcl_Lat_Update_LogRequestMsg/xpath%3D%252Fbody/smo.xsd
*   XSLT import(s):   	XSLTransformation2_req_1_custom.xsl
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
    xmlns:in="wsdl.http://LAT_Log_Logger/LAT_Log_Interface"
    xmlns:in2="http://LAT_Log_Logger/LAT_Log_Interface"
    xmlns:out="http://LAT_Log_Logger/JDBCImport"
    xmlns:io="http://www.w3.org/2003/05/soap-envelope"
    xmlns:io3="http://www.ibm.com/xmlns/prod/websphere/mq/sca/6.0.0"
    xmlns:io2="http://www.ibm.com/websphere/sibx/smo/v6.0.1"
    xmlns:io4="http://schemas.xmlsoap.org/ws/2004/08/addressing"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xmlns:io5="http://www.ibm.com/xmlns/prod/websphere/http/sca/6.1.0"
    xmlns:out3="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_lat_insert_log"
    xmlns:out2="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_lat_update_log"
    xmlns:out4="wsdl.http://LAT_Log_Logger/JDBCImport"
    xmlns:xs4xs="http://www.w3.org/2001/XMLSchema"
    xmlns:io6="http://www.w3.org/2005/08/addressing"
    xmlns:map="http://LAT_Log_Logger/xslt/XSLTransformation2_req_1"
    xmlns:msl="http://www.ibm.com/xmlmap"
    exclude-result-prefixes="in in2 str set math fn regexp dyn dp exsl date map xalan msl"
    version="1.0">

  <!-- imports  -->
  <xsl:import href="XSLTransformation2_req_1_custom.xsl"/>
  <xsl:output method="xml" encoding="UTF-8" indent="no"/>

  <!-- root wrapper template  -->
  <xsl:template match="/">
    <xsl:choose>
      <xsl:when test="msl:datamap">
        <msl:datamap>
          <xsl:element name="dataObject">
            <xsl:attribute name="xsi:type">
              <xsl:value-of select="'out4:executeNclseaNcl_Lat_Update_LogRequestMsg'"/>
            </xsl:attribute>
            <xsl:call-template name="map:XSLTransformation2_req_12">
              <xsl:with-param name="body" select="msl:datamap/dataObject[1]"/>
            </xsl:call-template>
          </xsl:element>
        </msl:datamap>
      </xsl:when>
      <xsl:otherwise>
        <xsl:apply-templates select="body" mode="map:XSLTransformation2_req_1"/>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <!-- This rule represents an element mapping: "body" to "body".  -->
  <xsl:template match="body"  mode="map:XSLTransformation2_req_1">
    <body>
      <xsl:attribute name="xsi:type">
        <xsl:value-of select="'out4:executeNclseaNcl_Lat_Update_LogRequestMsg'"/>
      </xsl:attribute>
      <out:executeNclseaNcl_Lat_Update_Log>
        <out:executeNclseaNcl_Lat_Update_LogInput>
          <!-- a simple data mapping: "in2:LAT_Log_InsertUpdate/RESPONSE_TS"(Date_Format) to "response_ts"(string) -->
          <xsl:if test="in2:LAT_Log_InsertUpdate/RESPONSE_TS">
            <xsl:choose>
              <xsl:when test="normalize-space(in2:LAT_Log_InsertUpdate/RESPONSE_TS)">
                <xsl:element name="response_ts">
                  <xsl:value-of select="in2:LAT_Log_InsertUpdate/RESPONSE_TS"/>
                </xsl:element>
              </xsl:when>
              <xsl:otherwise>
                <response_ts xsi:nil="true"/>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:if>
          <!-- a simple data mapping: "in2:LAT_Log_InsertUpdate/XML"(string) to "response_msg"(string) -->
          <xsl:if test="in2:LAT_Log_InsertUpdate/XML">
            <xsl:element name="response_msg">
              <!-- variables for custom code -->
              <xsl:variable name="XML" select="in2:LAT_Log_InsertUpdate/XML"/>
              <xsl:call-template name="XMLToResponse_msg">
                <xsl:with-param name="XML" select="$XML"/>
              </xsl:call-template>
            </xsl:element>
          </xsl:if>
          <!-- a simple data mapping: "in2:LAT_Log_InsertUpdate/RECORD_ID"(string) to "record_id"(string) -->
          <xsl:if test="in2:LAT_Log_InsertUpdate/RECORD_ID">
            <xsl:choose>
              <xsl:when test="normalize-space(in2:LAT_Log_InsertUpdate/RECORD_ID)">
                <xsl:element name="record_id">
                  <xsl:value-of select="in2:LAT_Log_InsertUpdate/RECORD_ID"/>
                </xsl:element>
              </xsl:when>
              <xsl:otherwise>
                <record_id xsi:nil="true"/>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:if>
        </out:executeNclseaNcl_Lat_Update_LogInput>
      </out:executeNclseaNcl_Lat_Update_Log>
    </body>
  </xsl:template>

  <!-- This rule represents a type mapping: "body" to "body".  -->
  <xsl:template name="map:XSLTransformation2_req_12">
    <xsl:param name="body"/>
    <out:executeNclseaNcl_Lat_Update_Log>
      <out:executeNclseaNcl_Lat_Update_LogInput>
        <!-- a simple data mapping: "$body/in2:LAT_Log_InsertUpdate/RESPONSE_TS"(Date_Format) to "response_ts"(string) -->
        <xsl:if test="$body/in2:LAT_Log_InsertUpdate/RESPONSE_TS">
          <xsl:choose>
            <xsl:when test="normalize-space($body/in2:LAT_Log_InsertUpdate/RESPONSE_TS)">
              <xsl:element name="response_ts">
                <xsl:value-of select="$body/in2:LAT_Log_InsertUpdate/RESPONSE_TS"/>
              </xsl:element>
            </xsl:when>
            <xsl:otherwise>
              <response_ts xsi:nil="true"/>
            </xsl:otherwise>
          </xsl:choose>
        </xsl:if>
        <!-- a simple data mapping: "$body/in2:LAT_Log_InsertUpdate/XML"(string) to "response_msg"(string) -->
        <xsl:if test="$body/in2:LAT_Log_InsertUpdate/XML">
          <xsl:element name="response_msg">
            <!-- variables for custom code -->
            <xsl:variable name="XML" select="$body/in2:LAT_Log_InsertUpdate/XML"/>
            <xsl:call-template name="XMLToResponse_msg">
              <xsl:with-param name="XML" select="$XML"/>
            </xsl:call-template>
          </xsl:element>
        </xsl:if>
        <!-- a simple data mapping: "$body/in2:LAT_Log_InsertUpdate/RECORD_ID"(string) to "record_id"(string) -->
        <xsl:if test="$body/in2:LAT_Log_InsertUpdate/RECORD_ID">
          <xsl:choose>
            <xsl:when test="normalize-space($body/in2:LAT_Log_InsertUpdate/RECORD_ID)">
              <xsl:element name="record_id">
                <xsl:value-of select="$body/in2:LAT_Log_InsertUpdate/RECORD_ID"/>
              </xsl:element>
            </xsl:when>
            <xsl:otherwise>
              <record_id xsi:nil="true"/>
            </xsl:otherwise>
          </xsl:choose>
        </xsl:if>
      </out:executeNclseaNcl_Lat_Update_LogInput>
    </out:executeNclseaNcl_Lat_Update_Log>
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

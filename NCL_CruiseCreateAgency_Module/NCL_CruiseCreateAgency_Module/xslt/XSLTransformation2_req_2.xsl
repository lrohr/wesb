<?xml version="1.0" encoding="UTF-8"?>
<!-- @generated mapFile="xslt/XSLTransformation2_req_2.map" md5sum="7ed363de47b52eba081a97a3b8083b00" version="7.6.100" -->
<!--
*****************************************************************************
*   This file has been generated by the IBM XML Mapping Editor.
*
*   Mapping file:		XSLTransformation2_req_2.map
*   Map declaration(s):	XSLTransformation2_req_2
*   Input file(s):		smo://smo/name%3Dwsdl-primary/correlationContext%3D%257Bhttp%253A%252F%252FNCL_CruiseCreateAgency_Module%257DApp_context/message%3D%257Bhttp%253A%252F%252FNCL_CruiseCreateAgency_Module%252FDB_Lookup%257DexecuteNclseaNcl_Wesb_Upd_Agency_Phone_InfoBGResponseMsg/xpath%3D%252F/smo.xsd
*   Output file(s):		smo://smo/name%3Dwsdl-primary/correlationContext%3D%257Bhttp%253A%252F%252FNCL_CruiseCreateAgency_Module%257DApp_context/message%3D%257Bhttp%253A%252F%252FNCL_CruiseCreateAgency_Module%252FDB_Lookup%257DexecuteNclseaNcl_Wesb_Update_Agency_InfoBGResponseMsg/xpath%3D%252F/smo.xsd
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
    xmlns:io="http://NCL_CruiseCreateAgency_Module/DB_Lookup"
    xmlns:io2="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_update_agency_info"
    xmlns:io3="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_update_agency_infobg"
    xmlns:io4="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_upd_agency_phone_info"
    xmlns:io5="wsdl.http://NCL_CruiseCreateAgency_Module/DB_Lookup"
    xmlns:io6="http://www.ibm.com/xmlns/prod/websphere/mq/sca/6.0.0"
    xmlns:io7="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_upd_agency_phone_infobg"
    xmlns:io8="http://schemas.xmlsoap.org/ws/2004/08/addressing"
    xmlns:io9="http://nclapi/schemas"
    xmlns:io10="http://NCL_CruiseCreateAgency_Module"
    xmlns:xs4xs="http://www.w3.org/2001/XMLSchema"
    xmlns:io11="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_upd_agency_email_info"
    xmlns:io12="http://www.w3.org/2003/05/soap-envelope"
    xmlns:io13="http://www.ibm.com/websphere/sibx/smo/v6.0.1"
    xmlns:io14="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_upd_agency_email_infobg"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xmlns:io15="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_upd_agency_addr_info"
    xmlns:io16="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_upd_agency_addr_infobg"
    xmlns:io17="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_create_agency"
    xmlns:io18="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_upd_agc_conpref_info"
    xmlns:io20="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_create_agencybg"
    xmlns:io19="http://www.ibm.com/xmlns/prod/websphere/http/sca/6.1.0"
    xmlns:io22="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_upd_agc_conpref_infobg"
    xmlns:io21="http://www.ibm.com/xmlns/prod/websphere/bo/6.0.0"
    xmlns:io23="http://www.w3.org/2005/08/addressing"
    xmlns:map="http://NCL_CruiseCreateAgency_Module1/xslt/XSLTransformation2_req_2"
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
              <xsl:value-of select="'io13:ServiceMessageObject'"/>
            </xsl:attribute>
            <xsl:call-template name="map:XSLTransformation2_req_22">
              <xsl:with-param name="smo" select="msl:datamap/dataObject[1]"/>
            </xsl:call-template>
          </xsl:element>
        </msl:datamap>
      </xsl:when>
      <xsl:otherwise>
        <xsl:apply-templates select="io13:smo" mode="map:XSLTransformation2_req_2"/>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <!-- This rule represents an element mapping: "io13:smo" to "io13:smo".  -->
  <xsl:template match="io13:smo"  mode="map:XSLTransformation2_req_2">
    <io13:smo>
      <context>
        <correlation>
          <xsl:attribute name="xsi:type">
            <xsl:value-of select="'io10:App_context'"/>
          </xsl:attribute>
          <!-- a structural mapping: "context/correlation/io9:NCL_CruiseCreateAgencyRQ"(<Anonymous>) to "io9:NCL_CruiseCreateAgencyRQ"(<Anonymous>) -->
          <xsl:if test="context/correlation/io9:NCL_CruiseCreateAgencyRQ">
            <xsl:copy-of select="context/correlation/io9:NCL_CruiseCreateAgencyRQ"/>
          </xsl:if>
          <!-- a simple data mapping: "context/correlation/LogID"(string) to "LogID"(string) -->
          <xsl:if test="context/correlation/LogID">
            <xsl:element name="LogID">
              <xsl:value-of select="context/correlation/LogID"/>
            </xsl:element>
          </xsl:if>
          <!-- a simple data mapping: "body/io:executeNclseaNcl_Wesb_Upd_Agency_Phone_InfoBGResponse/io:executeNclseaNcl_Wesb_Upd_Agency_Phone_InfoBGOutput/NclseaNcl_Wesb_Upd_Agency_Phone_Info/p_errorcode"(string) to "ErrorCode"(string) -->
          <xsl:if test="body/io:executeNclseaNcl_Wesb_Upd_Agency_Phone_InfoBGResponse/io:executeNclseaNcl_Wesb_Upd_Agency_Phone_InfoBGOutput/NclseaNcl_Wesb_Upd_Agency_Phone_Info/p_errorcode">
            <xsl:element name="ErrorCode">
              <xsl:value-of select="body/io:executeNclseaNcl_Wesb_Upd_Agency_Phone_InfoBGResponse/io:executeNclseaNcl_Wesb_Upd_Agency_Phone_InfoBGOutput/NclseaNcl_Wesb_Upd_Agency_Phone_Info/p_errorcode"/>
            </xsl:element>
          </xsl:if>
          <!-- a simple data mapping: "body/io:executeNclseaNcl_Wesb_Upd_Agency_Phone_InfoBGResponse/io:executeNclseaNcl_Wesb_Upd_Agency_Phone_InfoBGOutput/NclseaNcl_Wesb_Upd_Agency_Phone_Info/p_errormsg"(string) to "Errormessage"(string) -->
          <xsl:if test="body/io:executeNclseaNcl_Wesb_Upd_Agency_Phone_InfoBGResponse/io:executeNclseaNcl_Wesb_Upd_Agency_Phone_InfoBGOutput/NclseaNcl_Wesb_Upd_Agency_Phone_Info/p_errormsg">
            <xsl:element name="Errormessage">
              <xsl:value-of select="body/io:executeNclseaNcl_Wesb_Upd_Agency_Phone_InfoBGResponse/io:executeNclseaNcl_Wesb_Upd_Agency_Phone_InfoBGOutput/NclseaNcl_Wesb_Upd_Agency_Phone_Info/p_errormsg"/>
            </xsl:element>
          </xsl:if>
        </correlation>
      </context>
    </io13:smo>
  </xsl:template>

  <!-- This rule represents a type mapping: "io13:smo" to "io13:smo".  -->
  <xsl:template name="map:XSLTransformation2_req_22">
    <xsl:param name="smo"/>
    <context>
      <correlation>
        <xsl:attribute name="xsi:type">
          <xsl:value-of select="'io10:App_context'"/>
        </xsl:attribute>
        <!-- a structural mapping: "$smo/context/correlation/io9:NCL_CruiseCreateAgencyRQ"(<Anonymous>) to "io9:NCL_CruiseCreateAgencyRQ"(<Anonymous>) -->
        <xsl:if test="$smo/context/correlation/io9:NCL_CruiseCreateAgencyRQ">
          <xsl:copy-of select="$smo/context/correlation/io9:NCL_CruiseCreateAgencyRQ"/>
        </xsl:if>
        <!-- a simple data mapping: "$smo/context/correlation/LogID"(string) to "LogID"(string) -->
        <xsl:if test="$smo/context/correlation/LogID">
          <xsl:element name="LogID">
            <xsl:value-of select="$smo/context/correlation/LogID"/>
          </xsl:element>
        </xsl:if>
        <!-- a simple data mapping: "$smo/body/io:executeNclseaNcl_Wesb_Upd_Agency_Phone_InfoBGResponse/io:executeNclseaNcl_Wesb_Upd_Agency_Phone_InfoBGOutput/NclseaNcl_Wesb_Upd_Agency_Phone_Info/p_errorcode"(string) to "ErrorCode"(string) -->
        <xsl:if test="$smo/body/io:executeNclseaNcl_Wesb_Upd_Agency_Phone_InfoBGResponse/io:executeNclseaNcl_Wesb_Upd_Agency_Phone_InfoBGOutput/NclseaNcl_Wesb_Upd_Agency_Phone_Info/p_errorcode">
          <xsl:element name="ErrorCode">
            <xsl:value-of select="$smo/body/io:executeNclseaNcl_Wesb_Upd_Agency_Phone_InfoBGResponse/io:executeNclseaNcl_Wesb_Upd_Agency_Phone_InfoBGOutput/NclseaNcl_Wesb_Upd_Agency_Phone_Info/p_errorcode"/>
          </xsl:element>
        </xsl:if>
        <!-- a simple data mapping: "$smo/body/io:executeNclseaNcl_Wesb_Upd_Agency_Phone_InfoBGResponse/io:executeNclseaNcl_Wesb_Upd_Agency_Phone_InfoBGOutput/NclseaNcl_Wesb_Upd_Agency_Phone_Info/p_errormsg"(string) to "Errormessage"(string) -->
        <xsl:if test="$smo/body/io:executeNclseaNcl_Wesb_Upd_Agency_Phone_InfoBGResponse/io:executeNclseaNcl_Wesb_Upd_Agency_Phone_InfoBGOutput/NclseaNcl_Wesb_Upd_Agency_Phone_Info/p_errormsg">
          <xsl:element name="Errormessage">
            <xsl:value-of select="$smo/body/io:executeNclseaNcl_Wesb_Upd_Agency_Phone_InfoBGResponse/io:executeNclseaNcl_Wesb_Upd_Agency_Phone_InfoBGOutput/NclseaNcl_Wesb_Upd_Agency_Phone_Info/p_errormsg"/>
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

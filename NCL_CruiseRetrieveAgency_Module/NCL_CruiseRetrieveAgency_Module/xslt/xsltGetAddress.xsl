<?xml version="1.0" encoding="UTF-8"?>
<!-- @generated mapFile="xslt/xsltGetAddress.map" md5sum="bf0b3b19b4d3c1700a06063a17fc892e" version="7.6.100" -->
<!--
*****************************************************************************
*   This file has been generated by the IBM XML Mapping Editor.
*
*   Mapping file:		xsltGetAddress.map
*   Map declaration(s):	xsltGetAddress
*   Input file(s):		smo://smo/name%3Dwsdl-primary/correlationContext%3D%257Bhttp%253A%252F%252FNCL_CruiseRetrieveAgency_Module%257DappContext/message%3D%257Bhttp%253A%252F%252FNCL_CruiseRetrieveAgency_Module%252FJDBCOutboundInterface%257DexecuteNclseaNcl_Wesb_Ar_Get_Agency_InfoBGResponseMsg/xpath%3D%252F/smo.xsd
*   Output file(s):		smo://smo/name%3Dwsdl-primary/correlationContext%3D%257Bhttp%253A%252F%252FNCL_CruiseRetrieveAgency_Module%257DappContext/message%3D%257Bhttp%253A%252F%252FNCL_CruiseRetrieveAgency_Module%252FJDBCOutboundInterface%257DexecuteNclseaNcl_Wesb_Ar_Get_Agency_AddressBGRequestMsg/xpath%3D%252F/smo.xsd
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
    xmlns:io2="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_ar_get_agc_cont_prfp_cursor"
    xmlns:io="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_ar_get_agc_cont_prfbg"
    xmlns:io3="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_ar_get_agency_email"
    xmlns:io4="wsdl.http://NCL_CruiseRetrieveAgency_Module/JDBCOutboundInterface"
    xmlns:io5="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_ar_get_agency_info"
    xmlns:io6="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_ar_get_agency_emailbg"
    xmlns:io7="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_ar_get_agency_emailp_cursor"
    xmlns:io8="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_ar_get_agency_infobg"
    xmlns:io9="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_ar_get_agency_infop_cursor"
    xmlns:io10="http://www.ibm.com/xmlns/prod/websphere/mq/sca/6.0.0"
    xmlns:io12="http://schemas.xmlsoap.org/ws/2004/08/addressing"
    xmlns:io11="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_ar_get_agency_phone"
    xmlns:io13="http://nclapi/schemas"
    xmlns:io16="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_ar_get_agency_phonebg"
    xmlns:io15="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_ar_get_agency_phonep_cursor"
    xmlns:io14="http://NCL_CruiseRetrieveAgency_Module"
    xmlns:io17="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_ar_get_agency_address"
    xmlns:xs4xs="http://www.w3.org/2001/XMLSchema"
    xmlns:io18="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_ar_get_agency_addressp_cursor"
    xmlns:io19="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_ar_get_agency_addressbg"
    xmlns:io20="http://www.w3.org/2003/05/soap-envelope"
    xmlns:io21="http://www.ibm.com/websphere/sibx/smo/v6.0.1"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xmlns:io22="http://www.ibm.com/xmlns/prod/websphere/http/sca/6.1.0"
    xmlns:io24="http://www.ibm.com/xmlns/prod/websphere/bo/6.0.0"
    xmlns:io23="http://NCL_CruiseRetrieveAgency_Module/JDBCOutboundInterface"
    xmlns:io25="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_ar_get_agc_cont_prf"
    xmlns:io26="http://www.w3.org/2005/08/addressing"
    xmlns:map="http://NCL_CruiseRetrieveAgency_Module/xslt/xsltGetAddress"
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
              <xsl:value-of select="'io21:ServiceMessageObject'"/>
            </xsl:attribute>
            <xsl:call-template name="map:xsltGetAddress2">
              <xsl:with-param name="smo" select="msl:datamap/dataObject[1]"/>
            </xsl:call-template>
          </xsl:element>
        </msl:datamap>
      </xsl:when>
      <xsl:otherwise>
        <xsl:apply-templates select="io21:smo" mode="map:xsltGetAddress"/>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <!-- This rule represents an element mapping: "io21:smo" to "io21:smo".  -->
  <xsl:template match="io21:smo"  mode="map:xsltGetAddress">
    <io21:smo>
      <context>
        <correlation>
          <xsl:attribute name="xsi:type">
            <xsl:value-of select="'io14:appContext'"/>
          </xsl:attribute>
          <!-- a simple data mapping: "context/correlation/logId"(string) to "logId"(string) -->
          <xsl:if test="context/correlation/logId">
            <xsl:element name="logId">
              <xsl:value-of select="context/correlation/logId"/>
            </xsl:element>
          </xsl:if>
          <!-- a simple data mapping: "body/io23:executeNclseaNcl_Wesb_Ar_Get_Agency_InfoBGResponse/io23:executeNclseaNcl_Wesb_Ar_Get_Agency_InfoBGOutput/NclseaNcl_Wesb_Ar_Get_Agency_Info/p_errorcode"(string) to "errorCode"(string) -->
          <xsl:if test="body/io23:executeNclseaNcl_Wesb_Ar_Get_Agency_InfoBGResponse/io23:executeNclseaNcl_Wesb_Ar_Get_Agency_InfoBGOutput/NclseaNcl_Wesb_Ar_Get_Agency_Info/p_errorcode">
            <xsl:element name="errorCode">
              <xsl:value-of select="body/io23:executeNclseaNcl_Wesb_Ar_Get_Agency_InfoBGResponse/io23:executeNclseaNcl_Wesb_Ar_Get_Agency_InfoBGOutput/NclseaNcl_Wesb_Ar_Get_Agency_Info/p_errorcode"/>
            </xsl:element>
          </xsl:if>
          <!-- a simple data mapping: "context/correlation/errorCode"(string) to "errorCode"(string) -->
          <xsl:if test="context/correlation/errorCode">
            <xsl:element name="errorCode">
              <xsl:value-of select="context/correlation/errorCode"/>
            </xsl:element>
          </xsl:if>
          <!-- a simple data mapping: "context/correlation/errorText"(string) to "errorText"(string) -->
          <xsl:if test="context/correlation/errorText">
            <xsl:element name="errorText">
              <xsl:value-of select="context/correlation/errorText"/>
            </xsl:element>
          </xsl:if>
          <!-- a structural mapping: "context/correlation/io13:NCL_CruiseRetrieveAgencyRQ"(<Anonymous>) to "io13:NCL_CruiseRetrieveAgencyRQ"(<Anonymous>) -->
          <xsl:if test="context/correlation/io13:NCL_CruiseRetrieveAgencyRQ">
            <xsl:copy-of select="context/correlation/io13:NCL_CruiseRetrieveAgencyRQ"/>
          </xsl:if>
          <xsl:element name="info">
            <xsl:element name="Get_Agency_Info">
              <!-- a for-each transform: "p_cursor"(NclseaNcl_Wesb_Ar_Get_Agency_InfoP_Cursor) to "P_CURSOR"(<Anonymous>) -->
              <xsl:apply-templates select="body/io23:executeNclseaNcl_Wesb_Ar_Get_Agency_InfoBGResponse/io23:executeNclseaNcl_Wesb_Ar_Get_Agency_InfoBGOutput/NclseaNcl_Wesb_Ar_Get_Agency_Info/p_cursor" mode="localP_cursorToP_CURSOR_267116545"/>
            </xsl:element>
          </xsl:element>
        </correlation>
      </context>
      <xsl:element name="body">
        <xsl:attribute name="xsi:type">
          <xsl:value-of select="'io4:executeNclseaNcl_Wesb_Ar_Get_Agency_AddressBGRequestMsg'"/>
        </xsl:attribute>
        <xsl:element name="io23:executeNclseaNcl_Wesb_Ar_Get_Agency_AddressBG">
          <xsl:element name="io23:executeNclseaNcl_Wesb_Ar_Get_Agency_AddressBGInput">
            <xsl:element name="NclseaNcl_Wesb_Ar_Get_Agency_Address">
              <!-- a simple data mapping: "context/correlation/io13:NCL_CruiseRetrieveAgencyRQ/io13:AgencyInfo/io13:RequestorID/@ID"(StringLength1to32) to "p_agencyid"(int) -->
              <xsl:if test="context/correlation/io13:NCL_CruiseRetrieveAgencyRQ/io13:AgencyInfo/io13:RequestorID/@ID">
                <xsl:element name="p_agencyid">
                  <xsl:value-of select="context/correlation/io13:NCL_CruiseRetrieveAgencyRQ/io13:AgencyInfo/io13:RequestorID/@ID"/>
                </xsl:element>
              </xsl:if>
            </xsl:element>
          </xsl:element>
        </xsl:element>
      </xsl:element>
    </io21:smo>
  </xsl:template>

  <!-- This rule represents a type mapping: "io21:smo" to "io21:smo".  -->
  <xsl:template name="map:xsltGetAddress2">
    <xsl:param name="smo"/>
    <context>
      <correlation>
        <xsl:attribute name="xsi:type">
          <xsl:value-of select="'io14:appContext'"/>
        </xsl:attribute>
        <!-- a simple data mapping: "$smo/context/correlation/logId"(string) to "logId"(string) -->
        <xsl:if test="$smo/context/correlation/logId">
          <xsl:element name="logId">
            <xsl:value-of select="$smo/context/correlation/logId"/>
          </xsl:element>
        </xsl:if>
        <!-- a simple data mapping: "$smo/body/io23:executeNclseaNcl_Wesb_Ar_Get_Agency_InfoBGResponse/io23:executeNclseaNcl_Wesb_Ar_Get_Agency_InfoBGOutput/NclseaNcl_Wesb_Ar_Get_Agency_Info/p_errorcode"(string) to "errorCode"(string) -->
        <xsl:if test="$smo/body/io23:executeNclseaNcl_Wesb_Ar_Get_Agency_InfoBGResponse/io23:executeNclseaNcl_Wesb_Ar_Get_Agency_InfoBGOutput/NclseaNcl_Wesb_Ar_Get_Agency_Info/p_errorcode">
          <xsl:element name="errorCode">
            <xsl:value-of select="$smo/body/io23:executeNclseaNcl_Wesb_Ar_Get_Agency_InfoBGResponse/io23:executeNclseaNcl_Wesb_Ar_Get_Agency_InfoBGOutput/NclseaNcl_Wesb_Ar_Get_Agency_Info/p_errorcode"/>
          </xsl:element>
        </xsl:if>
        <!-- a simple data mapping: "$smo/context/correlation/errorCode"(string) to "errorCode"(string) -->
        <xsl:if test="$smo/context/correlation/errorCode">
          <xsl:element name="errorCode">
            <xsl:value-of select="$smo/context/correlation/errorCode"/>
          </xsl:element>
        </xsl:if>
        <!-- a simple data mapping: "$smo/context/correlation/errorText"(string) to "errorText"(string) -->
        <xsl:if test="$smo/context/correlation/errorText">
          <xsl:element name="errorText">
            <xsl:value-of select="$smo/context/correlation/errorText"/>
          </xsl:element>
        </xsl:if>
        <!-- a structural mapping: "$smo/context/correlation/io13:NCL_CruiseRetrieveAgencyRQ"(<Anonymous>) to "io13:NCL_CruiseRetrieveAgencyRQ"(<Anonymous>) -->
        <xsl:if test="$smo/context/correlation/io13:NCL_CruiseRetrieveAgencyRQ">
          <xsl:copy-of select="$smo/context/correlation/io13:NCL_CruiseRetrieveAgencyRQ"/>
        </xsl:if>
        <xsl:element name="info">
          <xsl:element name="Get_Agency_Info">
            <!-- a for-each transform: "p_cursor"(NclseaNcl_Wesb_Ar_Get_Agency_InfoP_Cursor) to "P_CURSOR"(<Anonymous>) -->
            <xsl:apply-templates select="$smo/body/io23:executeNclseaNcl_Wesb_Ar_Get_Agency_InfoBGResponse/io23:executeNclseaNcl_Wesb_Ar_Get_Agency_InfoBGOutput/NclseaNcl_Wesb_Ar_Get_Agency_Info/p_cursor" mode="localP_cursorToP_CURSOR_267116545"/>
          </xsl:element>
        </xsl:element>
      </correlation>
    </context>
    <xsl:element name="body">
      <xsl:attribute name="xsi:type">
        <xsl:value-of select="'io4:executeNclseaNcl_Wesb_Ar_Get_Agency_AddressBGRequestMsg'"/>
      </xsl:attribute>
      <xsl:element name="io23:executeNclseaNcl_Wesb_Ar_Get_Agency_AddressBG">
        <xsl:element name="io23:executeNclseaNcl_Wesb_Ar_Get_Agency_AddressBGInput">
          <xsl:element name="NclseaNcl_Wesb_Ar_Get_Agency_Address">
            <!-- a simple data mapping: "$smo/context/correlation/io13:NCL_CruiseRetrieveAgencyRQ/io13:AgencyInfo/io13:RequestorID/@ID"(StringLength1to32) to "p_agencyid"(int) -->
            <xsl:if test="$smo/context/correlation/io13:NCL_CruiseRetrieveAgencyRQ/io13:AgencyInfo/io13:RequestorID/@ID">
              <xsl:element name="p_agencyid">
                <xsl:value-of select="$smo/context/correlation/io13:NCL_CruiseRetrieveAgencyRQ/io13:AgencyInfo/io13:RequestorID/@ID"/>
              </xsl:element>
            </xsl:if>
          </xsl:element>
        </xsl:element>
      </xsl:element>
    </xsl:element>
  </xsl:template>

  <!-- This rule represents a for-each transform: "p_cursor" to "P_CURSOR".  -->
  <xsl:template match="p_cursor"  mode="localP_cursorToP_CURSOR_267116545">
    <P_CURSOR>
      <!-- a simple data mapping: "agency_id"(decimal) to "AGENCY_ID"(decimal) -->
      <AGENCY_ID>
        <xsl:value-of select="agency_id"/>
      </AGENCY_ID>
      <!-- a simple data mapping: "taxpayer_number"(string) to "TAXPAYER_NUMBER"(string) -->
      <TAXPAYER_NUMBER>
        <xsl:value-of select="taxpayer_number"/>
      </TAXPAYER_NUMBER>
      <!-- a simple data mapping: "iata_number"(string) to "IATA_NUMBER"(string) -->
      <IATA_NUMBER>
        <xsl:value-of select="iata_number"/>
      </IATA_NUMBER>
      <!-- a simple data mapping: "arc_number"(string) to "ARC_NUMBER"(string) -->
      <ARC_NUMBER>
        <xsl:value-of select="arc_number"/>
      </ARC_NUMBER>
      <!-- a simple data mapping: "clia_number"(string) to "CLIA_NUMBER"(string) -->
      <CLIA_NUMBER>
        <xsl:value-of select="clia_number"/>
      </CLIA_NUMBER>
      <!-- a simple data mapping: "agency_name"(string) to "AGENCY_NAME"(string) -->
      <AGENCY_NAME>
        <xsl:value-of select="agency_name"/>
      </AGENCY_NAME>
      <!-- a simple data mapping: "agency_type"(string) to "AGENCY_TYPE"(string) -->
      <AGENCY_TYPE>
        <xsl:value-of select="agency_type"/>
      </AGENCY_TYPE>
      <!-- a simple data mapping: "office_code"(string) to "OFFICE_CODE"(string) -->
      <OFFICE_CODE>
        <xsl:value-of select="office_code"/>
      </OFFICE_CODE>
      <!-- a simple data mapping: "agency_classification_code"(string) to "AGENCY_CLASSIFICATION_CODE"(string) -->
      <AGENCY_CLASSIFICATION_CODE>
        <xsl:value-of select="agency_classification_code"/>
      </AGENCY_CLASSIFICATION_CODE>
      <!-- a simple data mapping: "agency_classification_name"(string) to "AGENCY_CLASSIFICATION_NAME"(string) -->
      <AGENCY_CLASSIFICATION_NAME>
        <xsl:value-of select="agency_classification_name"/>
      </AGENCY_CLASSIFICATION_NAME>
      <!-- a simple data mapping: "drs_delivery_pref_prekit"(string) to "DRS_DELIVERY_PREF_PREKIT"(string) -->
      <DRS_DELIVERY_PREF_PREKIT>
        <xsl:value-of select="drs_delivery_pref_prekit"/>
      </DRS_DELIVERY_PREF_PREKIT>
      <!-- a simple data mapping: "drs_delivery_pref_final"(string) to "DRS_DELIVERY_PREF_FINAL"(string) -->
      <DRS_DELIVERY_PREF_FINAL>
        <xsl:value-of select="drs_delivery_pref_final"/>
      </DRS_DELIVERY_PREF_FINAL>
    </P_CURSOR>
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

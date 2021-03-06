<?xml version="1.0" encoding="UTF-8"?>
<!-- @generated mapFile="xslt/xsltGetEmail.map" md5sum="65c44d756d47856e94b7e20952089c3a" version="7.6.100" -->
<!--
*****************************************************************************
*   This file has been generated by the IBM XML Mapping Editor.
*
*   Mapping file:		xsltGetEmail.map
*   Map declaration(s):	xsltGetEmail
*   Input file(s):		smo://smo/name%3Dwsdl-primary/correlationContext%3D%257Bhttp%253A%252F%252FNCL_CruiseRetrieveAgency_Module%257DappContext/message%3D%257Bhttp%253A%252F%252FNCL_CruiseRetrieveAgency_Module%252FJDBCOutboundInterface%257DexecuteNclseaNcl_Wesb_Ar_Get_Agency_PhoneBGResponseMsg/xpath%3D%252F/smo.xsd
*   Output file(s):		smo://smo/name%3Dwsdl-primary/correlationContext%3D%257Bhttp%253A%252F%252FNCL_CruiseRetrieveAgency_Module%257DappContext/message%3D%257Bhttp%253A%252F%252FNCL_CruiseRetrieveAgency_Module%252FJDBCOutboundInterface%257DexecuteNclseaNcl_Wesb_Ar_Get_Agency_EmailBGRequestMsg/xpath%3D%252F/smo.xsd
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
    xmlns:io6="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_ar_get_agency_emailp_cursor"
    xmlns:io7="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_ar_get_agency_emailbg"
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
    xmlns:io18="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_ar_get_agency_addressbg"
    xmlns:io19="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_ar_get_agency_addressp_cursor"
    xmlns:io20="http://www.w3.org/2003/05/soap-envelope"
    xmlns:io21="http://www.ibm.com/websphere/sibx/smo/v6.0.1"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xmlns:io22="http://www.ibm.com/xmlns/prod/websphere/http/sca/6.1.0"
    xmlns:io24="http://www.ibm.com/xmlns/prod/websphere/bo/6.0.0"
    xmlns:io23="http://NCL_CruiseRetrieveAgency_Module/JDBCOutboundInterface"
    xmlns:io25="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_ar_get_agc_cont_prf"
    xmlns:io26="http://www.w3.org/2005/08/addressing"
    xmlns:map="http://NCL_CruiseRetrieveAgency_Module/xslt/xsltGetEmail"
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
            <xsl:call-template name="map:xsltGetEmail2">
              <xsl:with-param name="smo" select="msl:datamap/dataObject[1]"/>
            </xsl:call-template>
          </xsl:element>
        </msl:datamap>
      </xsl:when>
      <xsl:otherwise>
        <xsl:apply-templates select="io21:smo" mode="map:xsltGetEmail"/>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <!-- This rule represents an element mapping: "io21:smo" to "io21:smo".  -->
  <xsl:template match="io21:smo"  mode="map:xsltGetEmail">
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
          <!-- a structural mapping: "context/correlation/address"(<Anonymous>) to "address"(<Anonymous>) -->
          <xsl:if test="context/correlation/address">
            <xsl:copy-of select="context/correlation/address"/>
          </xsl:if>
          <!-- a structural mapping: "context/correlation/info"(<Anonymous>) to "info"(<Anonymous>) -->
          <xsl:if test="context/correlation/info">
            <xsl:copy-of select="context/correlation/info"/>
          </xsl:if>
          <xsl:element name="phone">
            <xsl:element name="Get_AgencyPhoneInfo">
              <!-- a for-each transform: "p_cursor"(NclseaNcl_Wesb_Ar_Get_Agency_PhoneP_Cursor) to "P_CURSOR"(<Anonymous>) -->
              <xsl:apply-templates select="body/io23:executeNclseaNcl_Wesb_Ar_Get_Agency_PhoneBGResponse/io23:executeNclseaNcl_Wesb_Ar_Get_Agency_PhoneBGOutput/NclseaNcl_Wesb_Ar_Get_Agency_Phone/p_cursor" mode="localP_cursorToP_CURSOR_1223252124"/>
            </xsl:element>
          </xsl:element>
        </correlation>
      </context>
      <xsl:element name="body">
        <xsl:attribute name="xsi:type">
          <xsl:value-of select="'io4:executeNclseaNcl_Wesb_Ar_Get_Agency_EmailBGRequestMsg'"/>
        </xsl:attribute>
        <xsl:element name="io23:executeNclseaNcl_Wesb_Ar_Get_Agency_EmailBG">
          <xsl:element name="io23:executeNclseaNcl_Wesb_Ar_Get_Agency_EmailBGInput">
            <xsl:element name="NclseaNcl_Wesb_Ar_Get_Agency_Email">
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
  <xsl:template name="map:xsltGetEmail2">
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
        <!-- a structural mapping: "$smo/context/correlation/address"(<Anonymous>) to "address"(<Anonymous>) -->
        <xsl:if test="$smo/context/correlation/address">
          <xsl:copy-of select="$smo/context/correlation/address"/>
        </xsl:if>
        <!-- a structural mapping: "$smo/context/correlation/info"(<Anonymous>) to "info"(<Anonymous>) -->
        <xsl:if test="$smo/context/correlation/info">
          <xsl:copy-of select="$smo/context/correlation/info"/>
        </xsl:if>
        <xsl:element name="phone">
          <xsl:element name="Get_AgencyPhoneInfo">
            <!-- a for-each transform: "p_cursor"(NclseaNcl_Wesb_Ar_Get_Agency_PhoneP_Cursor) to "P_CURSOR"(<Anonymous>) -->
            <xsl:apply-templates select="$smo/body/io23:executeNclseaNcl_Wesb_Ar_Get_Agency_PhoneBGResponse/io23:executeNclseaNcl_Wesb_Ar_Get_Agency_PhoneBGOutput/NclseaNcl_Wesb_Ar_Get_Agency_Phone/p_cursor" mode="localP_cursorToP_CURSOR_1223252124"/>
          </xsl:element>
        </xsl:element>
      </correlation>
    </context>
    <xsl:element name="body">
      <xsl:attribute name="xsi:type">
        <xsl:value-of select="'io4:executeNclseaNcl_Wesb_Ar_Get_Agency_EmailBGRequestMsg'"/>
      </xsl:attribute>
      <xsl:element name="io23:executeNclseaNcl_Wesb_Ar_Get_Agency_EmailBG">
        <xsl:element name="io23:executeNclseaNcl_Wesb_Ar_Get_Agency_EmailBGInput">
          <xsl:element name="NclseaNcl_Wesb_Ar_Get_Agency_Email">
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
  <xsl:template match="p_cursor"  mode="localP_cursorToP_CURSOR_1223252124">
    <P_CURSOR>
      <!-- a simple data mapping: "agency_id"(decimal) to "AGENCY_ID"(decimal) -->
      <AGENCY_ID>
        <xsl:value-of select="agency_id"/>
      </AGENCY_ID>
      <!-- a simple data mapping: "seq_number"(decimal) to "SEQ_NUMBER"(decimal) -->
      <SEQ_NUMBER>
        <xsl:value-of select="seq_number"/>
      </SEQ_NUMBER>
      <!-- a simple data mapping: "phone_type"(string) to "PHONE_TYPE"(string) -->
      <PHONE_TYPE>
        <xsl:value-of select="phone_type"/>
      </PHONE_TYPE>
      <!-- a simple data mapping: "phone_number"(string) to "PHONE_NUMBER"(string) -->
      <PHONE_NUMBER>
        <xsl:value-of select="phone_number"/>
      </PHONE_NUMBER>
      <!-- a simple data mapping: "is_phone_primary"(string) to "IS_PHONE_PRIMARY"(string) -->
      <IS_PHONE_PRIMARY>
        <xsl:value-of select="is_phone_primary"/>
      </IS_PHONE_PRIMARY>
      <!-- a simple data mapping: "is_phone_secondary"(string) to "IS_PHONE_SECONDARY"(string) -->
      <IS_PHONE_SECONDARY>
        <xsl:value-of select="is_phone_secondary"/>
      </IS_PHONE_SECONDARY>
      <!-- a simple data mapping: "is_phone_fax"(string) to "IS_PHONE_FAX"(string) -->
      <IS_PHONE_FAX>
        <xsl:value-of select="is_phone_fax"/>
      </IS_PHONE_FAX>
      <!-- a simple data mapping: "fax_attention_line"(string) to "FAX_ATTENTION_LINE"(string) -->
      <FAX_ATTENTION_LINE>
        <xsl:value-of select="fax_attention_line"/>
      </FAX_ATTENTION_LINE>
      <!-- a simple data mapping: "comments"(string) to "COMMENTS"(string) -->
      <COMMENTS>
        <xsl:value-of select="comments"/>
      </COMMENTS>
      <!-- a simple data mapping: "agency_phone_id"(decimal) to "AGENCY_PHONE_ID"(decimal) -->
      <AGENCY_PHONE_ID>
        <xsl:value-of select="agency_phone_id"/>
      </AGENCY_PHONE_ID>
      <!-- a simple data mapping: "phone_ext"(string) to "PHONE_EXT"(string) -->
      <PHONE_EXT>
        <xsl:value-of select="phone_ext"/>
      </PHONE_EXT>
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

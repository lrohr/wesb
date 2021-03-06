<?xml version="1.0" encoding="UTF-8"?>
<!-- @generated mapFile="xslt/xsltStoreAgencyData.map" md5sum="6b228eb70c05664e081304d90576a546" version="7.6.100" -->
<!--
*****************************************************************************
*   This file has been generated by the IBM XML Mapping Editor.
*
*   Mapping file:		xsltStoreAgencyData.map
*   Map declaration(s):	xsltStoreAgencyData
*   Input file(s):		smo://smo/name%3Dwsdl-primary/correlationContext%3D%257Bhttp%253A%252F%252FNCL_CruiseRetrieveAgent_Module%257DappContext/message%3D%257Bhttp%253A%252F%252FNCL_CruiseRetrieveAgent_Module%252FJDBCOutboundInterface%257DexecuteNclseaNcl_Wesb_Get_Agy_For_AgtreqResponseMsg/xpath%3D%252F/smo.xsd
*   Output file(s):		smo://smo/name%3Dwsdl-primary/correlationContext%3D%257Bhttp%253A%252F%252FNCL_CruiseRetrieveAgent_Module%257DappContext/message%3D%257Bhttp%253A%252F%252FNCL_WESB_Shared_Library%252FNCL_CruiseRetrieveAgent_Interface%257DPerform_NCL_CruiseRetrieveAgentResponseMsg/xpath%3D%252F/smo.xsd
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
    xmlns:in7="wsdl.http://NCL_CruiseRetrieveAgent_Module/JDBCOutboundInterface"
    xmlns:in="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_get_agent_with_paging"
    xmlns:in2="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_get_agy_for_agtreq"
    xmlns:in8="http://NCL_CruiseRetrieveAgent_Module/JDBCOutboundInterface"
    xmlns:in3="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_get_agent_with_pagingp_cursor"
    xmlns:in4="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_get_agent_with_paged"
    xmlns:in5="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_get_agy_for_agtreqp_cursor"
    xmlns:in6="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_get_agent_with_pagedp_cursor"
    xmlns:out="http://NCL_WESB_Shared_Library/NCL_CruiseRetrieveAgent_Interface"
    xmlns:io="http://NCL_CruiseRetrieveAgent_Module"
    xmlns:io2="http://www.w3.org/2003/05/soap-envelope"
    xmlns:io4="http://www.ibm.com/xmlns/prod/websphere/mq/sca/6.0.0"
    xmlns:io3="http://www.ibm.com/websphere/sibx/smo/v6.0.1"
    xmlns:io5="http://schemas.xmlsoap.org/ws/2004/08/addressing"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xmlns:io7="http://www.ibm.com/xmlns/prod/websphere/http/sca/6.1.0"
    xmlns:io6="http://nclapi/schemas"
    xmlns:out2="wsdl.http://NCL_WESB_Shared_Library/NCL_CruiseRetrieveAgent_Interface"
    xmlns:xs4xs="http://www.w3.org/2001/XMLSchema"
    xmlns:io8="http://www.w3.org/2005/08/addressing"
    xmlns:map="http://NCL_CruiseRetrieveAgent_Module/xslt/xsltStoreAgencyData"
    xmlns:msl="http://www.ibm.com/xmlmap"
    exclude-result-prefixes="in7 in in2 in8 in3 in4 in5 in6 str set math fn regexp dyn dp exsl date map xalan msl"
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
            <xsl:call-template name="map:xsltStoreAgencyData2">
              <xsl:with-param name="smo" select="msl:datamap/dataObject[1]"/>
            </xsl:call-template>
          </xsl:element>
        </msl:datamap>
      </xsl:when>
      <xsl:otherwise>
        <xsl:apply-templates select="io3:smo" mode="map:xsltStoreAgencyData"/>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <!-- This rule represents an element mapping: "io3:smo" to "io3:smo".  -->
  <xsl:template match="io3:smo"  mode="map:xsltStoreAgencyData">
    <io3:smo>
      <context>
        <correlation>
          <xsl:attribute name="xsi:type">
            <xsl:value-of select="'io:appContext'"/>
          </xsl:attribute>
          <!-- a simple data mapping: "context/correlation/logId"(string) to "logId"(string) -->
          <xsl:if test="context/correlation/logId">
            <xsl:element name="logId">
              <xsl:value-of select="context/correlation/logId"/>
            </xsl:element>
          </xsl:if>
          <!-- a structural mapping: "context/correlation/io6:NCL_CruiseRetrieveAgentRQ"(<Anonymous>) to "io6:NCL_CruiseRetrieveAgentRQ"(<Anonymous>) -->
          <xsl:if test="context/correlation/io6:NCL_CruiseRetrieveAgentRQ">
            <xsl:copy-of select="context/correlation/io6:NCL_CruiseRetrieveAgentRQ"/>
          </xsl:if>
          <xsl:element name="Agent_work_agency">
            <xsl:element name="spGetAgencyInfo">
              <!-- a for-each transform: "p_cursor"(NclseaNcl_Wesb_Get_Agy_For_AgtreqP_Cursor) to "P_CURSOR"(<Anonymous>) -->
              <xsl:apply-templates select="body/in8:executeNclseaNcl_Wesb_Get_Agy_For_AgtreqResponse/in8:executeNclseaNcl_Wesb_Get_Agy_For_AgtreqOutput/p_cursor" mode="localP_cursorToP_CURSOR_1818424196"/>
            </xsl:element>
          </xsl:element>
          <!-- a structural mapping: "context/correlation/agent_work_getAgent"(<Anonymous>) to "agent_work_getAgent"(<Anonymous>) -->
          <xsl:if test="context/correlation/agent_work_getAgent">
            <xsl:copy-of select="context/correlation/agent_work_getAgent"/>
          </xsl:if>
        </correlation>
      </context>
    </io3:smo>
  </xsl:template>

  <!-- This rule represents a type mapping: "io3:smo" to "io3:smo".  -->
  <xsl:template name="map:xsltStoreAgencyData2">
    <xsl:param name="smo"/>
    <context>
      <correlation>
        <xsl:attribute name="xsi:type">
          <xsl:value-of select="'io:appContext'"/>
        </xsl:attribute>
        <!-- a simple data mapping: "$smo/context/correlation/logId"(string) to "logId"(string) -->
        <xsl:if test="$smo/context/correlation/logId">
          <xsl:element name="logId">
            <xsl:value-of select="$smo/context/correlation/logId"/>
          </xsl:element>
        </xsl:if>
        <!-- a structural mapping: "$smo/context/correlation/io6:NCL_CruiseRetrieveAgentRQ"(<Anonymous>) to "io6:NCL_CruiseRetrieveAgentRQ"(<Anonymous>) -->
        <xsl:if test="$smo/context/correlation/io6:NCL_CruiseRetrieveAgentRQ">
          <xsl:copy-of select="$smo/context/correlation/io6:NCL_CruiseRetrieveAgentRQ"/>
        </xsl:if>
        <xsl:element name="Agent_work_agency">
          <xsl:element name="spGetAgencyInfo">
            <!-- a for-each transform: "p_cursor"(NclseaNcl_Wesb_Get_Agy_For_AgtreqP_Cursor) to "P_CURSOR"(<Anonymous>) -->
            <xsl:apply-templates select="$smo/body/in8:executeNclseaNcl_Wesb_Get_Agy_For_AgtreqResponse/in8:executeNclseaNcl_Wesb_Get_Agy_For_AgtreqOutput/p_cursor" mode="localP_cursorToP_CURSOR_1818424196"/>
          </xsl:element>
        </xsl:element>
        <!-- a structural mapping: "$smo/context/correlation/agent_work_getAgent"(<Anonymous>) to "agent_work_getAgent"(<Anonymous>) -->
        <xsl:if test="$smo/context/correlation/agent_work_getAgent">
          <xsl:copy-of select="$smo/context/correlation/agent_work_getAgent"/>
        </xsl:if>
      </correlation>
    </context>
  </xsl:template>

  <!-- This rule represents a for-each transform: "p_cursor" to "P_CURSOR".  -->
  <xsl:template match="p_cursor"  mode="localP_cursorToP_CURSOR_1818424196">
    <P_CURSOR>
      <!-- a simple data mapping: "agency_id"(string) to "AGENCY_ID"(string) -->
      <xsl:if test="agency_id">
        <AGENCY_ID>
          <xsl:value-of select="agency_id"/>
        </AGENCY_ID>
      </xsl:if>
      <!-- a simple data mapping: "agency_name"(string) to "AGENCY_NAME"(string) -->
      <xsl:if test="agency_name">
        <AGENCY_NAME>
          <xsl:value-of select="agency_name"/>
        </AGENCY_NAME>
      </xsl:if>
      <!-- a simple data mapping: "agency_name_essential"(string) to "AGENCY_NAME_ESSENTIAL"(string) -->
      <xsl:if test="agency_name_essential">
        <AGENCY_NAME_ESSENTIAL>
          <xsl:value-of select="agency_name_essential"/>
        </AGENCY_NAME_ESSENTIAL>
      </xsl:if>
      <!-- a simple data mapping: "agency_name_typed"(string) to "AGENCY_NAME_TYPED"(string) -->
      <xsl:if test="agency_name_typed">
        <AGENCY_NAME_TYPED>
          <xsl:value-of select="agency_name_typed"/>
        </AGENCY_NAME_TYPED>
      </xsl:if>
      <!-- a simple data mapping: "agency_type"(string) to "AGENCY_TYPE"(string) -->
      <xsl:if test="agency_type">
        <AGENCY_TYPE>
          <xsl:value-of select="agency_type"/>
        </AGENCY_TYPE>
      </xsl:if>
      <!-- a simple data mapping: "ag_entity_type"(string) to "AG_ENTITY_TYPE"(string) -->
      <xsl:if test="ag_entity_type">
        <AG_ENTITY_TYPE>
          <xsl:value-of select="ag_entity_type"/>
        </AG_ENTITY_TYPE>
      </xsl:if>
      <!-- a simple data mapping: "arc_number"(string) to "ARC_NUMBER"(string) -->
      <xsl:if test="arc_number">
        <ARC_NUMBER>
          <xsl:value-of select="arc_number"/>
        </ARC_NUMBER>
      </xsl:if>
      <!-- a simple data mapping: "bc_type_id"(string) to "BC_TYPE_ID"(string) -->
      <xsl:if test="bc_type_id">
        <BC_TYPE_ID>
          <xsl:value-of select="bc_type_id"/>
        </BC_TYPE_ID>
      </xsl:if>
      <!-- a simple data mapping: "clia_number"(string) to "CLIA_NUMBER"(string) -->
      <xsl:if test="clia_number">
        <CLIA_NUMBER>
          <xsl:value-of select="clia_number"/>
        </CLIA_NUMBER>
      </xsl:if>
      <!-- a simple data mapping: "comments"(string) to "COMMENTS"(string) -->
      <xsl:if test="comments">
        <COMMENTS>
          <xsl:value-of select="comments"/>
        </COMMENTS>
      </xsl:if>
      <!-- a simple data mapping: "consortium_type"(string) to "CONSORTIUM_TYPE"(string) -->
      <xsl:if test="consortium_type">
        <CONSORTIUM_TYPE>
          <xsl:value-of select="consortium_type"/>
        </CONSORTIUM_TYPE>
      </xsl:if>
      <!-- a simple data mapping: "contact_name"(string) to "CONTACT_NAME"(string) -->
      <xsl:if test="contact_name">
        <CONTACT_NAME>
          <xsl:value-of select="contact_name"/>
        </CONTACT_NAME>
      </xsl:if>
      <!-- a simple data mapping: "country_code"(string) to "COUNTRY_CODE"(string) -->
      <xsl:if test="country_code">
        <COUNTRY_CODE>
          <xsl:value-of select="country_code"/>
        </COUNTRY_CODE>
      </xsl:if>
      <!-- a simple data mapping: "default_currency"(string) to "DEFAULT_CURRENCY"(string) -->
      <xsl:if test="default_currency">
        <DEFAULT_CURRENCY>
          <xsl:value-of select="default_currency"/>
        </DEFAULT_CURRENCY>
      </xsl:if>
      <!-- a simple data mapping: "floating_deposit"(string) to "FLOATING_DEPOSIT"(string) -->
      <xsl:if test="floating_deposit">
        <FLOATING_DEPOSIT>
          <xsl:value-of select="floating_deposit"/>
        </FLOATING_DEPOSIT>
      </xsl:if>
      <!-- a simple data mapping: "iata_number"(string) to "IATA_NUMBER"(string) -->
      <xsl:if test="iata_number">
        <IATA_NUMBER>
          <xsl:value-of select="iata_number"/>
        </IATA_NUMBER>
      </xsl:if>
      <!-- a simple data mapping: "is_active"(string) to "IS_ACTIVE"(string) -->
      <xsl:if test="is_active">
        <IS_ACTIVE>
          <xsl:value-of select="is_active"/>
        </IS_ACTIVE>
      </xsl:if>
      <!-- a simple data mapping: "is_consortium"(string) to "IS_CONSORTIUM"(string) -->
      <xsl:if test="is_consortium">
        <IS_CONSORTIUM>
          <xsl:value-of select="is_consortium"/>
        </IS_CONSORTIUM>
      </xsl:if>
      <!-- a simple data mapping: "is_domestic"(string) to "IS_DOMESTIC"(string) -->
      <xsl:if test="is_domestic">
        <IS_DOMESTIC>
          <xsl:value-of select="is_domestic"/>
        </IS_DOMESTIC>
      </xsl:if>
      <!-- a simple data mapping: "is_fax_email_secured"(string) to "IS_FAX_EMAIL_SECURED"(string) -->
      <xsl:if test="is_fax_email_secured">
        <IS_FAX_EMAIL_SECURED>
          <xsl:value-of select="is_fax_email_secured"/>
        </IS_FAX_EMAIL_SECURED>
      </xsl:if>
      <!-- a simple data mapping: "is_gsa"(string) to "IS_GSA"(string) -->
      <xsl:if test="is_gsa">
        <IS_GSA>
          <xsl:value-of select="is_gsa"/>
        </IS_GSA>
      </xsl:if>
      <!-- a simple data mapping: "is_internal"(string) to "IS_INTERNAL"(string) -->
      <xsl:if test="is_internal">
        <IS_INTERNAL>
          <xsl:value-of select="is_internal"/>
        </IS_INTERNAL>
      </xsl:if>
      <!-- a simple data mapping: "marketing_msg"(string) to "MARKETING_MSG"(string) -->
      <xsl:if test="marketing_msg">
        <MARKETING_MSG>
          <xsl:value-of select="marketing_msg"/>
        </MARKETING_MSG>
      </xsl:if>
      <!-- a simple data mapping: "notif_dflt_distr_type"(string) to "NOTIF_DFLT_DISTR_TYPE"(string) -->
      <xsl:if test="notif_dflt_distr_type">
        <NOTIF_DFLT_DISTR_TYPE>
          <xsl:value-of select="notif_dflt_distr_type"/>
        </NOTIF_DFLT_DISTR_TYPE>
      </xsl:if>
      <!-- a simple data mapping: "office_code"(string) to "OFFICE_CODE"(string) -->
      <xsl:if test="office_code">
        <OFFICE_CODE>
          <xsl:value-of select="office_code"/>
        </OFFICE_CODE>
      </xsl:if>
      <!-- a simple data mapping: "taxowner_name"(string) to "TAXOWNER_NAME"(string) -->
      <xsl:if test="taxowner_name">
        <TAXOWNER_NAME>
          <xsl:value-of select="taxowner_name"/>
        </TAXOWNER_NAME>
      </xsl:if>
      <!-- a simple data mapping: "taxpayer_number"(string) to "TAXPAYER_NUMBER"(string) -->
      <xsl:if test="taxpayer_number">
        <TAXPAYER_NUMBER>
          <xsl:value-of select="taxpayer_number"/>
        </TAXPAYER_NUMBER>
      </xsl:if>
      <!-- a simple data mapping: "taxpayer_type"(string) to "TAXPAYER_TYPE"(string) -->
      <xsl:if test="taxpayer_type">
        <TAXPAYER_TYPE>
          <xsl:value-of select="taxpayer_type"/>
        </TAXPAYER_TYPE>
      </xsl:if>
      <!-- a simple data mapping: "use_dflt_consortium"(string) to "USE_DFLT_CONSORTIUM"(string) -->
      <xsl:if test="use_dflt_consortium">
        <USE_DFLT_CONSORTIUM>
          <xsl:value-of select="use_dflt_consortium"/>
        </USE_DFLT_CONSORTIUM>
      </xsl:if>
      <!-- a simple data mapping: "use_guest_addr"(string) to "USE_GUEST_ADDR"(string) -->
      <xsl:if test="use_guest_addr">
        <USE_GUEST_ADDR>
          <xsl:value-of select="use_guest_addr"/>
        </USE_GUEST_ADDR>
      </xsl:if>
      <!-- a simple data mapping: "vendor_number"(string) to "VENDOR_NUMBER"(string) -->
      <xsl:if test="vendor_number">
        <VENDOR_NUMBER>
          <xsl:value-of select="vendor_number"/>
        </VENDOR_NUMBER>
      </xsl:if>
      <!-- a simple data mapping: "web_address"(string) to "WEB_ADDRESS"(string) -->
      <xsl:if test="web_address">
        <WEB_ADDRESS>
          <xsl:value-of select="web_address"/>
        </WEB_ADDRESS>
      </xsl:if>
      <!-- a simple data mapping: "address_city"(string) to "ADDRESS_CITY"(string) -->
      <xsl:if test="address_city">
        <ADDRESS_CITY>
          <xsl:value-of select="address_city"/>
        </ADDRESS_CITY>
      </xsl:if>
      <!-- a simple data mapping: "address_line1"(string) to "ADDRESS_LINE1"(string) -->
      <xsl:if test="address_line1">
        <ADDRESS_LINE1>
          <xsl:value-of select="address_line1"/>
        </ADDRESS_LINE1>
      </xsl:if>
      <!-- a simple data mapping: "address_line2"(string) to "ADDRESS_LINE2"(string) -->
      <xsl:if test="address_line2">
        <ADDRESS_LINE2>
          <xsl:value-of select="address_line2"/>
        </ADDRESS_LINE2>
      </xsl:if>
      <!-- a simple data mapping: "address_type"(string) to "ADDRESS_TYPE"(string) -->
      <xsl:if test="address_type">
        <ADDRESS_TYPE>
          <xsl:value-of select="address_type"/>
        </ADDRESS_TYPE>
      </xsl:if>
      <!-- a simple data mapping: "add_country_code"(string) to "ADD_COUNTRY_CODE"(string) -->
      <xsl:if test="add_country_code">
        <ADD_COUNTRY_CODE>
          <xsl:value-of select="add_country_code"/>
        </ADD_COUNTRY_CODE>
      </xsl:if>
      <!-- a simple data mapping: "is_address_mailing"(string) to "IS_ADDRESS_MAILING"(string) -->
      <xsl:if test="is_address_mailing">
        <IS_ADDRESS_MAILING>
          <xsl:value-of select="is_address_mailing"/>
        </IS_ADDRESS_MAILING>
      </xsl:if>
      <!-- a simple data mapping: "is_address_shipping"(string) to "IS_ADDRESS_SHIPPING"(string) -->
      <xsl:if test="is_address_shipping">
        <IS_ADDRESS_SHIPPING>
          <xsl:value-of select="is_address_shipping"/>
        </IS_ADDRESS_SHIPPING>
      </xsl:if>
      <!-- a simple data mapping: "seq_number"(string) to "SEQ_NUMBER"(string) -->
      <xsl:if test="seq_number">
        <SEQ_NUMBER>
          <xsl:value-of select="seq_number"/>
        </SEQ_NUMBER>
      </xsl:if>
      <!-- a simple data mapping: "state_code"(string) to "STATE_CODE"(string) -->
      <xsl:if test="state_code">
        <STATE_CODE>
          <xsl:value-of select="state_code"/>
        </STATE_CODE>
      </xsl:if>
      <!-- a simple data mapping: "zip"(string) to "ZIP"(string) -->
      <xsl:if test="zip">
        <ZIP>
          <xsl:value-of select="zip"/>
        </ZIP>
      </xsl:if>
      <!-- a simple data mapping: "is_phone_fax"(string) to "IS_PHONE_FAX"(string) -->
      <xsl:if test="is_phone_fax">
        <IS_PHONE_FAX>
          <xsl:value-of select="is_phone_fax"/>
        </IS_PHONE_FAX>
      </xsl:if>
      <!-- a simple data mapping: "is_phone_primary"(string) to "IS_PHONE_PRIMARY"(string) -->
      <xsl:if test="is_phone_primary">
        <IS_PHONE_PRIMARY>
          <xsl:value-of select="is_phone_primary"/>
        </IS_PHONE_PRIMARY>
      </xsl:if>
      <!-- a simple data mapping: "phone_number"(string) to "PHONE_NUMBER"(string) -->
      <xsl:if test="phone_number">
        <PHONE_NUMBER>
          <xsl:value-of select="phone_number"/>
        </PHONE_NUMBER>
      </xsl:if>
      <!-- a simple data mapping: "phone_type"(string) to "PHONE_TYPE"(string) -->
      <xsl:if test="phone_type">
        <PHONE_TYPE>
          <xsl:value-of select="phone_type"/>
        </PHONE_TYPE>
      </xsl:if>
      <!-- a simple data mapping: "contact_preference"(string) to "CONTACT_PREFERENCE"(string) -->
      <xsl:if test="contact_preference">
        <CONTACT_PREFERENCE>
          <xsl:value-of select="contact_preference"/>
        </CONTACT_PREFERENCE>
      </xsl:if>
      <!-- a simple data mapping: "email_address"(string) to "AGENCY_CLASSIFICATION_CODE"(string) -->
      <xsl:if test="email_address">
        <AGENCY_CLASSIFICATION_CODE>
          <xsl:value-of select="email_address"/>
        </AGENCY_CLASSIFICATION_CODE>
      </xsl:if>
      <!-- a simple data mapping: "dsm_last"(string) to "DSM_FIRST"(string) -->
      <xsl:if test="dsm_last">
        <DSM_FIRST>
          <xsl:value-of select="dsm_last"/>
        </DSM_FIRST>
      </xsl:if>
      <!-- a simple data mapping: "dsm_first"(string) to "DSM_LAST"(string) -->
      <xsl:if test="dsm_first">
        <DSM_LAST>
          <xsl:value-of select="dsm_first"/>
        </DSM_LAST>
      </xsl:if>
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

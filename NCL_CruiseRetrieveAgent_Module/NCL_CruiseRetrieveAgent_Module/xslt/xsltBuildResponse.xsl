<?xml version="1.0" encoding="UTF-8"?>
<!-- @generated mapFile="xslt/xsltBuildResponse.map" md5sum="2eb7ec56b39e6c2cc7f9b0841011f9c2" version="7.6.100" -->
<!--
*****************************************************************************
*   This file has been generated by the IBM XML Mapping Editor.
*
*   Mapping file:		xsltBuildResponse.map
*   Map declaration(s):	xsltBuildResponse
*   Input file(s):		smo://smo/name%3Dwsdl-primary/correlationContext%3D%257Bhttp%253A%252F%252FNCL_CruiseRetrieveAgent_Module%257DappContext/message%3D%257Bhttp%253A%252F%252FNCL_WESB_Shared_Library%252FNCL_CruiseRetrieveAgent_Interface%257DPerform_NCL_CruiseRetrieveAgentResponseMsg/xpath%3D%252F/smo.xsd
*   Output file(s):		smo://smo/name%3Dwsdl-primary/correlationContext%3D%257Bhttp%253A%252F%252FNCL_CruiseRetrieveAgent_Module%257DappContext/message%3D%257Bhttp%253A%252F%252FNCL_WESB_Shared_Library%252FNCL_CruiseRetrieveAgent_Interface%257DPerform_NCL_CruiseRetrieveAgentResponseMsg/xpath%3D%252F/smo.xsd
*   XSLT import(s):   	xsltBuildResponse_SECURIY_LEVEL.xsl, xsltBuildResponse_success.xsl
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
    xmlns:io="http://NCL_WESB_Shared_Library/NCL_CruiseRetrieveAgent_Interface"
    xmlns:io2="http://NCL_CruiseRetrieveAgent_Module"
    xmlns:io3="http://www.w3.org/2003/05/soap-envelope"
    xmlns:io5="http://www.ibm.com/xmlns/prod/websphere/mq/sca/6.0.0"
    xmlns:io4="http://www.ibm.com/websphere/sibx/smo/v6.0.1"
    xmlns:io6="http://schemas.xmlsoap.org/ws/2004/08/addressing"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xmlns:io8="http://www.ibm.com/xmlns/prod/websphere/http/sca/6.1.0"
    xmlns:io7="http://nclapi/schemas"
    xmlns:io9="wsdl.http://NCL_WESB_Shared_Library/NCL_CruiseRetrieveAgent_Interface"
    xmlns:xs4xs="http://www.w3.org/2001/XMLSchema"
    xmlns:io10="http://www.w3.org/2005/08/addressing"
    xmlns:map="http://NCL_CruiseRetrieveAgent_Module/xslt/xsltBuildResponse"
    xmlns:msl="http://www.ibm.com/xmlmap"
    exclude-result-prefixes="str set math fn regexp dyn dp exsl date map xalan msl"
    version="1.0">

  <!-- imports  -->
  <xsl:import href="xsltBuildResponse_SECURIY_LEVEL.xsl"/>
  <xsl:import href="xsltBuildResponse_success.xsl"/>
  <xsl:output method="xml" encoding="UTF-8" indent="no"/>

  <!-- root wrapper template  -->
  <xsl:template match="/">
    <xsl:choose>
      <xsl:when test="msl:datamap">
        <msl:datamap>
          <xsl:element name="dataObject">
            <xsl:attribute name="xsi:type">
              <xsl:value-of select="'io4:ServiceMessageObject'"/>
            </xsl:attribute>
            <xsl:call-template name="map:xsltBuildResponse2">
              <xsl:with-param name="smo" select="msl:datamap/dataObject[1]"/>
            </xsl:call-template>
          </xsl:element>
        </msl:datamap>
      </xsl:when>
      <xsl:otherwise>
        <xsl:apply-templates select="io4:smo" mode="map:xsltBuildResponse"/>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <!-- This rule represents an element mapping: "io4:smo" to "io4:smo".  -->
  <xsl:template match="io4:smo"  mode="map:xsltBuildResponse">
    <io4:smo>
      <context>
        <correlation>
          <xsl:attribute name="xsi:type">
            <xsl:value-of select="'io2:appContext'"/>
          </xsl:attribute>
          <!-- a simple data mapping: "context/correlation/logId"(string) to "logId"(string) -->
          <xsl:if test="context/correlation/logId">
            <xsl:element name="logId">
              <xsl:value-of select="context/correlation/logId"/>
            </xsl:element>
          </xsl:if>
          <!-- a structural mapping: "context/correlation/io7:NCL_CruiseRetrieveAgentRQ"(<Anonymous>) to "io7:NCL_CruiseRetrieveAgentRQ"(<Anonymous>) -->
          <xsl:if test="context/correlation/io7:NCL_CruiseRetrieveAgentRQ">
            <xsl:copy-of select="context/correlation/io7:NCL_CruiseRetrieveAgentRQ"/>
          </xsl:if>
          <!-- a structural mapping: "context/correlation/Agent_work_agency"(<Anonymous>) to "Agent_work_agency"(<Anonymous>) -->
          <xsl:if test="context/correlation/Agent_work_agency">
            <xsl:copy-of select="context/correlation/Agent_work_agency"/>
          </xsl:if>
          <!-- a structural mapping: "context/correlation/agent_work_getAgent"(<Anonymous>) to "agent_work_getAgent"(<Anonymous>) -->
          <xsl:if test="context/correlation/agent_work_getAgent">
            <xsl:copy-of select="context/correlation/agent_work_getAgent"/>
          </xsl:if>
        </correlation>
      </context>
      <xsl:element name="body">
        <xsl:attribute name="xsi:type">
          <xsl:value-of select="'io9:Perform_NCL_CruiseRetrieveAgentResponseMsg'"/>
        </xsl:attribute>
        <xsl:element name="io:Perform_NCL_CruiseRetrieveAgentResponse">
          <xsl:element name="io7:NCL_CruiseRetrieveAgentRS">
            <!-- a simple data mapping: "context/correlation/agent_work_getAgent/spGetAgentInfo/P_TOTALCOUNT"(string) to "MoreDataEchoToken"(StringLength1to32) -->
            <xsl:if test="context/correlation/agent_work_getAgent/spGetAgentInfo/P_TOTALCOUNT">
              <xsl:attribute name="MoreDataEchoToken">
                <xsl:value-of select="context/correlation/agent_work_getAgent/spGetAgentInfo/P_TOTALCOUNT"/>
              </xsl:attribute>
            </xsl:if>
            <!-- a simple mapping with no associated source:  to "MoreIndicator"(boolean) -->
            <xsl:attribute name="MoreIndicator">
              <xsl:value-of select="'false'"/>
            </xsl:attribute>
            <!-- a simple data mapping: "context/correlation/io7:NCL_CruiseRetrieveAgentRQ/@TransactionIdentifier"(StringLength1to32) to "TransactionIdentifier"(StringLength1to32) -->
            <xsl:if test="context/correlation/io7:NCL_CruiseRetrieveAgentRQ/@TransactionIdentifier">
              <xsl:attribute name="TransactionIdentifier">
                <xsl:value-of select="context/correlation/io7:NCL_CruiseRetrieveAgentRQ/@TransactionIdentifier"/>
              </xsl:attribute>
            </xsl:if>
            <!-- a simple mapping with no associated source:  to "io7:Success"(string) -->
            <xsl:element name="io7:Success">
              <xsl:call-template name="ToSuccess"/>
            </xsl:element>
            <!-- a for-each transform: "P_CURSOR"(<Anonymous>) to "io7:AgentInfo"(<Anonymous>) -->
            <xsl:apply-templates select="context/correlation/agent_work_getAgent/spGetAgentInfo/P_CURSOR" mode="localP_CURSORToAgentInfo_362040736"/>
            <xsl:element name="io7:AgencyInfo">
              <!-- a simple data mapping: "context/correlation/Agent_work_agency/spGetAgencyInfo[1]/P_CURSOR[1]/DEFAULT_CURRENCY"(string) to "ISOCurrency"(AlphaLength3) -->
              <xsl:if test="context/correlation/Agent_work_agency/spGetAgencyInfo[1]/P_CURSOR[1]/DEFAULT_CURRENCY">
                <xsl:attribute name="ISOCurrency">
                  <xsl:value-of select="context/correlation/Agent_work_agency/spGetAgencyInfo[1]/P_CURSOR[1]/DEFAULT_CURRENCY"/>
                </xsl:attribute>
              </xsl:if>
              <!-- a simple data mapping: "context/correlation/Agent_work_agency/spGetAgencyInfo[1]/P_CURSOR[1]/AGENCY_TYPE"(string) to "AgencyType"(string) -->
              <xsl:if test="context/correlation/Agent_work_agency/spGetAgencyInfo[1]/P_CURSOR[1]/AGENCY_TYPE">
                <xsl:attribute name="AgencyType">
                  <xsl:value-of select="context/correlation/Agent_work_agency/spGetAgencyInfo[1]/P_CURSOR[1]/AGENCY_TYPE"/>
                </xsl:attribute>
              </xsl:if>
              <!-- a simple data mapping: "context/correlation/Agent_work_agency/spGetAgencyInfo[1]/P_CURSOR[1]/ARC_NUMBER"(string) to "ARCNumber"(anySimpleType) -->
              <xsl:if test="context/correlation/Agent_work_agency/spGetAgencyInfo[1]/P_CURSOR[1]/ARC_NUMBER">
                <xsl:attribute name="ARCNumber">
                  <xsl:value-of select="context/correlation/Agent_work_agency/spGetAgencyInfo[1]/P_CURSOR[1]/ARC_NUMBER"/>
                </xsl:attribute>
              </xsl:if>
              <!-- a simple mapping with no associated source:  to "BlacklistedAgency"(string) -->
              <xsl:attribute name="BlacklistedAgency">
                <xsl:value-of select="'False'"/>
              </xsl:attribute>
              <!-- a simple data mapping: "context/correlation/Agent_work_agency/spGetAgencyInfo[1]/P_CURSOR[1]/CLIA_NUMBER"(string) to "CLIANumber"(anySimpleType) -->
              <xsl:if test="context/correlation/Agent_work_agency/spGetAgencyInfo[1]/P_CURSOR[1]/CLIA_NUMBER">
                <xsl:attribute name="CLIANumber">
                  <xsl:value-of select="context/correlation/Agent_work_agency/spGetAgencyInfo[1]/P_CURSOR[1]/CLIA_NUMBER"/>
                </xsl:attribute>
              </xsl:if>
              <!-- a simple data mapping: "context/correlation/Agent_work_agency/spGetAgencyInfo/P_CURSOR/TAXPAYER_TYPE"(string) to "CompanyType"(anySimpleType) -->
              <xsl:if test="context/correlation/Agent_work_agency/spGetAgencyInfo/P_CURSOR/TAXPAYER_TYPE">
                <xsl:attribute name="CompanyType">
                  <xsl:value-of select="context/correlation/Agent_work_agency/spGetAgencyInfo/P_CURSOR/TAXPAYER_TYPE"/>
                </xsl:attribute>
              </xsl:if>
              <!-- a simple data mapping: "context/correlation/Agent_work_agency/spGetAgencyInfo[1]/P_CURSOR[1]/IATA_NUMBER"(string) to "IATANumber"(anySimpleType) -->
              <xsl:if test="context/correlation/Agent_work_agency/spGetAgencyInfo[1]/P_CURSOR[1]/IATA_NUMBER">
                <xsl:attribute name="IATANumber">
                  <xsl:value-of select="context/correlation/Agent_work_agency/spGetAgencyInfo[1]/P_CURSOR[1]/IATA_NUMBER"/>
                </xsl:attribute>
              </xsl:if>
              <!-- a simple data mapping: "context/correlation/Agent_work_agency/spGetAgencyInfo/P_CURSOR/TAXPAYER_NUMBER"(string) to "IdentificationNumber"(StringLength0to32) -->
              <xsl:if test="context/correlation/Agent_work_agency/spGetAgencyInfo/P_CURSOR/TAXPAYER_NUMBER">
                <xsl:attribute name="IdentificationNumber">
                  <xsl:value-of select="context/correlation/Agent_work_agency/spGetAgencyInfo/P_CURSOR/TAXPAYER_NUMBER"/>
                </xsl:attribute>
              </xsl:if>
              <!-- a simple data mapping: "context/correlation/Agent_work_agency/spGetAgencyInfo[1]/P_CURSOR[1]/AGENCY_NAME"(string) to "LegalName"(string) -->
              <xsl:if test="context/correlation/Agent_work_agency/spGetAgencyInfo[1]/P_CURSOR[1]/AGENCY_NAME">
                <xsl:attribute name="LegalName">
                  <xsl:value-of select="context/correlation/Agent_work_agency/spGetAgencyInfo[1]/P_CURSOR[1]/AGENCY_NAME"/>
                </xsl:attribute>
              </xsl:if>
              <!-- a simple data mapping: "context/correlation/Agent_work_agency/spGetAgencyInfo/P_CURSOR/OFFICE_CODE"(string) to "OfficeCode"(string) -->
              <xsl:if test="context/correlation/Agent_work_agency/spGetAgencyInfo/P_CURSOR/OFFICE_CODE">
                <xsl:attribute name="OfficeCode">
                  <xsl:value-of select="context/correlation/Agent_work_agency/spGetAgencyInfo/P_CURSOR/OFFICE_CODE"/>
                </xsl:attribute>
              </xsl:if>
              <!-- a simple data mapping: "context/correlation/Agent_work_agency/spGetAgencyInfo/P_CURSOR/WEB_ADDRESS"(string) to "Website"(string) -->
              <xsl:if test="context/correlation/Agent_work_agency/spGetAgencyInfo/P_CURSOR/WEB_ADDRESS">
                <xsl:attribute name="Website">
                  <xsl:value-of select="context/correlation/Agent_work_agency/spGetAgencyInfo/P_CURSOR/WEB_ADDRESS"/>
                </xsl:attribute>
              </xsl:if>
              <xsl:element name="io7:RequestorID">
                <!-- a simple data mapping: "context/correlation/Agent_work_agency/spGetAgencyInfo[1]/P_CURSOR[1]/AGENCY_ID"(string) to "ID"(StringLength1to32) -->
                <xsl:attribute name="ID">
                  <xsl:value-of select="context/correlation/Agent_work_agency/spGetAgencyInfo[1]/P_CURSOR[1]/AGENCY_ID"/>
                </xsl:attribute>
                <xsl:element name="io7:CompanyName">
                  <!-- a simple content mapping -->
                  <xsl:value-of select="context/correlation/Agent_work_agency/spGetAgencyInfo[1]/P_CURSOR[1]/AGENCY_NAME"/>
                </xsl:element>
              </xsl:element>
              <xsl:element name="io7:Telephone">
                <!-- a simple data mapping: "context/correlation/Agent_work_agency/spGetAgencyInfo[1]/P_CURSOR[1]/PHONE_NUMBER"(string) to "PhoneNumber"(StringLength1to32) -->
                <xsl:attribute name="PhoneNumber">
                  <xsl:value-of select="context/correlation/Agent_work_agency/spGetAgencyInfo[1]/P_CURSOR[1]/PHONE_NUMBER"/>
                </xsl:attribute>
              </xsl:element>
              <xsl:element name="io7:Address">
                <!-- a simple data mapping: "context/correlation/Agent_work_agency/spGetAgencyInfo[1]/P_CURSOR[1]/ADDRESS_LINE1"(string) to "io7:AddressLine"(StringLength1to255) -->
                <xsl:if test="context/correlation/Agent_work_agency/spGetAgencyInfo[1]/P_CURSOR[1]/ADDRESS_LINE1">
                  <xsl:element name="io7:AddressLine">
                    <xsl:value-of select="context/correlation/Agent_work_agency/spGetAgencyInfo[1]/P_CURSOR[1]/ADDRESS_LINE1"/>
                  </xsl:element>
                </xsl:if>
                <!-- a simple data mapping: "context/correlation/Agent_work_agency/spGetAgencyInfo[1]/P_CURSOR[1]/ADDRESS_CITY"(string) to "io7:CityName"(StringLength1to64) -->
                <xsl:if test="context/correlation/Agent_work_agency/spGetAgencyInfo[1]/P_CURSOR[1]/ADDRESS_CITY">
                  <xsl:element name="io7:CityName">
                    <xsl:value-of select="context/correlation/Agent_work_agency/spGetAgencyInfo[1]/P_CURSOR[1]/ADDRESS_CITY"/>
                  </xsl:element>
                </xsl:if>
                <!-- a simple data mapping: "context/correlation/Agent_work_agency/spGetAgencyInfo[1]/P_CURSOR[1]/ZIP"(string) to "io7:PostalCode"(StringLength1to16) -->
                <xsl:if test="context/correlation/Agent_work_agency/spGetAgencyInfo[1]/P_CURSOR[1]/ZIP">
                  <xsl:element name="io7:PostalCode">
                    <xsl:value-of select="context/correlation/Agent_work_agency/spGetAgencyInfo[1]/P_CURSOR[1]/ZIP"/>
                  </xsl:element>
                </xsl:if>
                <xsl:element name="io7:StateProv">
                  <!-- a simple data mapping: "context/correlation/Agent_work_agency/spGetAgencyInfo[1]/P_CURSOR[1]/STATE_CODE"(string) to "StateCode"(StateProvCodeType) -->
                  <xsl:if test="context/correlation/Agent_work_agency/spGetAgencyInfo[1]/P_CURSOR[1]/STATE_CODE">
                    <xsl:attribute name="StateCode">
                      <xsl:value-of select="context/correlation/Agent_work_agency/spGetAgencyInfo[1]/P_CURSOR[1]/STATE_CODE"/>
                    </xsl:attribute>
                  </xsl:if>
                </xsl:element>
                <xsl:element name="io7:CountryName">
                  <!-- a simple data mapping: "context/correlation/Agent_work_agency/spGetAgencyInfo[1]/P_CURSOR[1]/ADD_COUNTRY_CODE"(string) to "Code"(ISO3166) -->
                  <xsl:if test="context/correlation/Agent_work_agency/spGetAgencyInfo[1]/P_CURSOR[1]/ADD_COUNTRY_CODE">
                    <xsl:attribute name="Code">
                      <xsl:value-of select="context/correlation/Agent_work_agency/spGetAgencyInfo[1]/P_CURSOR[1]/ADD_COUNTRY_CODE"/>
                    </xsl:attribute>
                  </xsl:if>
                </xsl:element>
              </xsl:element>
              <xsl:element name="io7:Email">
                <!-- a simple content mapping -->
                <xsl:value-of select="context/correlation/Agent_work_agency/spGetAgencyInfo[1]/P_CURSOR[1]/AGENCY_CLASSIFICATION_CODE"/>
              </xsl:element>
              <xsl:element name="io7:DSMName">
                <!-- a simple data mapping: "context/correlation/Agent_work_agency/spGetAgencyInfo[1]/P_CURSOR[1]/DSM_FIRST"(string) to "io7:GivenName"(StringLength1to64) -->
                <xsl:if test="context/correlation/Agent_work_agency/spGetAgencyInfo[1]/P_CURSOR[1]/DSM_FIRST">
                  <xsl:element name="io7:GivenName">
                    <xsl:value-of select="context/correlation/Agent_work_agency/spGetAgencyInfo[1]/P_CURSOR[1]/DSM_FIRST"/>
                  </xsl:element>
                </xsl:if>
                <!-- a simple data mapping: "context/correlation/Agent_work_agency/spGetAgencyInfo[1]/P_CURSOR[1]/DSM_LAST"(string) to "io7:Surname"(StringLength1to64) -->
                <xsl:element name="io7:Surname">
                  <xsl:value-of select="context/correlation/Agent_work_agency/spGetAgencyInfo[1]/P_CURSOR[1]/DSM_LAST"/>
                </xsl:element>
              </xsl:element>
            </xsl:element>
          </xsl:element>
        </xsl:element>
      </xsl:element>
    </io4:smo>
  </xsl:template>

  <!-- This rule represents a type mapping: "io4:smo" to "io4:smo".  -->
  <xsl:template name="map:xsltBuildResponse2">
    <xsl:param name="smo"/>
    <context>
      <correlation>
        <xsl:attribute name="xsi:type">
          <xsl:value-of select="'io2:appContext'"/>
        </xsl:attribute>
        <!-- a simple data mapping: "$smo/context/correlation/logId"(string) to "logId"(string) -->
        <xsl:if test="$smo/context/correlation/logId">
          <xsl:element name="logId">
            <xsl:value-of select="$smo/context/correlation/logId"/>
          </xsl:element>
        </xsl:if>
        <!-- a structural mapping: "$smo/context/correlation/io7:NCL_CruiseRetrieveAgentRQ"(<Anonymous>) to "io7:NCL_CruiseRetrieveAgentRQ"(<Anonymous>) -->
        <xsl:if test="$smo/context/correlation/io7:NCL_CruiseRetrieveAgentRQ">
          <xsl:copy-of select="$smo/context/correlation/io7:NCL_CruiseRetrieveAgentRQ"/>
        </xsl:if>
        <!-- a structural mapping: "$smo/context/correlation/Agent_work_agency"(<Anonymous>) to "Agent_work_agency"(<Anonymous>) -->
        <xsl:if test="$smo/context/correlation/Agent_work_agency">
          <xsl:copy-of select="$smo/context/correlation/Agent_work_agency"/>
        </xsl:if>
        <!-- a structural mapping: "$smo/context/correlation/agent_work_getAgent"(<Anonymous>) to "agent_work_getAgent"(<Anonymous>) -->
        <xsl:if test="$smo/context/correlation/agent_work_getAgent">
          <xsl:copy-of select="$smo/context/correlation/agent_work_getAgent"/>
        </xsl:if>
      </correlation>
    </context>
    <xsl:element name="body">
      <xsl:attribute name="xsi:type">
        <xsl:value-of select="'io9:Perform_NCL_CruiseRetrieveAgentResponseMsg'"/>
      </xsl:attribute>
      <xsl:element name="io:Perform_NCL_CruiseRetrieveAgentResponse">
        <xsl:element name="io7:NCL_CruiseRetrieveAgentRS">
          <!-- a simple data mapping: "$smo/context/correlation/agent_work_getAgent/spGetAgentInfo/P_TOTALCOUNT"(string) to "MoreDataEchoToken"(StringLength1to32) -->
          <xsl:if test="$smo/context/correlation/agent_work_getAgent/spGetAgentInfo/P_TOTALCOUNT">
            <xsl:attribute name="MoreDataEchoToken">
              <xsl:value-of select="$smo/context/correlation/agent_work_getAgent/spGetAgentInfo/P_TOTALCOUNT"/>
            </xsl:attribute>
          </xsl:if>
          <!-- a simple mapping with no associated source:  to "MoreIndicator"(boolean) -->
          <xsl:attribute name="MoreIndicator">
            <xsl:value-of select="'false'"/>
          </xsl:attribute>
          <!-- a simple data mapping: "$smo/context/correlation/io7:NCL_CruiseRetrieveAgentRQ/@TransactionIdentifier"(StringLength1to32) to "TransactionIdentifier"(StringLength1to32) -->
          <xsl:if test="$smo/context/correlation/io7:NCL_CruiseRetrieveAgentRQ/@TransactionIdentifier">
            <xsl:attribute name="TransactionIdentifier">
              <xsl:value-of select="$smo/context/correlation/io7:NCL_CruiseRetrieveAgentRQ/@TransactionIdentifier"/>
            </xsl:attribute>
          </xsl:if>
          <!-- a simple mapping with no associated source:  to "io7:Success"(string) -->
          <xsl:element name="io7:Success">
            <xsl:call-template name="ToSuccess"/>
          </xsl:element>
          <!-- a for-each transform: "P_CURSOR"(<Anonymous>) to "io7:AgentInfo"(<Anonymous>) -->
          <xsl:apply-templates select="$smo/context/correlation/agent_work_getAgent/spGetAgentInfo/P_CURSOR" mode="localP_CURSORToAgentInfo_362040736"/>
          <xsl:element name="io7:AgencyInfo">
            <!-- a simple data mapping: "$smo/context/correlation/Agent_work_agency/spGetAgencyInfo[1]/P_CURSOR[1]/DEFAULT_CURRENCY"(string) to "ISOCurrency"(AlphaLength3) -->
            <xsl:if test="$smo/context/correlation/Agent_work_agency/spGetAgencyInfo[1]/P_CURSOR[1]/DEFAULT_CURRENCY">
              <xsl:attribute name="ISOCurrency">
                <xsl:value-of select="$smo/context/correlation/Agent_work_agency/spGetAgencyInfo[1]/P_CURSOR[1]/DEFAULT_CURRENCY"/>
              </xsl:attribute>
            </xsl:if>
            <!-- a simple data mapping: "$smo/context/correlation/Agent_work_agency/spGetAgencyInfo[1]/P_CURSOR[1]/AGENCY_TYPE"(string) to "AgencyType"(string) -->
            <xsl:if test="$smo/context/correlation/Agent_work_agency/spGetAgencyInfo[1]/P_CURSOR[1]/AGENCY_TYPE">
              <xsl:attribute name="AgencyType">
                <xsl:value-of select="$smo/context/correlation/Agent_work_agency/spGetAgencyInfo[1]/P_CURSOR[1]/AGENCY_TYPE"/>
              </xsl:attribute>
            </xsl:if>
            <!-- a simple data mapping: "$smo/context/correlation/Agent_work_agency/spGetAgencyInfo[1]/P_CURSOR[1]/ARC_NUMBER"(string) to "ARCNumber"(anySimpleType) -->
            <xsl:if test="$smo/context/correlation/Agent_work_agency/spGetAgencyInfo[1]/P_CURSOR[1]/ARC_NUMBER">
              <xsl:attribute name="ARCNumber">
                <xsl:value-of select="$smo/context/correlation/Agent_work_agency/spGetAgencyInfo[1]/P_CURSOR[1]/ARC_NUMBER"/>
              </xsl:attribute>
            </xsl:if>
            <!-- a simple mapping with no associated source:  to "BlacklistedAgency"(string) -->
            <xsl:attribute name="BlacklistedAgency">
              <xsl:value-of select="'False'"/>
            </xsl:attribute>
            <!-- a simple data mapping: "$smo/context/correlation/Agent_work_agency/spGetAgencyInfo[1]/P_CURSOR[1]/CLIA_NUMBER"(string) to "CLIANumber"(anySimpleType) -->
            <xsl:if test="$smo/context/correlation/Agent_work_agency/spGetAgencyInfo[1]/P_CURSOR[1]/CLIA_NUMBER">
              <xsl:attribute name="CLIANumber">
                <xsl:value-of select="$smo/context/correlation/Agent_work_agency/spGetAgencyInfo[1]/P_CURSOR[1]/CLIA_NUMBER"/>
              </xsl:attribute>
            </xsl:if>
            <!-- a simple data mapping: "$smo/context/correlation/Agent_work_agency/spGetAgencyInfo/P_CURSOR/TAXPAYER_TYPE"(string) to "CompanyType"(anySimpleType) -->
            <xsl:if test="$smo/context/correlation/Agent_work_agency/spGetAgencyInfo/P_CURSOR/TAXPAYER_TYPE">
              <xsl:attribute name="CompanyType">
                <xsl:value-of select="$smo/context/correlation/Agent_work_agency/spGetAgencyInfo/P_CURSOR/TAXPAYER_TYPE"/>
              </xsl:attribute>
            </xsl:if>
            <!-- a simple data mapping: "$smo/context/correlation/Agent_work_agency/spGetAgencyInfo[1]/P_CURSOR[1]/IATA_NUMBER"(string) to "IATANumber"(anySimpleType) -->
            <xsl:if test="$smo/context/correlation/Agent_work_agency/spGetAgencyInfo[1]/P_CURSOR[1]/IATA_NUMBER">
              <xsl:attribute name="IATANumber">
                <xsl:value-of select="$smo/context/correlation/Agent_work_agency/spGetAgencyInfo[1]/P_CURSOR[1]/IATA_NUMBER"/>
              </xsl:attribute>
            </xsl:if>
            <!-- a simple data mapping: "$smo/context/correlation/Agent_work_agency/spGetAgencyInfo/P_CURSOR/TAXPAYER_NUMBER"(string) to "IdentificationNumber"(StringLength0to32) -->
            <xsl:if test="$smo/context/correlation/Agent_work_agency/spGetAgencyInfo/P_CURSOR/TAXPAYER_NUMBER">
              <xsl:attribute name="IdentificationNumber">
                <xsl:value-of select="$smo/context/correlation/Agent_work_agency/spGetAgencyInfo/P_CURSOR/TAXPAYER_NUMBER"/>
              </xsl:attribute>
            </xsl:if>
            <!-- a simple data mapping: "$smo/context/correlation/Agent_work_agency/spGetAgencyInfo[1]/P_CURSOR[1]/AGENCY_NAME"(string) to "LegalName"(string) -->
            <xsl:if test="$smo/context/correlation/Agent_work_agency/spGetAgencyInfo[1]/P_CURSOR[1]/AGENCY_NAME">
              <xsl:attribute name="LegalName">
                <xsl:value-of select="$smo/context/correlation/Agent_work_agency/spGetAgencyInfo[1]/P_CURSOR[1]/AGENCY_NAME"/>
              </xsl:attribute>
            </xsl:if>
            <!-- a simple data mapping: "$smo/context/correlation/Agent_work_agency/spGetAgencyInfo/P_CURSOR/OFFICE_CODE"(string) to "OfficeCode"(string) -->
            <xsl:if test="$smo/context/correlation/Agent_work_agency/spGetAgencyInfo/P_CURSOR/OFFICE_CODE">
              <xsl:attribute name="OfficeCode">
                <xsl:value-of select="$smo/context/correlation/Agent_work_agency/spGetAgencyInfo/P_CURSOR/OFFICE_CODE"/>
              </xsl:attribute>
            </xsl:if>
            <!-- a simple data mapping: "$smo/context/correlation/Agent_work_agency/spGetAgencyInfo/P_CURSOR/WEB_ADDRESS"(string) to "Website"(string) -->
            <xsl:if test="$smo/context/correlation/Agent_work_agency/spGetAgencyInfo/P_CURSOR/WEB_ADDRESS">
              <xsl:attribute name="Website">
                <xsl:value-of select="$smo/context/correlation/Agent_work_agency/spGetAgencyInfo/P_CURSOR/WEB_ADDRESS"/>
              </xsl:attribute>
            </xsl:if>
            <xsl:element name="io7:RequestorID">
              <!-- a simple data mapping: "$smo/context/correlation/Agent_work_agency/spGetAgencyInfo[1]/P_CURSOR[1]/AGENCY_ID"(string) to "ID"(StringLength1to32) -->
              <xsl:attribute name="ID">
                <xsl:value-of select="$smo/context/correlation/Agent_work_agency/spGetAgencyInfo[1]/P_CURSOR[1]/AGENCY_ID"/>
              </xsl:attribute>
              <xsl:element name="io7:CompanyName">
                <!-- a simple content mapping -->
                <xsl:value-of select="$smo/context/correlation/Agent_work_agency/spGetAgencyInfo[1]/P_CURSOR[1]/AGENCY_NAME"/>
              </xsl:element>
            </xsl:element>
            <xsl:element name="io7:Telephone">
              <!-- a simple data mapping: "$smo/context/correlation/Agent_work_agency/spGetAgencyInfo[1]/P_CURSOR[1]/PHONE_NUMBER"(string) to "PhoneNumber"(StringLength1to32) -->
              <xsl:attribute name="PhoneNumber">
                <xsl:value-of select="$smo/context/correlation/Agent_work_agency/spGetAgencyInfo[1]/P_CURSOR[1]/PHONE_NUMBER"/>
              </xsl:attribute>
            </xsl:element>
            <xsl:element name="io7:Address">
              <!-- a simple data mapping: "$smo/context/correlation/Agent_work_agency/spGetAgencyInfo[1]/P_CURSOR[1]/ADDRESS_LINE1"(string) to "io7:AddressLine"(StringLength1to255) -->
              <xsl:if test="$smo/context/correlation/Agent_work_agency/spGetAgencyInfo[1]/P_CURSOR[1]/ADDRESS_LINE1">
                <xsl:element name="io7:AddressLine">
                  <xsl:value-of select="$smo/context/correlation/Agent_work_agency/spGetAgencyInfo[1]/P_CURSOR[1]/ADDRESS_LINE1"/>
                </xsl:element>
              </xsl:if>
              <!-- a simple data mapping: "$smo/context/correlation/Agent_work_agency/spGetAgencyInfo[1]/P_CURSOR[1]/ADDRESS_CITY"(string) to "io7:CityName"(StringLength1to64) -->
              <xsl:if test="$smo/context/correlation/Agent_work_agency/spGetAgencyInfo[1]/P_CURSOR[1]/ADDRESS_CITY">
                <xsl:element name="io7:CityName">
                  <xsl:value-of select="$smo/context/correlation/Agent_work_agency/spGetAgencyInfo[1]/P_CURSOR[1]/ADDRESS_CITY"/>
                </xsl:element>
              </xsl:if>
              <!-- a simple data mapping: "$smo/context/correlation/Agent_work_agency/spGetAgencyInfo[1]/P_CURSOR[1]/ZIP"(string) to "io7:PostalCode"(StringLength1to16) -->
              <xsl:if test="$smo/context/correlation/Agent_work_agency/spGetAgencyInfo[1]/P_CURSOR[1]/ZIP">
                <xsl:element name="io7:PostalCode">
                  <xsl:value-of select="$smo/context/correlation/Agent_work_agency/spGetAgencyInfo[1]/P_CURSOR[1]/ZIP"/>
                </xsl:element>
              </xsl:if>
              <xsl:element name="io7:StateProv">
                <!-- a simple data mapping: "$smo/context/correlation/Agent_work_agency/spGetAgencyInfo[1]/P_CURSOR[1]/STATE_CODE"(string) to "StateCode"(StateProvCodeType) -->
                <xsl:if test="$smo/context/correlation/Agent_work_agency/spGetAgencyInfo[1]/P_CURSOR[1]/STATE_CODE">
                  <xsl:attribute name="StateCode">
                    <xsl:value-of select="$smo/context/correlation/Agent_work_agency/spGetAgencyInfo[1]/P_CURSOR[1]/STATE_CODE"/>
                  </xsl:attribute>
                </xsl:if>
              </xsl:element>
              <xsl:element name="io7:CountryName">
                <!-- a simple data mapping: "$smo/context/correlation/Agent_work_agency/spGetAgencyInfo[1]/P_CURSOR[1]/ADD_COUNTRY_CODE"(string) to "Code"(ISO3166) -->
                <xsl:if test="$smo/context/correlation/Agent_work_agency/spGetAgencyInfo[1]/P_CURSOR[1]/ADD_COUNTRY_CODE">
                  <xsl:attribute name="Code">
                    <xsl:value-of select="$smo/context/correlation/Agent_work_agency/spGetAgencyInfo[1]/P_CURSOR[1]/ADD_COUNTRY_CODE"/>
                  </xsl:attribute>
                </xsl:if>
              </xsl:element>
            </xsl:element>
            <xsl:element name="io7:Email">
              <!-- a simple content mapping -->
              <xsl:value-of select="$smo/context/correlation/Agent_work_agency/spGetAgencyInfo[1]/P_CURSOR[1]/AGENCY_CLASSIFICATION_CODE"/>
            </xsl:element>
            <xsl:element name="io7:DSMName">
              <!-- a simple data mapping: "$smo/context/correlation/Agent_work_agency/spGetAgencyInfo[1]/P_CURSOR[1]/DSM_FIRST"(string) to "io7:GivenName"(StringLength1to64) -->
              <xsl:if test="$smo/context/correlation/Agent_work_agency/spGetAgencyInfo[1]/P_CURSOR[1]/DSM_FIRST">
                <xsl:element name="io7:GivenName">
                  <xsl:value-of select="$smo/context/correlation/Agent_work_agency/spGetAgencyInfo[1]/P_CURSOR[1]/DSM_FIRST"/>
                </xsl:element>
              </xsl:if>
              <!-- a simple data mapping: "$smo/context/correlation/Agent_work_agency/spGetAgencyInfo[1]/P_CURSOR[1]/DSM_LAST"(string) to "io7:Surname"(StringLength1to64) -->
              <xsl:element name="io7:Surname">
                <xsl:value-of select="$smo/context/correlation/Agent_work_agency/spGetAgencyInfo[1]/P_CURSOR[1]/DSM_LAST"/>
              </xsl:element>
            </xsl:element>
          </xsl:element>
        </xsl:element>
      </xsl:element>
    </xsl:element>
  </xsl:template>

  <!-- This rule represents a for-each transform: "P_CURSOR" to "io7:AgentInfo".  -->
  <xsl:template match="P_CURSOR"  mode="localP_CURSORToAgentInfo_362040736">
    <io7:AgentInfo>
      <!-- a simple data mapping: "AGENT_LOCATION"(string) to "AgentLocation"(string) -->
      <xsl:if test="AGENT_LOCATION">
        <xsl:attribute name="AgentLocation">
          <xsl:value-of select="AGENT_LOCATION"/>
        </xsl:attribute>
      </xsl:if>
      <!-- a simple data mapping: "WEB_CANACCESAGENCYDATA"(string) to "SecurityLevel"(StringLength1to64) -->
      <xsl:if test="WEB_CANACCESAGENCYDATA">
        <xsl:attribute name="SecurityLevel">
          <!-- variables for custom code -->
          <xsl:variable name="WEB_CANACCESAGENCYDATA" select="WEB_CANACCESAGENCYDATA"/>
          <xsl:call-template name="WEB_CANACCESAGENCYDATAToSecurityLevel">
            <xsl:with-param name="WEB_CANACCESAGENCYDATA" select="$WEB_CANACCESAGENCYDATA"/>
          </xsl:call-template>
        </xsl:attribute>
      </xsl:if>
      <io7:PersonName>
        <!-- a simple data mapping: "TITLE"(string) to "io7:NamePrefix"(StringLength1to16) -->
        <xsl:if test="TITLE">
          <xsl:element name="io7:NamePrefix">
            <xsl:value-of select="TITLE"/>
          </xsl:element>
        </xsl:if>
        <!-- a simple data mapping: "FIRST_NAME"(string) to "io7:GivenName"(StringLength1to64) -->
        <xsl:if test="FIRST_NAME">
          <xsl:element name="io7:GivenName">
            <xsl:value-of select="FIRST_NAME"/>
          </xsl:element>
        </xsl:if>
        <!-- a simple data mapping: "MIDDLE_NAME"(string) to "io7:MiddleName"(StringLength1to64) -->
        <xsl:if test="MIDDLE_NAME">
          <xsl:element name="io7:MiddleName">
            <xsl:value-of select="MIDDLE_NAME"/>
          </xsl:element>
        </xsl:if>
        <!-- a simple data mapping: "LAST_NAME"(string) to "io7:Surname"(StringLength1to64) -->
        <xsl:element name="io7:Surname">
          <xsl:value-of select="LAST_NAME"/>
        </xsl:element>
      </io7:PersonName>
      <xsl:element name="io7:Telephone">
        <!-- a simple data mapping: "PHONE_NUMBER"(string) to "PhoneNumber"(StringLength1to32) -->
        <xsl:attribute name="PhoneNumber">
          <xsl:value-of select="PHONE_NUMBER"/>
        </xsl:attribute>
      </xsl:element>
      <xsl:element name="io7:Email">
        <!-- a simple content mapping -->
        <xsl:value-of select="EMAIL"/>
      </xsl:element>
      <xsl:element name="io7:EmployeeInfo">
        <!-- a simple data mapping: "AGENT_ID"(string) to "EmployeeId"(StringLength1to16) -->
        <xsl:if test="AGENT_ID">
          <xsl:attribute name="EmployeeId">
            <xsl:value-of select="AGENT_ID"/>
          </xsl:attribute>
        </xsl:if>
        <!-- a simple content mapping -->
        <xsl:value-of select="EXTRA1"/>
      </xsl:element>
      <xsl:element name="io7:UserLogin">
        <!-- a simple data mapping: "WEB_PASSWORD"(string) to "Password"(StringLength1to64) -->
        <xsl:if test="WEB_PASSWORD">
          <xsl:attribute name="Password">
            <xsl:value-of select="WEB_PASSWORD"/>
          </xsl:attribute>
        </xsl:if>
        <!-- a simple data mapping: "WEB_LOGIN_NAME"(string) to "UserLoginName"(StringLength1to64) -->
        <xsl:attribute name="UserLoginName">
          <xsl:value-of select="WEB_LOGIN_NAME"/>
        </xsl:attribute>
        <!-- a simple mapping with no associated source:  to "UserType"(StringLength1to16) -->
        <xsl:attribute name="UserType">
          <xsl:value-of select="'AGENT'"/>
        </xsl:attribute>
      </xsl:element>
    </io7:AgentInfo>
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

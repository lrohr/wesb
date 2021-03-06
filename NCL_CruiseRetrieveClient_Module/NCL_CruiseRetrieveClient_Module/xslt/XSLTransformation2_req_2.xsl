<?xml version="1.0" encoding="UTF-8"?>
<!-- @generated mapFile="xslt/XSLTransformation2_req_2.map" md5sum="2411d1d9accaa845c0d7b5aa3e8ec21a" version="7.6.100" -->
<!--
*****************************************************************************
*   This file has been generated by the IBM XML Mapping Editor.
*
*   Mapping file:		XSLTransformation2_req_2.map
*   Map declaration(s):	XSLTransformation2_req_2
*   Input file(s):		smo://smo/name%3Dwsdl-primary/correlationContext%3D%257Bhttp%253A%252F%252FNCL_CruiseRetrieveClient_Module%257DApp_Context/message%3D%257Bhttp%253A%252F%252FTP_Logger%252FTP_Interface%257DTP_InsertUpdateRequestMsg/xpath%3D%252F/smo.xsd
*   Output file(s):		smo://smo/name%3Dwsdl-primary/correlationContext%3D%257Bhttp%253A%252F%252FNCL_CruiseRetrieveClient_Module%257DApp_Context/message%3D%257Bhttp%253A%252F%252FNCL_CruiseRetrieveClient_Module%252FDB_Lookup%257DexecuteNclseaNcl_Wesb_Get_Client_ProfileBGRequestMsg/xpath%3D%252F/smo.xsd
*
*   Note: Do not modify the contents of this file as it is overwritten
*         each time the mapping model is updated.
*****************************************************************************
-->
<xsl:stylesheet
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xltxe="http://www.ibm.com/xmlns/prod/xltxe-j"
    xmlns:str="http://exslt.org/strings"
    xmlns:set="http://exslt.org/sets"
    xmlns:math="http://exslt.org/math"
    xmlns:fn="http://www.w3.org/2005/xpath-functions"
    xmlns:regexp="http://exslt.org/regular-expressions"
    xmlns:dyn="http://exslt.org/dynamic"
    xmlns:dp="http://www.datapower.com/extensions"
    xmlns:exsl="http://exslt.org/common"
    xmlns:date="http://exslt.org/dates-and-times"
    xmlns:in="http://TP_Logger/TP_Interface"
    xmlns:in2="wsdl.http://TP_Logger/TP_Interface"
    xmlns:out="http://NCL_CruiseRetrieveClient_Module/DB_Lookup"
    xmlns:io5="http://www.w3.org/2003/05/soap-envelope"
    xmlns:io6="http://www.ibm.com/websphere/sibx/smo/v6.0.1"
    xmlns:out2="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_get_client_programs"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xmlns:out3="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_get_client_programsp_cursor"
    xmlns:out4="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_get_client_programsbg"
    xmlns:out5="wsdl.http://NCL_CruiseRetrieveClient_Module/DB_Lookup"
    xmlns:out9="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_get_client_vacat_pref"
    xmlns:out10="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_get_client_vacat_prefbg"
    xmlns:out6="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_get_client_profile"
    xmlns:io="http://www.ibm.com/xmlns/prod/websphere/mq/sca/6.0.0"
    xmlns:io2="http://NCL_CruiseRetrieveClient_Module"
    xmlns:io3="http://schemas.xmlsoap.org/ws/2004/08/addressing"
    xmlns:out8="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_get_client_profilep_cursor"
    xmlns:out7="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_get_client_profilebg"
    xmlns:io7="http://www.ibm.com/xmlns/prod/websphere/http/sca/6.1.0"
    xmlns:io4="http://nclapi/schemas"
    xmlns:out11="http://www.ibm.com/xmlns/prod/websphere/bo/6.0.0"
    xmlns:xs4xs="http://www.w3.org/2001/XMLSchema"
    xmlns:io8="http://www.w3.org/2005/08/addressing"
    xmlns:out12="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_get_client_vacat_prefp_prev_crus_cur"
    xmlns:out13="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_get_client_vacat_prefp_dest_cur"
    xmlns:map="http://NCL_CruiseRetrieveClient_Module/xslt/XSLTransformation2_req_2"
    xmlns:msl="http://www.ibm.com/xmlmap"
    exclude-result-prefixes="in in2 str set math fn regexp dyn dp exsl date fn map xltxe msl"
    version="2.0">
  <xsl:output method="xml" encoding="UTF-8" indent="no"/>
  <xltxe:java-extension prefix="fn" class="http://www.w3.org/2005/xpath-functions"/>

  <!-- root wrapper template  -->
  <xsl:template match="/">
    <xsl:choose>
      <xsl:when test="msl:datamap">
        <msl:datamap>
          <xsl:element name="dataObject">
            <xsl:attribute name="xsi:type">
              <xsl:value-of select="'io6:ServiceMessageObject'"/>
            </xsl:attribute>
            <xsl:call-template name="map:XSLTransformation2_req_22">
              <xsl:with-param name="smo" select="msl:datamap/dataObject[1]"/>
            </xsl:call-template>
          </xsl:element>
        </msl:datamap>
      </xsl:when>
      <xsl:otherwise>
        <xsl:apply-templates select="io6:smo" mode="map:XSLTransformation2_req_2"/>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <!-- This rule represents an element mapping: "io6:smo" to "io6:smo".  -->
  <xsl:template match="io6:smo"  mode="map:XSLTransformation2_req_2">
    <io6:smo>
      <context>
        <correlation>
          <xsl:attribute name="xsi:type">
            <xsl:value-of select="'io2:App_Context'"/>
          </xsl:attribute>
          <!-- a structural mapping: "context/correlation/io4:NCL_CruiseRetrieveClientRQ"(<Anonymous>) to "io4:NCL_CruiseRetrieveClientRQ"(<Anonymous>) -->
          <xsl:if test="context/correlation/io4:NCL_CruiseRetrieveClientRQ">
            <xsl:copy-of select="context/correlation/io4:NCL_CruiseRetrieveClientRQ" copy-namespaces="yes"/>
          </xsl:if>
          <!-- a simple data mapping: "context/correlation/LogID"(string) to "LogID"(string) -->
          <xsl:if test="context/correlation/LogID">
            <xsl:element name="LogID">
              <xsl:value-of select="context/correlation/LogID"/>
            </xsl:element>
          </xsl:if>
        </correlation>
      </context>
      <xsl:element name="body">
        <xsl:attribute name="xsi:type">
          <xsl:value-of select="'out5:executeNclseaNcl_Wesb_Get_Client_ProfileBGRequestMsg'"/>
        </xsl:attribute>
        <xsl:element name="out:executeNclseaNcl_Wesb_Get_Client_ProfileBG">
          <xsl:element name="out:executeNclseaNcl_Wesb_Get_Client_ProfileBGInput">
            <xsl:element name="NclseaNcl_Wesb_Get_Client_Profile">
              <!-- a simple data mapping: "context/correlation/io4:NCL_CruiseRetrieveClientRQ/io4:UserLogin/@UserLoginName"(StringLength1to64) to "p_webusername"(string) -->
              <xsl:if test="context/correlation/io4:NCL_CruiseRetrieveClientRQ/io4:UserLogin/@UserLoginName">
                <xsl:element name="p_webusername">
                  <!-- variables for custom code -->
                  <xsl:variable name="UserLoginName" select="context/correlation/io4:NCL_CruiseRetrieveClientRQ/io4:UserLogin/@UserLoginName"/>
                  <xsl:value-of select="fn:upper-case($UserLoginName)"/>
                </xsl:element>
              </xsl:if>
              <!-- a simple data mapping: "context/correlation/io4:NCL_CruiseRetrieveClientRQ/io4:ReservationID/@ID"(StringLength1to32) to "p_resid"(int) -->
              <xsl:if test="context/correlation/io4:NCL_CruiseRetrieveClientRQ/io4:ReservationID/@ID">
                <xsl:element name="p_resid">
                  <xsl:value-of select="context/correlation/io4:NCL_CruiseRetrieveClientRQ/io4:ReservationID/@ID"/>
                </xsl:element>
              </xsl:if>
              <!-- a simple data mapping: "context/correlation/io4:NCL_CruiseRetrieveClientRQ/io4:ClientInfo/io4:PersonName/io4:Surname"(StringLength1to64) to "p_lastname"(string) -->
              <xsl:if test="context/correlation/io4:NCL_CruiseRetrieveClientRQ/io4:ClientInfo/io4:PersonName/io4:Surname">
                <xsl:element name="p_lastname">
                  <xsl:value-of select="context/correlation/io4:NCL_CruiseRetrieveClientRQ/io4:ClientInfo/io4:PersonName/io4:Surname"/>
                </xsl:element>
              </xsl:if>
              <!-- a simple data mapping: "context/correlation/io4:NCL_CruiseRetrieveClientRQ/io4:ClientInfo/io4:PersonName/io4:GivenName[1]"(StringLength1to64) to "p_firstname"(string) -->
              <xsl:if test="context/correlation/io4:NCL_CruiseRetrieveClientRQ/io4:ClientInfo/io4:PersonName/io4:GivenName[1]">
                <xsl:element name="p_firstname">
                  <xsl:value-of select="context/correlation/io4:NCL_CruiseRetrieveClientRQ/io4:ClientInfo/io4:PersonName/io4:GivenName[1]"/>
                </xsl:element>
              </xsl:if>
              <!-- a simple data mapping: "context/correlation/io4:NCL_CruiseRetrieveClientRQ/io4:SelectedSailing/@ShipCode"(StringLength1to16) to "p_shipcode"(string) -->
              <xsl:if test="context/correlation/io4:NCL_CruiseRetrieveClientRQ/io4:SelectedSailing/@ShipCode">
                <xsl:element name="p_shipcode">
                  <xsl:value-of select="context/correlation/io4:NCL_CruiseRetrieveClientRQ/io4:SelectedSailing/@ShipCode"/>
                </xsl:element>
              </xsl:if>
              <!-- a simple data mapping: "context/correlation/io4:NCL_CruiseRetrieveClientRQ/io4:SelectedSailing/@Start"(DateOrTimeOrDateTimeType) to "p_sailingdate"(string) -->
              <xsl:if test="context/correlation/io4:NCL_CruiseRetrieveClientRQ/io4:SelectedSailing/@Start">
                <xsl:element name="p_sailingdate">
                  <xsl:value-of select="context/correlation/io4:NCL_CruiseRetrieveClientRQ/io4:SelectedSailing/@Start"/>
                </xsl:element>
              </xsl:if>
              <!-- a simple data mapping: "context/correlation/io4:NCL_CruiseRetrieveClientRQ/io4:LoyaltyInfo/@MembershipID"(StringLength1to32) to "p_clientid"(int) -->
              <!-- variables for custom code -->
              <xsl:variable name="MembershipID3" select="context/correlation/io4:NCL_CruiseRetrieveClientRQ/io4:LoyaltyInfo/@MembershipID"/>
              <xsl:if test="$MembershipID3 &gt; &apos;0&apos;">
                <xsl:element name="p_clientid">
                  <xsl:value-of select="context/correlation/io4:NCL_CruiseRetrieveClientRQ/io4:LoyaltyInfo/@MembershipID"/>
                </xsl:element>
              </xsl:if>
              <!-- a simple data mapping: "context/correlation/io4:NCL_CruiseRetrieveClientRQ/io4:ClientInfo/@BirthDate"(StringLength1to16) to "p_dateofbirth"(string) -->
              <xsl:if test="context/correlation/io4:NCL_CruiseRetrieveClientRQ/io4:ClientInfo/@BirthDate">
                <xsl:element name="p_dateofbirth">
                  <xsl:value-of select="context/correlation/io4:NCL_CruiseRetrieveClientRQ/io4:ClientInfo/@BirthDate"/>
                </xsl:element>
              </xsl:if>
              <!-- a simple data mapping: "context/correlation/io4:NCL_CruiseRetrieveClientRQ/io4:ClientInfo/io4:Address/io4:PostalCode"(StringLength1to16) to "p_zipcode"(string) -->
              <xsl:if test="context/correlation/io4:NCL_CruiseRetrieveClientRQ/io4:ClientInfo/io4:Address/io4:PostalCode">
                <xsl:element name="p_zipcode">
                  <xsl:value-of select="context/correlation/io4:NCL_CruiseRetrieveClientRQ/io4:ClientInfo/io4:Address/io4:PostalCode"/>
                </xsl:element>
              </xsl:if>
              <!-- a simple data mapping: "context/correlation/io4:NCL_CruiseRetrieveClientRQ/io4:ClientInfo/io4:Email"(StringLength1to128) to "p_email"(string) -->
              <xsl:if test="context/correlation/io4:NCL_CruiseRetrieveClientRQ/io4:ClientInfo/io4:Email">
                <xsl:element name="p_email">
                  <xsl:value-of select="context/correlation/io4:NCL_CruiseRetrieveClientRQ/io4:ClientInfo/io4:Email/."/>
                </xsl:element>
              </xsl:if>
            </xsl:element>
          </xsl:element>
        </xsl:element>
      </xsl:element>
    </io6:smo>
  </xsl:template>

  <!-- This rule represents a type mapping: "io6:smo" to "io6:smo".  -->
  <xsl:template name="map:XSLTransformation2_req_22">
    <xsl:param name="smo"/>
    <context>
      <correlation>
        <xsl:attribute name="xsi:type">
          <xsl:value-of select="'io2:App_Context'"/>
        </xsl:attribute>
        <!-- a structural mapping: "$smo/context/correlation/io4:NCL_CruiseRetrieveClientRQ"(<Anonymous>) to "io4:NCL_CruiseRetrieveClientRQ"(<Anonymous>) -->
        <xsl:if test="$smo/context/correlation/io4:NCL_CruiseRetrieveClientRQ">
          <xsl:copy-of select="$smo/context/correlation/io4:NCL_CruiseRetrieveClientRQ" copy-namespaces="yes"/>
        </xsl:if>
        <!-- a simple data mapping: "$smo/context/correlation/LogID"(string) to "LogID"(string) -->
        <xsl:if test="$smo/context/correlation/LogID">
          <xsl:element name="LogID">
            <xsl:value-of select="$smo/context/correlation/LogID"/>
          </xsl:element>
        </xsl:if>
      </correlation>
    </context>
    <xsl:element name="body">
      <xsl:attribute name="xsi:type">
        <xsl:value-of select="'out5:executeNclseaNcl_Wesb_Get_Client_ProfileBGRequestMsg'"/>
      </xsl:attribute>
      <xsl:element name="out:executeNclseaNcl_Wesb_Get_Client_ProfileBG">
        <xsl:element name="out:executeNclseaNcl_Wesb_Get_Client_ProfileBGInput">
          <xsl:element name="NclseaNcl_Wesb_Get_Client_Profile">
            <!-- a simple data mapping: "$smo/context/correlation/io4:NCL_CruiseRetrieveClientRQ/io4:UserLogin/@UserLoginName"(StringLength1to64) to "p_webusername"(string) -->
            <xsl:if test="$smo/context/correlation/io4:NCL_CruiseRetrieveClientRQ/io4:UserLogin/@UserLoginName">
              <xsl:element name="p_webusername">
                <!-- variables for custom code -->
                <xsl:variable name="UserLoginName" select="$smo/context/correlation/io4:NCL_CruiseRetrieveClientRQ/io4:UserLogin/@UserLoginName"/>
                <xsl:value-of select="fn:upper-case($UserLoginName)"/>
              </xsl:element>
            </xsl:if>
            <!-- a simple data mapping: "$smo/context/correlation/io4:NCL_CruiseRetrieveClientRQ/io4:ReservationID/@ID"(StringLength1to32) to "p_resid"(int) -->
            <xsl:if test="$smo/context/correlation/io4:NCL_CruiseRetrieveClientRQ/io4:ReservationID/@ID">
              <xsl:element name="p_resid">
                <xsl:value-of select="$smo/context/correlation/io4:NCL_CruiseRetrieveClientRQ/io4:ReservationID/@ID"/>
              </xsl:element>
            </xsl:if>
            <!-- a simple data mapping: "$smo/context/correlation/io4:NCL_CruiseRetrieveClientRQ/io4:ClientInfo/io4:PersonName/io4:Surname"(StringLength1to64) to "p_lastname"(string) -->
            <xsl:if test="$smo/context/correlation/io4:NCL_CruiseRetrieveClientRQ/io4:ClientInfo/io4:PersonName/io4:Surname">
              <xsl:element name="p_lastname">
                <xsl:value-of select="$smo/context/correlation/io4:NCL_CruiseRetrieveClientRQ/io4:ClientInfo/io4:PersonName/io4:Surname"/>
              </xsl:element>
            </xsl:if>
            <!-- a simple data mapping: "$smo/context/correlation/io4:NCL_CruiseRetrieveClientRQ/io4:ClientInfo/io4:PersonName/io4:GivenName[1]"(StringLength1to64) to "p_firstname"(string) -->
            <xsl:if test="$smo/context/correlation/io4:NCL_CruiseRetrieveClientRQ/io4:ClientInfo/io4:PersonName/io4:GivenName[1]">
              <xsl:element name="p_firstname">
                <xsl:value-of select="$smo/context/correlation/io4:NCL_CruiseRetrieveClientRQ/io4:ClientInfo/io4:PersonName/io4:GivenName[1]"/>
              </xsl:element>
            </xsl:if>
            <!-- a simple data mapping: "$smo/context/correlation/io4:NCL_CruiseRetrieveClientRQ/io4:SelectedSailing/@ShipCode"(StringLength1to16) to "p_shipcode"(string) -->
            <xsl:if test="$smo/context/correlation/io4:NCL_CruiseRetrieveClientRQ/io4:SelectedSailing/@ShipCode">
              <xsl:element name="p_shipcode">
                <xsl:value-of select="$smo/context/correlation/io4:NCL_CruiseRetrieveClientRQ/io4:SelectedSailing/@ShipCode"/>
              </xsl:element>
            </xsl:if>
            <!-- a simple data mapping: "$smo/context/correlation/io4:NCL_CruiseRetrieveClientRQ/io4:SelectedSailing/@Start"(DateOrTimeOrDateTimeType) to "p_sailingdate"(string) -->
            <xsl:if test="$smo/context/correlation/io4:NCL_CruiseRetrieveClientRQ/io4:SelectedSailing/@Start">
              <xsl:element name="p_sailingdate">
                <xsl:value-of select="$smo/context/correlation/io4:NCL_CruiseRetrieveClientRQ/io4:SelectedSailing/@Start"/>
              </xsl:element>
            </xsl:if>
            <!-- a simple data mapping: "$smo/context/correlation/io4:NCL_CruiseRetrieveClientRQ/io4:LoyaltyInfo/@MembershipID"(StringLength1to32) to "p_clientid"(int) -->
            <!-- variables for custom code -->
            <xsl:variable name="MembershipID3" select="$smo/context/correlation/io4:NCL_CruiseRetrieveClientRQ/io4:LoyaltyInfo/@MembershipID"/>
            <xsl:if test="$MembershipID3 &gt; &apos;0&apos;">
              <xsl:element name="p_clientid">
                <xsl:value-of select="$smo/context/correlation/io4:NCL_CruiseRetrieveClientRQ/io4:LoyaltyInfo/@MembershipID"/>
              </xsl:element>
            </xsl:if>
            <!-- a simple data mapping: "$smo/context/correlation/io4:NCL_CruiseRetrieveClientRQ/io4:ClientInfo/@BirthDate"(StringLength1to16) to "p_dateofbirth"(string) -->
            <xsl:if test="$smo/context/correlation/io4:NCL_CruiseRetrieveClientRQ/io4:ClientInfo/@BirthDate">
              <xsl:element name="p_dateofbirth">
                <xsl:value-of select="$smo/context/correlation/io4:NCL_CruiseRetrieveClientRQ/io4:ClientInfo/@BirthDate"/>
              </xsl:element>
            </xsl:if>
            <!-- a simple data mapping: "$smo/context/correlation/io4:NCL_CruiseRetrieveClientRQ/io4:ClientInfo/io4:Address/io4:PostalCode"(StringLength1to16) to "p_zipcode"(string) -->
            <xsl:if test="$smo/context/correlation/io4:NCL_CruiseRetrieveClientRQ/io4:ClientInfo/io4:Address/io4:PostalCode">
              <xsl:element name="p_zipcode">
                <xsl:value-of select="$smo/context/correlation/io4:NCL_CruiseRetrieveClientRQ/io4:ClientInfo/io4:Address/io4:PostalCode"/>
              </xsl:element>
            </xsl:if>
            <!-- a simple data mapping: "$smo/context/correlation/io4:NCL_CruiseRetrieveClientRQ/io4:ClientInfo/io4:Email"(StringLength1to128) to "p_email"(string) -->
            <xsl:if test="$smo/context/correlation/io4:NCL_CruiseRetrieveClientRQ/io4:ClientInfo/io4:Email">
              <xsl:element name="p_email">
                <xsl:value-of select="$smo/context/correlation/io4:NCL_CruiseRetrieveClientRQ/io4:ClientInfo/io4:Email/."/>
              </xsl:element>
            </xsl:if>
          </xsl:element>
        </xsl:element>
      </xsl:element>
    </xsl:element>
  </xsl:template>
</xsl:stylesheet>

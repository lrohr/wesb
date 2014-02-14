<?xml version="1.0" encoding="UTF-8"?>
<!-- @generated mapFile="xslt/xslt_saveStatus.map" md5sum="0d0efa29647a40d5f8a38a7e9be0be34" version="7.6.100" -->
<!--
*****************************************************************************
*   This file has been generated by the IBM XML Mapping Editor.
*
*   Mapping file:		xslt_saveStatus.map
*   Map declaration(s):	xslt_saveStatus
*   Input file(s):		smo://smo/name%3Dwsdl-primary/correlationContext%3D%257Bhttp%253A%252F%252FNCL_CruiseBookingPayment%257DappContext/message%3D%257Bhttp%253A%252F%252FNCL_CruiseBookingPayment%252FJDBCOutboundInterface%257DexecuteNclseaNcl_Wesb_Get_Cc_StatusResponseMsg/xpath%3D%252F/smo.xsd
*   Output file(s):		smo://smo/name%3Dwsdl-primary/correlationContext%3D%257Bhttp%253A%252F%252FNCL_CruiseBookingPayment%257DappContext/message%3D%257Bhttp%253A%252F%252FNCL_WESB_Shared_Library%252FNCL_CruiseBookingPayment_Interface%257DPerform_NCL_CruiseBookingPaymentResponseMsg/xpath%3D%252F/smo.xsd
*   XSLT import(s):   	xslt_saveStatus_Success.xsl, xslt_fix_Status.xsl
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
    xmlns:in="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_get_agency_info"
    xmlns:in2="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/get_ext_days_and_db_datecontainer"
    xmlns:in7="wsdl.http://NCL_CruiseBookingPayment/JDBCOutboundInterface"
    xmlns:in3="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/get_ext_days_and_db_date"
    xmlns:in4="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_get_cc_status"
    xmlns:in5="http://com/ibm/j2ca/fault"
    xmlns:in8="http://NCL_CruiseBookingPayment/JDBCOutboundInterface"
    xmlns:in6="http://com/ibm/j2ca/fault/afcfault"
    xmlns:out="wsdl.http://NCL_WESB_Shared_Library/NCL_CruiseBookingPayment_Interface"
    xmlns:io="http://www.w3.org/2003/05/soap-envelope"
    xmlns:io3="http://www.ibm.com/xmlns/prod/websphere/mq/sca/6.0.0"
    xmlns:io2="http://www.ibm.com/websphere/sibx/smo/v6.0.1"
    xmlns:io4="http://schemas.xmlsoap.org/ws/2004/08/addressing"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xmlns:io6="http://www.ibm.com/xmlns/prod/websphere/http/sca/6.1.0"
    xmlns:io5="http://nclapi/schemas"
    xmlns:out2="http://NCL_WESB_Shared_Library/NCL_CruiseBookingPayment_Interface"
    xmlns:io7="http://NCL_CruiseBookingPayment"
    xmlns:xs4xs="http://www.w3.org/2001/XMLSchema"
    xmlns:io8="http://www.w3.org/2005/08/addressing"
    xmlns:map="http://NCL_CruiseBookingPayment/xslt/xslt_saveStatus"
    xmlns:msl="http://www.ibm.com/xmlmap"
    exclude-result-prefixes="in in2 in7 in3 in4 in5 in8 in6 str set math fn regexp dyn dp exsl date map xalan msl"
    version="1.0">

  <!-- imports  -->
  <xsl:import href="xslt_saveStatus_Success.xsl"/>
  <xsl:import href="xslt_fix_Status.xsl"/>
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
            <xsl:call-template name="map:xslt_saveStatus2">
              <xsl:with-param name="smo" select="msl:datamap/dataObject[1]"/>
            </xsl:call-template>
          </xsl:element>
        </msl:datamap>
      </xsl:when>
      <xsl:otherwise>
        <xsl:apply-templates select="io2:smo" mode="map:xslt_saveStatus"/>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <!-- This rule represents an element mapping: "io2:smo" to "io2:smo".  -->
  <xsl:template match="io2:smo"  mode="map:xslt_saveStatus">
    <io2:smo>
      <context>
        <correlation>
          <xsl:attribute name="xsi:type">
            <xsl:value-of select="'io7:appContext'"/>
          </xsl:attribute>
          <!-- a structural mapping: "context/correlation/io5:NCL_CruiseBookingPaymentRQ"(<Anonymous>) to "io5:NCL_CruiseBookingPaymentRQ"(<Anonymous>) -->
          <xsl:if test="context/correlation/io5:NCL_CruiseBookingPaymentRQ">
            <xsl:copy-of select="context/correlation/io5:NCL_CruiseBookingPaymentRQ"/>
          </xsl:if>
          <xsl:element name="io5:NCL_CruiseBookingPaymentRS">
            <!-- a simple data mapping: "context/correlation/io5:NCL_CruiseBookingPaymentRQ/@TransactionIdentifier"(StringLength1to32) to "TransactionIdentifier"(StringLength1to32) -->
            <xsl:if test="context/correlation/io5:NCL_CruiseBookingPaymentRQ/@TransactionIdentifier">
              <xsl:attribute name="TransactionIdentifier">
                <xsl:value-of select="context/correlation/io5:NCL_CruiseBookingPaymentRQ/@TransactionIdentifier"/>
              </xsl:attribute>
            </xsl:if>
            <!-- a structural mapping: "context/correlation/io5:NCL_CruiseBookingPaymentRQ/@TransactionIdentifier"(StringLength1to32) to "io5:Success"(SuccessType) -->
            <xsl:if test="context/correlation/io5:NCL_CruiseBookingPaymentRQ/@TransactionIdentifier">
              <xsl:element name="io5:Success">
                <!-- variables for custom code -->
                <xsl:variable name="TransactionIdentifier" select="context/correlation/io5:NCL_CruiseBookingPaymentRQ/@TransactionIdentifier"/>
                <xsl:call-template name="TransactionIdentifierToSuccess">
                  <xsl:with-param name="TransactionIdentifier" select="$TransactionIdentifier"/>
                </xsl:call-template>
              </xsl:element>
            </xsl:if>
            <xsl:element name="io5:PaymentOptions">
              <xsl:element name="io5:PaymentOption">
                <!-- a simple data mapping: "body/in8:executeNclseaNcl_Wesb_Get_Cc_StatusResponse/in8:executeNclseaNcl_Wesb_Get_Cc_StatusOutput/p_status"(string) to "PaymentStatus"(OTA_CodeType) -->
                <xsl:if test="body/in8:executeNclseaNcl_Wesb_Get_Cc_StatusResponse/in8:executeNclseaNcl_Wesb_Get_Cc_StatusOutput/p_status">
                  <xsl:attribute name="PaymentStatus">
                    <!-- variables for custom code -->
                    <xsl:variable name="p_status" select="body/in8:executeNclseaNcl_Wesb_Get_Cc_StatusResponse/in8:executeNclseaNcl_Wesb_Get_Cc_StatusOutput/p_status"/>
                    <xsl:call-template name="P_statusToPaymentStatus">
                      <xsl:with-param name="p_status" select="$p_status"/>
                    </xsl:call-template>
                  </xsl:attribute>
                </xsl:if>
                <xsl:element name="io5:PaymentCard">
                  <!-- a simple data mapping: "context/correlation/io5:NCL_CruiseBookingPaymentRQ/io5:ReservationInfo/io5:PaymentOptions/io5:PaymentOption[1]/io5:PaymentCard/@CardNumber"(NumericStringLength1to19) to "CardNumber"(NumericStringLength1to19) -->
                  <xsl:if test="context/correlation/io5:NCL_CruiseBookingPaymentRQ/io5:ReservationInfo/io5:PaymentOptions/io5:PaymentOption[1]/io5:PaymentCard/@CardNumber">
                    <xsl:attribute name="CardNumber">
                      <xsl:value-of select="context/correlation/io5:NCL_CruiseBookingPaymentRQ/io5:ReservationInfo/io5:PaymentOptions/io5:PaymentOption[1]/io5:PaymentCard/@CardNumber"/>
                    </xsl:attribute>
                  </xsl:if>
                  <!-- a simple data mapping: "context/correlation/io5:NCL_CruiseBookingPaymentRQ/io5:ReservationInfo/io5:PaymentOptions/io5:PaymentOption[1]/io5:PaymentCard/@CardType"(OTA_CodeType) to "CardType"(OTA_CodeType) -->
                  <xsl:if test="context/correlation/io5:NCL_CruiseBookingPaymentRQ/io5:ReservationInfo/io5:PaymentOptions/io5:PaymentOption[1]/io5:PaymentCard/@CardType">
                    <xsl:attribute name="CardType">
                      <xsl:value-of select="context/correlation/io5:NCL_CruiseBookingPaymentRQ/io5:ReservationInfo/io5:PaymentOptions/io5:PaymentOption[1]/io5:PaymentCard/@CardType"/>
                    </xsl:attribute>
                  </xsl:if>
                </xsl:element>
              </xsl:element>
            </xsl:element>
          </xsl:element>
          <!-- a simple data mapping: "context/correlation/LogId"(string) to "LogId"(string) -->
          <xsl:if test="context/correlation/LogId">
            <xsl:element name="LogId">
              <xsl:value-of select="context/correlation/LogId"/>
            </xsl:element>
          </xsl:if>
        </correlation>
      </context>
    </io2:smo>
  </xsl:template>

  <!-- This rule represents a type mapping: "io2:smo" to "io2:smo".  -->
  <xsl:template name="map:xslt_saveStatus2">
    <xsl:param name="smo"/>
    <context>
      <correlation>
        <xsl:attribute name="xsi:type">
          <xsl:value-of select="'io7:appContext'"/>
        </xsl:attribute>
        <!-- a structural mapping: "$smo/context/correlation/io5:NCL_CruiseBookingPaymentRQ"(<Anonymous>) to "io5:NCL_CruiseBookingPaymentRQ"(<Anonymous>) -->
        <xsl:if test="$smo/context/correlation/io5:NCL_CruiseBookingPaymentRQ">
          <xsl:copy-of select="$smo/context/correlation/io5:NCL_CruiseBookingPaymentRQ"/>
        </xsl:if>
        <xsl:element name="io5:NCL_CruiseBookingPaymentRS">
          <!-- a simple data mapping: "$smo/context/correlation/io5:NCL_CruiseBookingPaymentRQ/@TransactionIdentifier"(StringLength1to32) to "TransactionIdentifier"(StringLength1to32) -->
          <xsl:if test="$smo/context/correlation/io5:NCL_CruiseBookingPaymentRQ/@TransactionIdentifier">
            <xsl:attribute name="TransactionIdentifier">
              <xsl:value-of select="$smo/context/correlation/io5:NCL_CruiseBookingPaymentRQ/@TransactionIdentifier"/>
            </xsl:attribute>
          </xsl:if>
          <!-- a structural mapping: "$smo/context/correlation/io5:NCL_CruiseBookingPaymentRQ/@TransactionIdentifier"(StringLength1to32) to "io5:Success"(SuccessType) -->
          <xsl:if test="$smo/context/correlation/io5:NCL_CruiseBookingPaymentRQ/@TransactionIdentifier">
            <xsl:element name="io5:Success">
              <!-- variables for custom code -->
              <xsl:variable name="TransactionIdentifier" select="$smo/context/correlation/io5:NCL_CruiseBookingPaymentRQ/@TransactionIdentifier"/>
              <xsl:call-template name="TransactionIdentifierToSuccess">
                <xsl:with-param name="TransactionIdentifier" select="$TransactionIdentifier"/>
              </xsl:call-template>
            </xsl:element>
          </xsl:if>
          <xsl:element name="io5:PaymentOptions">
            <xsl:element name="io5:PaymentOption">
              <!-- a simple data mapping: "$smo/body/in8:executeNclseaNcl_Wesb_Get_Cc_StatusResponse/in8:executeNclseaNcl_Wesb_Get_Cc_StatusOutput/p_status"(string) to "PaymentStatus"(OTA_CodeType) -->
              <xsl:if test="$smo/body/in8:executeNclseaNcl_Wesb_Get_Cc_StatusResponse/in8:executeNclseaNcl_Wesb_Get_Cc_StatusOutput/p_status">
                <xsl:attribute name="PaymentStatus">
                  <!-- variables for custom code -->
                  <xsl:variable name="p_status" select="$smo/body/in8:executeNclseaNcl_Wesb_Get_Cc_StatusResponse/in8:executeNclseaNcl_Wesb_Get_Cc_StatusOutput/p_status"/>
                  <xsl:call-template name="P_statusToPaymentStatus">
                    <xsl:with-param name="p_status" select="$p_status"/>
                  </xsl:call-template>
                </xsl:attribute>
              </xsl:if>
              <xsl:element name="io5:PaymentCard">
                <!-- a simple data mapping: "$smo/context/correlation/io5:NCL_CruiseBookingPaymentRQ/io5:ReservationInfo/io5:PaymentOptions/io5:PaymentOption[1]/io5:PaymentCard/@CardNumber"(NumericStringLength1to19) to "CardNumber"(NumericStringLength1to19) -->
                <xsl:if test="$smo/context/correlation/io5:NCL_CruiseBookingPaymentRQ/io5:ReservationInfo/io5:PaymentOptions/io5:PaymentOption[1]/io5:PaymentCard/@CardNumber">
                  <xsl:attribute name="CardNumber">
                    <xsl:value-of select="$smo/context/correlation/io5:NCL_CruiseBookingPaymentRQ/io5:ReservationInfo/io5:PaymentOptions/io5:PaymentOption[1]/io5:PaymentCard/@CardNumber"/>
                  </xsl:attribute>
                </xsl:if>
                <!-- a simple data mapping: "$smo/context/correlation/io5:NCL_CruiseBookingPaymentRQ/io5:ReservationInfo/io5:PaymentOptions/io5:PaymentOption[1]/io5:PaymentCard/@CardType"(OTA_CodeType) to "CardType"(OTA_CodeType) -->
                <xsl:if test="$smo/context/correlation/io5:NCL_CruiseBookingPaymentRQ/io5:ReservationInfo/io5:PaymentOptions/io5:PaymentOption[1]/io5:PaymentCard/@CardType">
                  <xsl:attribute name="CardType">
                    <xsl:value-of select="$smo/context/correlation/io5:NCL_CruiseBookingPaymentRQ/io5:ReservationInfo/io5:PaymentOptions/io5:PaymentOption[1]/io5:PaymentCard/@CardType"/>
                  </xsl:attribute>
                </xsl:if>
              </xsl:element>
            </xsl:element>
          </xsl:element>
        </xsl:element>
        <!-- a simple data mapping: "$smo/context/correlation/LogId"(string) to "LogId"(string) -->
        <xsl:if test="$smo/context/correlation/LogId">
          <xsl:element name="LogId">
            <xsl:value-of select="$smo/context/correlation/LogId"/>
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

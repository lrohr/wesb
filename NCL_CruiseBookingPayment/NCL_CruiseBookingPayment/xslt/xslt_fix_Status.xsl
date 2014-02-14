<?xml version="1.0" encoding="UTF-8"?>
<!--
*****************************************************************************
*   This file contains the XSLT code snippets for the custom mappings
*   defined using the IBM XML Mapping Editor V1.0.110
*
*   Mapping file:		xslt_saveStatus.map
*   Map declaration(s):	xslt_saveStatus
*   Input file(s):		smo://smo/name%3Dwsdl-primary/correlationContext%3D%257Bhttp%253A%252F%252FNCL_CruiseBookingPayment%257DappContext/message%3D%257Bhttp%253A%252F%252FNCL_CruiseBookingPayment%252FJDBCOutboundInterface%257DexecuteNclseaNcl_Wesb_Get_Cc_StatusResponseMsg/xpath%3D%252F/smo.xsd
*   Output file(s):		smo://smo/name%3Dwsdl-primary/correlationContext%3D%257Bhttp%253A%252F%252FNCL_CruiseBookingPayment%257DappContext/message%3D%257Bhttp%253A%252F%252FNCL_WESB_Shared_Library%252FNCL_CruiseBookingPayment_Interface%257DPerform_NCL_CruiseBookingPaymentResponseMsg/xpath%3D%252F/smo.xsd
*
*   Custom code snippets are wrapped in top-level <xsl:template> 
*   elements. These <xsl:template> elements, in turn, are used to
*   interface with the custom mappings in the XML Mapping editor.
*****************************************************************************
-->
<xsl:stylesheet
     xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
     xmlns:xalan="http://xml.apache.org/xslt"
     xmlns:in="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_get_agency_info"
     xmlns:in2="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/get_ext_days_and_db_datecontainer"
     xmlns:in3="wsdl.http://NCL_CruiseBookingPayment/JDBCOutboundInterface"
     xmlns:in4="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/get_ext_days_and_db_date"
     xmlns:in5="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_get_cc_status"
     xmlns:in6="http://com/ibm/j2ca/fault"
     xmlns:in7="http://NCL_CruiseBookingPayment/JDBCOutboundInterface"
     xmlns:in8="http://com/ibm/j2ca/fault/afcfault"
     xmlns:out="wsdl.http://NCL_WESB_Shared_Library/NCL_CruiseBookingPayment_Interface"
     xmlns:io2="http://www.ibm.com/xmlns/prod/websphere/mq/sca/6.0.0"
     xmlns:io="http://www.ibm.com/websphere/sibx/smo/v6.0.1"
     xmlns:io3="http://schemas.xmlsoap.org/ws/2004/08/addressing"
     xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
     xmlns:io5="http://www.ibm.com/xmlns/prod/websphere/http/sca/6.1.0"
     xmlns:io4="http://nclapi/schemas"
     xmlns:out2="http://NCL_WESB_Shared_Library/NCL_CruiseBookingPayment_Interface"
     xmlns:io6="http://NCL_CruiseBookingPayment"
     xmlns:xsd="http://www.w3.org/2001/XMLSchema"
     xmlns:io7="http://www.w3.org/2005/08/addressing"
     exclude-result-prefixes="in in2 in3 in4 in5 in6 in7 in8 xalan"
     version="1.0">
  <xsl:output method="xml" encoding="UTF-8" indent="yes" xalan:indent-amount="2"/>
  <xsl:strip-space elements="*"/>

  <!-- The rule represents a custom mapping: "p_status" to "PaymentStatus". -->
  <xsl:template name="P_statusToPaymentStatus">
    <xsl:param name="p_status"/>
    <!-- ADD CUSTOM CODE HERE. -->
        <xsl:if test="$p_status='1'">
	    <xsl:value-of select="'1'"/>
    </xsl:if>
    <xsl:if test="$p_status='2'">
	    <xsl:value-of select="'4'"/>
    </xsl:if>
    <xsl:if test="$p_status='3'">
	    <xsl:value-of select="'3'"/>
    </xsl:if>
    <xsl:if test="$p_status='4'">
	    <xsl:value-of select="'9'"/>
    </xsl:if>
  </xsl:template>
</xsl:stylesheet>
<?xml version="1.0" encoding="UTF-8"?>
<!--
*****************************************************************************
*   This file contains the XSLT code snippets for the custom mappings
*   defined using the IBM XML Mapping Editor V1.0.110
*
*   Mapping file:		XSLTransformation1_req_1.map
*   Map declaration(s):	XSLTransformation1_req_1
*   Input file(s):		smo://smo/name%3Dwsdl-primary/correlationContext%3D%257Bhttp%253A%252F%252FNCL_CruiseRetrieveGroupBookings_Module%257DApp_context/message%3D%257Bhttp%253A%252F%252FNCL_CruiseRetrieveGroupBookings_Module%252FDB_LOOKUP%257DexecuteNclseaNcl_Wesb_Retrieve_Grp_BookingBGResponseMsg/xpath%3D%252F/smo.xsd
*   Output file(s):		smo://smo/name%3Dwsdl-primary/correlationContext%3D%257Bhttp%253A%252F%252FNCL_CruiseRetrieveGroupBookings_Module%257DApp_context/message%3D%257Bhttp%253A%252F%252FNCL_WESB_Shared_Library%252FNCL_CruiseRetrieveGroupBookings_Interface%257DPerform_NCL_CruiseRetrieveGroupBookingsResponseMsg/xpath%3D%252F/smo.xsd
*
*   Custom code snippets are wrapped in top-level <xsl:template> 
*   elements. These <xsl:template> elements, in turn, are used to
*   interface with the custom mappings in the XML Mapping editor.
*****************************************************************************
-->
<xsl:stylesheet
     xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
     xmlns:xalan="http://xml.apache.org/xslt"
     xmlns:in="http://NCL_CruiseRetrieveGroupBookings_Module/DB_LOOKUP"
     xmlns:in2="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_retrieve_grp_booking"
     xmlns:in3="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_retrieve_grp_bookingbg"
     xmlns:in4="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_retrieve_grp_bookingp_cursor"
     xmlns:in5="http://www.ibm.com/xmlns/prod/websphere/bo/6.0.0"
     xmlns:in6="wsdl.http://NCL_CruiseRetrieveGroupBookings_Module/DB_LOOKUP"
     xmlns:io2="http://www.ibm.com/xmlns/prod/websphere/mq/sca/6.0.0"
     xmlns:io="http://www.ibm.com/websphere/sibx/smo/v6.0.1"
     xmlns:out="http://NCL_WESB_Shared_Library/NCL_CruiseRetrieveGroupBookings_Interface"
     xmlns:io3="http://schemas.xmlsoap.org/ws/2004/08/addressing"
     xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
     xmlns:io5="http://www.ibm.com/xmlns/prod/websphere/http/sca/6.1.0"
     xmlns:io4="http://nclapi/schemas"
     xmlns:xsd="http://www.w3.org/2001/XMLSchema"
     xmlns:io7="http://www.w3.org/2005/08/addressing"
     xmlns:io6="http://NCL_CruiseRetrieveGroupBookings_Module"
     xmlns:out2="wsdl.http://NCL_WESB_Shared_Library/NCL_CruiseRetrieveGroupBookings_Interface"
     exclude-result-prefixes="in in2 in3 in4 in5 in6 xalan"
     version="1.0">
  <xsl:output method="xml" encoding="UTF-8" indent="yes" xalan:indent-amount="2"/>
  <xsl:strip-space elements="*"/>

  <!-- The rule represents a custom mapping: "sail_date_from" to "Start". -->
  <xsl:template name="Sail_date_fromToStart">
    <xsl:param name="sail_date_from"/>
    <!-- ADD CUSTOM CODE HERE. -->
    <xsl:value-of select="concat(substring($sail_date_from,'6','2'),'/',substring($sail_date_from,'9','2'), '/', substring($sail_date_from,'1','4'),  ' 00:00:00'  )"></xsl:value-of>
  </xsl:template>
</xsl:stylesheet>
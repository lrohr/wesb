<?xml version="1.0" encoding="UTF-8"?>
<!--
*****************************************************************************
*   This file contains the XSLT code snippets for the custom mappings
*   defined using the IBM XML Mapping Editor V1.0.110
*
*   Mapping file:		Error_link_to_Self_req_1.map
*   Map declaration(s):	Error_link_to_Self_req_1
*   Input file(s):		smo://smo/name%3Dwsdl-primary/correlationContext%3D%257Bhttp%253A%252F%252FLink_Reservation%257Dapp_context/message%3D%257Bhttp%253A%252F%252FLink_Reservation%252FDB_LinkReservation%257DexecuteNclseaNcl_Wesb_Get_Client_ProfileBGResponseMsg/xpath%3D%252F/smo.xsd
*   Output file(s):		smo://smo/name%3Dwsdl-primary/correlationContext%3D%257Bhttp%253A%252F%252FLink_Reservation%257Dapp_context/message%3D%257Bhttp%253A%252F%252FNCL_WESB_Shared_Library%252FNCL_CruiseLinkReservation_Interface%257DPerform_NCL_CruiseLinkReservationResponseMsg/xpath%3D%252F/smo.xsd
*
*   Custom code snippets are wrapped in top-level <xsl:template> 
*   elements. These <xsl:template> elements, in turn, are used to
*   interface with the custom mappings in the XML Mapping editor.
*****************************************************************************
-->
<xsl:stylesheet
     xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
     xmlns:xalan="http://xml.apache.org/xslt"
     xmlns:in="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_create_client_link"
     xmlns:in2="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_create_client_linkbg"
     xmlns:in3="http://Link_Reservation/DB_LinkReservation"
     xmlns:in4="wsdl.http://Link_Reservation/DB_LinkReservation"
     xmlns:in5="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_get_client_profile"
     xmlns:in7="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_get_client_profilep_cursor"
     xmlns:in6="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_get_client_profilebg"
     xmlns:in8="http://www.ibm.com/xmlns/prod/websphere/bo/6.0.0"
     xmlns:out="wsdl.http://NCL_WESB_Shared_Library/NCL_CruiseLinkReservation_Interface"
     xmlns:io2="http://www.ibm.com/xmlns/prod/websphere/mq/sca/6.0.0"
     xmlns:io="http://www.ibm.com/websphere/sibx/smo/v6.0.1"
     xmlns:io3="http://schemas.xmlsoap.org/ws/2004/08/addressing"
     xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
     xmlns:io5="http://www.ibm.com/xmlns/prod/websphere/http/sca/6.1.0"
     xmlns:io4="http://nclapi/schemas"
     xmlns:out2="http://NCL_WESB_Shared_Library/NCL_CruiseLinkReservation_Interface"
     xmlns:io6="http://Link_Reservation"
     xmlns:xsd="http://www.w3.org/2001/XMLSchema"
     xmlns:io7="http://www.w3.org/2005/08/addressing"
     exclude-result-prefixes="in in2 in3 in4 in5 in7 in6 in8 xalan"
     version="1.0">
  <xsl:output method="xml" encoding="UTF-8" indent="yes" xalan:indent-amount="2"/>
  <xsl:strip-space elements="*"/>

  <!-- The rule represents a custom mapping: "TransactionIdentifier" to "io4:Success". -->
  <xsl:template name="TransactionIdentifierToSuccess">
    <xsl:param name="TransactionIdentifier"/>
    <!-- ADD CUSTOM CODE HERE. -->
       <xsl:value-of select="''"/>
  </xsl:template>
</xsl:stylesheet>
<?xml version="1.0" encoding="UTF-8"?>
<!--
*****************************************************************************
*   This file contains the XSLT code snippets for the custom mappings
*   defined using the IBM XML Mapping Editor V1.0.110
*
*   Mapping file:		To_store_Link_req_1.map
*   Map declaration(s):	To_store_Link_req_1
*   Input file(s):		smo://smo/name%3Dwsdl-primary/correlationContext%3D%257Bhttp%253A%252F%252FLink_Reservation%257Dapp_context/message%3D%257Bhttp%253A%252F%252FLink_Reservation%252FDB_LinkReservation%257DexecuteNclseaNcl_Wesb_Get_Client_ProfileBGResponseMsg/xpath%3D%252F/smo.xsd
*   Output file(s):		smo://smo/name%3Dwsdl-primary/correlationContext%3D%257Bhttp%253A%252F%252FLink_Reservation%257Dapp_context/message%3D%257Bhttp%253A%252F%252FLink_Reservation%252FDB_LinkReservation%257DexecuteNclseaNcl_Wesb_Create_Client_LinkBGRequestMsg/xpath%3D%252F/smo.xsd
*
*   Custom code snippets are wrapped in top-level <xsl:template> 
*   elements. These <xsl:template> elements, in turn, are used to
*   interface with the custom mappings in the XML Mapping editor.
*****************************************************************************
-->
<xsl:stylesheet
     xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
     xmlns:xalan="http://xml.apache.org/xslt"
     xmlns:io="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_create_client_link"
     xmlns:io2="http://www.ibm.com/websphere/sibx/smo/v6.0.1"
     xmlns:io3="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_create_client_linkbg"
     xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
     xmlns:io4="http://Link_Reservation/DB_LinkReservation"
     xmlns:io5="wsdl.http://Link_Reservation/DB_LinkReservation"
     xmlns:io6="http://www.ibm.com/xmlns/prod/websphere/mq/sca/6.0.0"
     xmlns:io7="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_get_client_profile"
     xmlns:io8="http://schemas.xmlsoap.org/ws/2004/08/addressing"
     xmlns:io12="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_get_client_profilebg"
     xmlns:io11="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_get_client_profilep_cursor"
     xmlns:io9="http://www.ibm.com/xmlns/prod/websphere/http/sca/6.1.0"
     xmlns:io10="http://nclapi/schemas"
     xmlns:io13="http://Link_Reservation"
     xmlns:io14="http://www.ibm.com/xmlns/prod/websphere/bo/6.0.0"
     xmlns:xsd="http://www.w3.org/2001/XMLSchema"
     xmlns:io15="http://www.w3.org/2005/08/addressing"
     exclude-result-prefixes="xalan"
     version="1.0">
  <xsl:output method="xml" encoding="UTF-8" indent="yes" xalan:indent-amount="2"/>
  <xsl:strip-space elements="*"/>

  <!-- The rule represents a custom mapping: "client_id" to "Error_code". -->
  <xsl:template name="Client_idToError_code">
    <xsl:param name="client_id"/>
    <!-- ADD CUSTOM CODE HERE. -->
        
         <xsl:value-of select="'Constant'"></xsl:value-of>
  </xsl:template>
</xsl:stylesheet>
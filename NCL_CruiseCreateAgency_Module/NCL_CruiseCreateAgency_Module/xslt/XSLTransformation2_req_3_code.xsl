<?xml version="1.0" encoding="UTF-8"?>
<!--
*****************************************************************************
*   This file contains the XSLT code snippets for the custom mappings
*   defined using the IBM XML Mapping Editor V1.0.110
*
*   Mapping file:		XSLTransformation2_req_3.map
*   Map declaration(s):	XSLTransformation2_req_3
*   Input file(s):		smo://smo/name%3Dwsdl-primary/correlationContext%3D%257Bhttp%253A%252F%252FNCL_CruiseCreateAgency_Module%257DApp_context/message%3D%257Bhttp%253A%252F%252FNCL_CruiseCreateAgency_Module%252FDB_Lookup%257DexecuteNclseaNcl_Wesb_Create_AgencyBGResponseMsg/xpath%3D%252F/smo.xsd
*   Output file(s):		smo://smo/name%3Dwsdl-primary/correlationContext%3D%257Bhttp%253A%252F%252FNCL_CruiseCreateAgency_Module%257DApp_context/message%3D%257Bhttp%253A%252F%252FNCL_WESB_Shared_Library%252FNCL_CruiseCreateAgency_Interface%257DPerform_NCL_CruiseCreateAgencyResponseMsg/xpath%3D%252F/smo.xsd
*
*   Custom code snippets are wrapped in top-level <xsl:template> 
*   elements. These <xsl:template> elements, in turn, are used to
*   interface with the custom mappings in the XML Mapping editor.
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
     xmlns:in2="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_update_agency_info"
     xmlns:in="http://NCL_CruiseCreateAgency_Module/DB_Lookup"
     xmlns:in3="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_update_agency_infobg"
     xmlns:in4="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_upd_agency_phone_info"
     xmlns:in5="wsdl.http://NCL_CruiseCreateAgency_Module/DB_Lookup"
     xmlns:in6="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_upd_agency_phone_infobg"
     xmlns:in7="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_upd_agency_email_info"
     xmlns:in8="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_upd_agency_email_infobg"
     xmlns:in9="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_upd_agency_addr_info"
     xmlns:in10="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_upd_agency_addr_infobg"
     xmlns:in11="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_create_agency"
     xmlns:in12="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_upd_agc_conpref_info"
     xmlns:in13="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_create_agencybg"
     xmlns:in15="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_upd_agc_conpref_infobg"
     xmlns:in14="http://www.ibm.com/xmlns/prod/websphere/bo/6.0.0"
     xmlns:io="http://www.w3.org/2003/05/soap-envelope"
     xmlns:io3="http://www.ibm.com/xmlns/prod/websphere/mq/sca/6.0.0"
     xmlns:io2="http://www.ibm.com/websphere/sibx/smo/v6.0.1"
     xmlns:out="wsdl.http://NCL_WESB_Shared_Library/NCL_CruiseCreateAgency_Interface"
     xmlns:io4="http://schemas.xmlsoap.org/ws/2004/08/addressing"
     xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
     xmlns:io6="http://www.ibm.com/xmlns/prod/websphere/http/sca/6.1.0"
     xmlns:io5="http://nclapi/schemas"
     xmlns:io7="http://NCL_CruiseCreateAgency_Module"
     xmlns:xs4xs="http://www.w3.org/2001/XMLSchema"
     xmlns:io8="http://www.w3.org/2005/08/addressing"
     xmlns:out2="http://NCL_WESB_Shared_Library/NCL_CruiseCreateAgency_Interface"
     xmlns:map="http://NCL_CruiseCreateAgency_Module/xslt/XSLTransformation2_req_3"
     exclude-result-prefixes="in2 in in3 in4 in5 in6 in7 in8 in9 in10 in11 in12 in13 in15 in14 str set math fn regexp dyn dp exsl date map xalan"
     version="1.0">
  <xsl:output method="xml" encoding="UTF-8" indent="yes" xalan:indent-amount="2"/>
  <xsl:strip-space elements="*"/>

  <!-- The rule represents a custom mapping: "p_errorcode" to "Code". -->
  <xsl:template name="P_errorcodeToCode">
    <xsl:param name="p_errorcode"/>
    <!-- ADD CUSTOM CODE HERE. -->
     <xsl:choose>
          <xsl:when test="  (    string-length($p_errorcode)   > '1'    ) ">
                 <xsl:value-of select=" $p_errorcode  "></xsl:value-of>
          </xsl:when>
     </xsl:choose>
  </xsl:template>
</xsl:stylesheet>
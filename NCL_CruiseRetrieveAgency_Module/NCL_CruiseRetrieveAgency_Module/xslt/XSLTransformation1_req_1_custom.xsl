<?xml version="1.0" encoding="UTF-8"?>
<!--
*****************************************************************************
*   This file contains the XSLT code snippets for the custom mappings
*   defined using the IBM XML Mapping Editor V1.0.110
*
*   Mapping file:		XSLTransformation1_req_1.map
*   Map declaration(s):	XSLTransformation1_req_1
*   Input file(s):		smo://smo/name%3Dwsdl-primary/correlationContext%3D%257Bhttp%253A%252F%252FNCL_CruiseRetrieveAgency_Module%257DappContext/message%3D%257Bhttp%253A%252F%252FNCL_CruiseRetrieveAgency_Module%252FJDBCOutboundInterface%257DexecuteNclseaNcl_Wesb_Ar_Get_Agency_InfoBGResponseMsg/xpath%3D%252F/smo.xsd
*   Output file(s):		smo://smo/name%3Dwsdl-primary/correlationContext%3D%257Bhttp%253A%252F%252FNCL_CruiseRetrieveAgency_Module%257DappContext/message%3D%257Bhttp%253A%252F%252FNCL_WESB_Shared_Library%252FNCL_CruiseRetrieveAgency_Interface%257DPerform_NCL_CruiseRetrieveAgencyResponseMsg/xpath%3D%252F/smo.xsd
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
     xmlns:in2="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_ar_get_agc_cont_prfp_cursor"
     xmlns:in="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_ar_get_agc_cont_prfbg"
     xmlns:in3="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_ar_get_agency_email"
     xmlns:in4="wsdl.http://NCL_CruiseRetrieveAgency_Module/JDBCOutboundInterface"
     xmlns:in5="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_ar_get_agency_info"
     xmlns:in6="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_ar_get_agency_emailbg"
     xmlns:in7="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_ar_get_agency_emailp_cursor"
     xmlns:in8="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_ar_get_agency_infop_cursor"
     xmlns:in9="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_ar_get_agency_infobg"
     xmlns:in10="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_ar_get_agency_phone"
     xmlns:in12="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_ar_get_agency_phonebg"
     xmlns:in11="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_ar_get_agency_phonep_cursor"
     xmlns:in13="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_ar_get_agency_address"
     xmlns:in15="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_ar_get_agency_addressp_cursor"
     xmlns:in14="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_ar_get_agency_addressbg"
     xmlns:in17="http://www.ibm.com/xmlns/prod/websphere/bo/6.0.0"
     xmlns:in16="http://NCL_CruiseRetrieveAgency_Module/JDBCOutboundInterface"
     xmlns:in18="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_ar_get_agc_cont_prf"
     xmlns:io="http://www.w3.org/2003/05/soap-envelope"
     xmlns:io3="http://www.ibm.com/xmlns/prod/websphere/mq/sca/6.0.0"
     xmlns:io2="http://www.ibm.com/websphere/sibx/smo/v6.0.1"
     xmlns:out="wsdl.http://NCL_WESB_Shared_Library/NCL_CruiseRetrieveAgency_Interface"
     xmlns:io4="http://schemas.xmlsoap.org/ws/2004/08/addressing"
     xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
     xmlns:io6="http://www.ibm.com/xmlns/prod/websphere/http/sca/6.1.0"
     xmlns:io5="http://nclapi/schemas"
     xmlns:io7="http://NCL_CruiseRetrieveAgency_Module"
     xmlns:xs4xs="http://www.w3.org/2001/XMLSchema"
     xmlns:io8="http://www.w3.org/2005/08/addressing"
     xmlns:out2="http://NCL_WESB_Shared_Library/NCL_CruiseRetrieveAgency_Interface"
     xmlns:map="http://NCL_CruiseRetrieveAgency_Module/xslt/XSLTransformation1_req_1"
     exclude-result-prefixes="in2 in in3 in4 in5 in6 in7 in8 in9 in10 in12 in11 in13 in15 in14 in17 in16 in18 str set math fn regexp dyn dp exsl date map xalan"
     version="1.0">
  <xsl:output method="xml" encoding="UTF-8" indent="yes" xalan:indent-amount="2"/>
  <xsl:strip-space elements="*"/>

  <!-- The rule represents a custom mapping: "null" to "io5:Success". -->
  <xsl:template name="ToSuccess">
    <!-- ADD CUSTOM CODE HERE. -->
      <xsl:value-of select="''"/>
  </xsl:template>
</xsl:stylesheet>
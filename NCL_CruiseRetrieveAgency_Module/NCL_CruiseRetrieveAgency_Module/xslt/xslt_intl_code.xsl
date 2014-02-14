<?xml version="1.0" encoding="UTF-8"?>
<!--
*****************************************************************************
*   This file contains the XSLT code snippets for the custom mappings
*   defined using the IBM XML Mapping Editor V1.0.110
*
*   Mapping file:		xsltGetEmail.map
*   Map declaration(s):	xsltGetEmail
*   Input file(s):		smo://smo/name%3Dwsdl-primary/correlationContext%3D%257Bhttp%253A%252F%252FNCL_CruiseRetrieveAgency_Module%257DappContext/message%3D%257Bhttp%253A%252F%252FNCL_CruiseRetrieveAgency_Module%252FJDBCOutboundInterface%257DexecuteNclseaNcl_Wesb_Ar_Get_Agency_PhoneBGResponseMsg/xpath%3D%252F/smo.xsd
*   Output file(s):		smo://smo/name%3Dwsdl-primary/correlationContext%3D%257Bhttp%253A%252F%252FNCL_CruiseRetrieveAgency_Module%257DappContext/message%3D%257Bhttp%253A%252F%252FNCL_CruiseRetrieveAgency_Module%252FJDBCOutboundInterface%257DexecuteNclseaNcl_Wesb_Ar_Get_Agency_EmailBGRequestMsg/xpath%3D%252F/smo.xsd
*
*   Custom code snippets are wrapped in top-level <xsl:template> 
*   elements. These <xsl:template> elements, in turn, are used to
*   interface with the custom mappings in the XML Mapping editor.
*****************************************************************************
-->
<xsl:stylesheet
     xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
     xmlns:xalan="http://xml.apache.org/xslt"
     xmlns:io2="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_ar_get_agc_cont_prfp_cursor"
     xmlns:io="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_ar_get_agc_cont_prfbg"
     xmlns:io4="wsdl.http://NCL_CruiseRetrieveAgency_Module/JDBCOutboundInterface"
     xmlns:io3="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_ar_get_agency_email"
     xmlns:io5="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_ar_get_agency_info"
     xmlns:io7="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_ar_get_agency_emailbg"
     xmlns:io6="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_ar_get_agency_emailp_cursor"
     xmlns:io9="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_ar_get_agency_infop_cursor"
     xmlns:io8="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_ar_get_agency_infobg"
     xmlns:io10="http://www.ibm.com/xmlns/prod/websphere/mq/sca/6.0.0"
     xmlns:io11="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_ar_get_agency_phone"
     xmlns:io12="http://schemas.xmlsoap.org/ws/2004/08/addressing"
     xmlns:io13="http://nclapi/schemas"
     xmlns:io14="http://NCL_CruiseRetrieveAgency_Module"
     xmlns:io15="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_ar_get_agency_phonep_cursor"
     xmlns:io16="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_ar_get_agency_phonebg"
     xmlns:xsd="http://www.w3.org/2001/XMLSchema"
     xmlns:io17="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_ar_get_agency_address"
     xmlns:io18="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_ar_get_agency_addressbg"
     xmlns:io19="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_ar_get_agency_addressp_cursor"
     xmlns:io20="http://www.ibm.com/websphere/sibx/smo/v6.0.1"
     xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
     xmlns:io21="http://www.ibm.com/xmlns/prod/websphere/http/sca/6.1.0"
     xmlns:io23="http://www.ibm.com/xmlns/prod/websphere/bo/6.0.0"
     xmlns:io22="http://NCL_CruiseRetrieveAgency_Module/JDBCOutboundInterface"
     xmlns:io24="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_ar_get_agc_cont_prf"
     xmlns:io25="http://www.w3.org/2005/08/addressing"
     exclude-result-prefixes="xalan"
     version="1.0">
  <xsl:output method="xml" encoding="UTF-8" indent="yes" xalan:indent-amount="2"/>
  <xsl:strip-space elements="*"/>

  <!-- The rule represents a custom mapping: "intl_code" to "INTL_CODE". -->
  <xsl:template name="Intl_codeToINTL_CODE">
    <xsl:param name="intl_code"/>
    <!-- ADD CUSTOM CODE HERE. -->
    
  
			<xsl:if test="string(number($intl_code)) != 'NaN'">
			  <xsl:value-of select="$intl_code/>
		    </xsl:if>
 
    
    
  </xsl:template>
</xsl:stylesheet>
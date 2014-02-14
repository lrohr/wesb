<?xml version="1.0" encoding="UTF-8"?>
<!--
*****************************************************************************
*   This file contains the XSLT code snippets for the custom mappings
*   defined using the IBM XML Mapping Editor V1.0.110
*
*   Mapping file:		XSLT_BuildEmail2.map
*   Map declaration(s):	XSLT_BuildEmail2
*   Input file(s):		smo://smo/name%3Dwsdl-primary/correlationContext%3D%257Bhttp%253A%252F%252FNCL_CruiseCreateAgency_Module%257DApp_context/message%3D%257Bhttp%253A%252F%252FNCL_CruiseCreateAgency_Module%252FDB_Lookup%257DexecuteNclseaNcl_Wesb_Upd_Agency_Email_InfoBGRequestMsg/xpath%3D%252F/smo.xsd
*   Output file(s):		smo://smo/name%3Dwsdl-primary/correlationContext%3D%257Bhttp%253A%252F%252FNCL_CruiseCreateAgency_Module%257DApp_context/message%3D%257Bhttp%253A%252F%252FNCL_CruiseCreateAgency_Module%252FDB_Lookup%257DexecuteNclseaNcl_Wesb_Upd_Agency_Email_InfoBGRequestMsg/xpath%3D%252F/smo.xsd
*
*   Custom code snippets are wrapped in top-level <xsl:template> 
*   elements. These <xsl:template> elements, in turn, are used to
*   interface with the custom mappings in the XML Mapping editor.
*****************************************************************************
-->
<xsl:stylesheet
     xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
     xmlns:xalan="http://xml.apache.org/xslt"
     xmlns:io11="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_upd_agency_email_info"
     xmlns:io12="http://www.ibm.com/websphere/sibx/smo/v6.0.1"
     xmlns:io13="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_upd_agency_email_infobg"
     xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
     xmlns:io="http://NCL_CruiseCreateAgency_Module/DB_Lookup"
     xmlns:io2="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_update_agency_info"
     xmlns:io3="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_update_agency_infobg"
     xmlns:io14="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_upd_agency_addr_info"
     xmlns:io4="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_upd_agency_phone_info"
     xmlns:io5="wsdl.http://NCL_CruiseCreateAgency_Module/DB_Lookup"
     xmlns:io15="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_upd_agency_addr_infobg"
     xmlns:io16="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_create_agency"
     xmlns:io6="http://www.ibm.com/xmlns/prod/websphere/mq/sca/6.0.0"
     xmlns:io7="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_upd_agency_phone_infobg"
     xmlns:io17="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_upd_agc_conpref_info"
     xmlns:io8="http://schemas.xmlsoap.org/ws/2004/08/addressing"
     xmlns:io19="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_create_agencybg"
     xmlns:io18="http://www.ibm.com/xmlns/prod/websphere/http/sca/6.1.0"
     xmlns:io9="http://nclapi/schemas"
     xmlns:io21="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_upd_agc_conpref_infobg"
     xmlns:io20="http://www.ibm.com/xmlns/prod/websphere/bo/6.0.0"
     xmlns:io10="http://NCL_CruiseCreateAgency_Module"
     xmlns:xsd="http://www.w3.org/2001/XMLSchema"
     xmlns:io22="http://www.w3.org/2005/08/addressing"
     exclude-result-prefixes="xalan"
     version="1.0">
  <xsl:output method="xml" encoding="UTF-8" indent="yes" xalan:indent-amount="2"/>
  <xsl:strip-space elements="*"/>

  <!-- The rule represents a custom mapping: "ShareSynchInd" to "p_is_address_mailing". -->
  <xsl:template name="ShareSynchIndToP_is_address_mailing">
    <xsl:param name="ShareSynchInd"/>
    <!-- ADD CUSTOM CODE HERE. -->
    
          <xsl:choose>
                <xsl:when test="($ShareSynchInd)=('Yes')">
                  <xsl:value-of select="'Y'"></xsl:value-of>
                </xsl:when>
                <xsl:otherwise>
                  <xsl:value-of select="'N'"></xsl:value-of>
                </xsl:otherwise>
          </xsl:choose>

        
  </xsl:template>
</xsl:stylesheet>
<?xml version="1.0" encoding="UTF-8"?>
<!--
*****************************************************************************
*   This file contains the XSLT code snippets for the custom mappings
*   defined using the IBM XML Mapping Editor V1.0.110
*
*   Mapping file:		XSLT_map_last.map
*   Map declaration(s):	XSLT_map_last
*   Input file(s):		smo://smo/name%3Dwsdl-primary/correlationContext%3D%257Bhttp%253A%252F%252FNCL_CruiseRtrvNameList_Module%257DApp_Context/message%3D%257Bhttp%253A%252F%252FNCL_WESB_Shared_Library%252FNCL_CruiseRtrvNameList_Interface%257DPerform_NCL_CruiseRtrvNameListResponseMsg/xpath%3D%252F/smo.xsd
*   Output file(s):		smo://smo/name%3Dwsdl-primary/correlationContext%3D%257Bhttp%253A%252F%252FNCL_CruiseRtrvNameList_Module%257DApp_Context/message%3D%257Bhttp%253A%252F%252FNCL_WESB_Shared_Library%252FNCL_CruiseRtrvNameList_Interface%257DPerform_NCL_CruiseRtrvNameListResponseMsg/xpath%3D%252F/smo.xsd
*
*   Custom code snippets are wrapped in top-level <xsl:template> 
*   elements. These <xsl:template> elements, in turn, are used to
*   interface with the custom mappings in the XML Mapping editor.
*****************************************************************************
-->
<xsl:stylesheet
     xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
     xmlns:xalan="http://xml.apache.org/xslt"
     xmlns:io="wsdl.http://NCL_WESB_Shared_Library/NCL_CruiseRtrvNameList_Interface"
     xmlns:io3="http://www.ibm.com/xmlns/prod/websphere/mq/sca/6.0.0"
     xmlns:io2="http://www.ibm.com/websphere/sibx/smo/v6.0.1"
     xmlns:io4="http://schemas.xmlsoap.org/ws/2004/08/addressing"
     xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
     xmlns:io6="http://www.ibm.com/xmlns/prod/websphere/http/sca/6.1.0"
     xmlns:io5="http://nclapi/schemas"
     xmlns:io7="http://NCL_WESB_Shared_Library/NCL_CruiseRtrvNameList_Interface"
     xmlns:xsd="http://www.w3.org/2001/XMLSchema"
     xmlns:io9="http://www.w3.org/2005/08/addressing"
     xmlns:io8="http://NCL_CruiseRtrvNameList_Module"
     exclude-result-prefixes="xalan"
     version="1.0">
  <xsl:output method="xml" encoding="UTF-8" indent="yes" xalan:indent-amount="2"/>
  <xsl:strip-space elements="*"/>

  <!-- The rule represents a custom mapping: "io5:GuestInfo" to "ErrorCode". -->
  <xsl:template name="GuestInfoToErrorCode">
    <xsl:param name="GuestInfo"/>
    <!-- ADD CUSTOM CODE HERE. -->
      <xsl:choose>
         <xsl:when test="((number(count($GuestInfo)))=0)">
             <xsl:value-of select="'9910a'"></xsl:value-of>
         </xsl:when>              
         <xsl:otherwise>
           <xsl:value-of select="'0abc'"></xsl:value-of>
         </xsl:otherwise>
      </xsl:choose>
    
  </xsl:template>
</xsl:stylesheet>
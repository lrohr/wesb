<?xml version="1.0" encoding="UTF-8"?>
<!--
*****************************************************************************
*   This file contains the XSLT code snippets for the custom mappings
*   defined using the IBM XML Mapping Editor V1.0.110
*
*   Mapping file:		XSLTransformation1_req_1.map
*   Map declaration(s):	XSLTransformation1_req_1
*   Input file(s):		smo://smo/name%3Dwsdl-primary/correlationContext%3D%257Bhttp%253A%252F%252FNCL_CruiseRtrvNameList_Module%257DApp_Context/message%3D%257Bhttp%253A%252F%252FNCL_CruiseRtrvNameList_Module%252FDB_LOOKUP%257DexecuteNclseaNcl_Wesb_Get_Consumer_Nam_ListBGResponseMsg/xpath%3D%252F/smo.xsd
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
     xmlns:in2="wsdl.http://NCL_CruiseRtrvNameList_Module/DB_LOOKUP"
     xmlns:in3="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_retrieve_name_list"
     xmlns:in4="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_retrieve_name_listp_cursor"
     xmlns:in5="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_retrieve_name_listbg"
     xmlns:in6="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_get_consumer_nam_list"
     xmlns:in8="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_get_consumer_nam_listp_cursor"
     xmlns:in7="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_get_consumer_nam_listbg"
     xmlns:in="http://NCL_CruiseRtrvNameList_Module/DB_LOOKUP"
     xmlns:in9="http://www.ibm.com/xmlns/prod/websphere/bo/6.0.0"
     xmlns:out="wsdl.http://NCL_WESB_Shared_Library/NCL_CruiseRtrvNameList_Interface"
     xmlns:io2="http://www.ibm.com/xmlns/prod/websphere/mq/sca/6.0.0"
     xmlns:io="http://www.ibm.com/websphere/sibx/smo/v6.0.1"
     xmlns:io3="http://schemas.xmlsoap.org/ws/2004/08/addressing"
     xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
     xmlns:io5="http://www.ibm.com/xmlns/prod/websphere/http/sca/6.1.0"
     xmlns:io4="http://nclapi/schemas"
     xmlns:out2="http://NCL_WESB_Shared_Library/NCL_CruiseRtrvNameList_Interface"
     xmlns:xsd="http://www.w3.org/2001/XMLSchema"
     xmlns:io7="http://www.w3.org/2005/08/addressing"
     xmlns:io6="http://NCL_CruiseRtrvNameList_Module"
     exclude-result-prefixes="in2 in3 in4 in5 in6 in8 in7 in in9 xalan"
     version="1.0">
  <xsl:output method="xml" encoding="UTF-8" indent="yes" xalan:indent-amount="2"/>
  <xsl:strip-space elements="*"/>

  <!-- The rule represents a custom mapping: "p_cursor" to "MoreDataEchoToken". -->
  <xsl:template name="P_cursorToMoreDataEchoToken">
    <xsl:param name="p_cursor"/>
    <!-- ADD CUSTOM CODE HERE. -->
    
         <xsl:choose>
            <xsl:when test="(count($p_cursor)) > 1 ">
              <xsl:value-of select=" $p_cursor[position()=last()]/res_id "></xsl:value-of>
            </xsl:when>
            <xsl:otherwise>
              <xsl:value-of select="''"></xsl:value-of>
            </xsl:otherwise>
          </xsl:choose>
    
    
  </xsl:template>
</xsl:stylesheet>
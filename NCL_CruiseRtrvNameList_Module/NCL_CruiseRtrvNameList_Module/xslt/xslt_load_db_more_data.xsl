<?xml version="1.0" encoding="UTF-8"?>
<!--
*****************************************************************************
*   This file contains the XSLT code snippets for the custom mappings
*   defined using the IBM XML Mapping Editor V1.0.110
*
*   Mapping file:		xslt_load_db_req_1.map
*   Map declaration(s):	xslt_load_db_req_1
*   Input file(s):		smo://smo/name%3Dwsdl-primary/correlationContext%3D%257Bhttp%253A%252F%252FNCL_CruiseRtrvNameList_Module%257DApp_Context/message%3D%257Bhttp%253A%252F%252FTP_Logger%252FTP_Interface%257DTP_InsertUpdateRequestMsg/xpath%3D%252F/smo.xsd
*   Output file(s):		smo://smo/name%3Dwsdl-primary/correlationContext%3D%257Bhttp%253A%252F%252FNCL_CruiseRtrvNameList_Module%257DApp_Context/message%3D%257Bhttp%253A%252F%252FNCL_CruiseRtrvNameList_Module%252FDB_LOOKUP%257DexecuteNclseaNcl_Wesb_Retrieve_Name_ListBGRequestMsg/xpath%3D%252F/smo.xsd
*
*   Custom code snippets are wrapped in top-level <xsl:template> 
*   elements. These <xsl:template> elements, in turn, are used to
*   interface with the custom mappings in the XML Mapping editor.
*****************************************************************************
-->
<xsl:stylesheet
     xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
     xmlns:xalan="http://xml.apache.org/xslt"
     xmlns:in="http://TP_Logger/TP_Interface"
     xmlns:in2="wsdl.http://TP_Logger/TP_Interface"
     xmlns:out2="wsdl.http://NCL_CruiseRtrvNameList_Module/DB_LOOKUP"
     xmlns:io5="http://www.ibm.com/websphere/sibx/smo/v6.0.1"
     xmlns:out3="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_retrieve_name_list"
     xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
     xmlns:out4="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_retrieve_name_listbg"
     xmlns:out5="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_retrieve_name_listp_cursor"
     xmlns:io="http://NCL_CruiseRtrvNameList_Module"
     xmlns:out6="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_get_consumer_nam_list"
     xmlns:out8="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_get_consumer_nam_listbg"
     xmlns:out7="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_get_consumer_nam_listp_cursor"
     xmlns:io2="http://www.ibm.com/xmlns/prod/websphere/mq/sca/6.0.0"
     xmlns:io3="http://schemas.xmlsoap.org/ws/2004/08/addressing"
     xmlns:io6="http://www.ibm.com/xmlns/prod/websphere/http/sca/6.1.0"
     xmlns:io4="http://nclapi/schemas"
     xmlns:out="http://NCL_CruiseRtrvNameList_Module/DB_LOOKUP"
     xmlns:out9="http://www.ibm.com/xmlns/prod/websphere/bo/6.0.0"
     xmlns:xsd="http://www.w3.org/2001/XMLSchema"
     xmlns:io7="http://www.w3.org/2005/08/addressing"
     exclude-result-prefixes="in in2 xalan"
     version="1.0">
  <xsl:output method="xml" encoding="UTF-8" indent="yes" xalan:indent-amount="2"/>
  <xsl:strip-space elements="*"/>

  <!-- The rule represents a custom mapping: "MoreDataEchoToken" to "p_lastresidreturned". -->
  <xsl:template name="MoreDataEchoTokenToP_lastresidreturned">
    <xsl:param name="MoreDataEchoToken"/>
    <!-- ADD CUSTOM CODE HERE. -->
          <xsl:value-of select="'0'"></xsl:value-of>
          
    
    
  </xsl:template>
</xsl:stylesheet>
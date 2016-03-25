<?xml version="1.0" encoding="UTF-8"?>
<!--
*****************************************************************************
*   This file contains the XSLT code snippets for the custom mappings
*   defined using the IBM XML Mapping Editor V1.0.110
*
*   Mapping file:		XSLTransformation1_req_3.map
*   Map declaration(s):	XSLTransformation1_req_3
*   Input file(s):		smo://smo/name%3Dwsdl-primary/message%3D%257Bhttp%253A%252F%252FTP_Logger%252FJDBCOutboundInterface%257DexecuteNclseaNcl_Esb_Insert_Tp_LogBGRequestMsg/xpath%3D%252F/smo.xsd
*   Output file(s):		smo://smo/name%3Dwsdl-primary/message%3D%257Bhttp%253A%252F%252FTP_Logger%252FEmailServiceImport%257DsendSimpleAlertEmailRequestMsg/xpath%3D%252F/smo.xsd
*
*   Custom code snippets are wrapped in top-level <xsl:template> 
*   elements. These <xsl:template> elements, in turn, are used to
*   interface with the custom mappings in the XML Mapping editor.
*****************************************************************************
-->
<xsl:stylesheet
     xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
     xmlns:xalan="http://xml.apache.org/xslt"
     xmlns:in="http://TP_Logger/JDBCOutboundInterface"
     xmlns:in2="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_esb_update_tp_logbg"
     xmlns:in3="wsdl.http://TP_Logger/JDBCOutboundInterface"
     xmlns:in4="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_esb_insert_tp_log"
     xmlns:in5="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_esb_insert_tp_logbg"
     xmlns:in6="http://www.ibm.com/xmlns/prod/websphere/bo/6.0.0"
     xmlns:in7="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_esb_update_tp_log"
     xmlns:out="wsdl.http://TP_Logger/EmailServiceImport"
     xmlns:io2="http://www.ibm.com/xmlns/prod/websphere/mq/sca/6.0.0"
     xmlns:io="http://www.ibm.com/websphere/sibx/smo/v6.0.1"
     xmlns:io3="http://schemas.xmlsoap.org/ws/2004/08/addressing"
     xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
     xmlns:io4="http://www.ibm.com/xmlns/prod/websphere/http/sca/6.1.0"
     xmlns:out3="http://www.ibm.com/xmlns/prod/websphere/j2ca/email/simplealertemail"
     xmlns:out2="http://TP_Logger/EmailServiceImport"
     xmlns:xsd="http://www.w3.org/2001/XMLSchema"
     xmlns:io5="http://www.w3.org/2005/08/addressing"
     exclude-result-prefixes="in in2 in3 in4 in5 in6 in7 xalan"
     version="1.0">
  <xsl:output method="xml" encoding="UTF-8" indent="yes" xalan:indent-amount="2"/>
  <xsl:strip-space elements="*"/>

  <!-- The rule represents a custom mapping: "failureString" to "mailContent". -->
  <xsl:template name="FailureStringToMailContent">
    <xsl:param name="failureString"/>
    <xsl:param name="record_id"/>
    <xsl:param name="request_msg"/>
    <!-- ADD CUSTOM CODE HERE. -->
     <xsl:value-of select="concat('failureString: ',$failureString,':  record_id: ',$record_id,':  request_msg: ',$request_msg)"></xsl:value-of>
  </xsl:template>
</xsl:stylesheet>
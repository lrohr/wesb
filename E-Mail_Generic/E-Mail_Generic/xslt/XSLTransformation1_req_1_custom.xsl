<?xml version="1.0" encoding="UTF-8"?>
<!--
*****************************************************************************
*   This file contains the XSLT code snippets for the custom mappings
*   defined using the IBM XML Mapping Editor V1.0.110
*
*   Mapping file:		XSLTransformation1_req_1.map
*   Map declaration(s):	XSLTransformation1_req_1
*   Input file(s):		smo://smo/name%3Dwsdl-primary/message%3D%257Bhttp%253A%252F%252FE-Mail_Generic%252FE-Mail_Interface%257DSend_Email1RequestMsg/xpath%3D%252F/smo.xsd
*   Output file(s):		smo://smo/name%3Dwsdl-primary/message%3D%257Bhttp%253A%252F%252FE-Mail_Generic%252FE-Mail_Interface%257DSend_Email1RequestMsg/xpath%3D%252F/smo.xsd
*
*   Custom code snippets are wrapped in top-level <xsl:template> 
*   elements. These <xsl:template> elements, in turn, are used to
*   interface with the custom mappings in the XML Mapping editor.
*****************************************************************************
-->
<xsl:stylesheet
     xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
     xmlns:xalan="http://xml.apache.org/xslt"
     xmlns:io2="http://www.ibm.com/xmlns/prod/websphere/mq/sca/6.0.0"
     xmlns:io="http://www.ibm.com/websphere/sibx/smo/v6.0.1"
     xmlns:io3="http://schemas.xmlsoap.org/ws/2004/08/addressing"
     xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
     xmlns:io4="http://www.ibm.com/xmlns/prod/websphere/http/sca/6.1.0"
     xmlns:io5="wsdl.http://E-Mail_Generic/E-Mail_Interface"
     xmlns:xsd="http://www.w3.org/2001/XMLSchema"
     xmlns:io6="http://www.w3.org/2005/08/addressing"
     xmlns:io7="http://E-Mail_Generic/E-Mail_Interface"
     exclude-result-prefixes="xalan"
     version="1.0">
  <xsl:output method="xml" encoding="UTF-8" indent="yes" xalan:indent-amount="2"/>
  <xsl:strip-space elements="*"/>

  <!-- The rule represents a custom mapping: "Subject" to "Subject". -->
  <xsl:template name="SubjectToSubject">
    <xsl:param name="Subject"/>
    <!-- ADD CUSTOM CODE HERE. -->
  <xsl:value-of select="concat(xslt/,$Subject)"></xsl:value-of>

    
  </xsl:template>
</xsl:stylesheet>
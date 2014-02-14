<?xml version="1.0" encoding="UTF-8"?>
<!--
*****************************************************************************
*   This file contains the XSLT code snippets for the custom mappings
*   defined using the IBM XML Mapping Editor V1.0.110
*
*   Mapping file:		TransformFuseBoxRequest.map
*   Map declaration(s):	TransformFuseBoxRequest
*   Input file(s):		smo://smo/name%3Dwsdl-primary/message%3D%257Bhttp%253A%252F%252FFuseBoxLib%252FFuseBoxCredCardProvider%257DprocessCardInfoRequestMsg/xpath%3D%252Fbody/smo.xsd
*   Output file(s):		smo://smo/name%3Dwsdl-primary/message%3D%257Bhttp%253A%252F%252FNCLFuseBoxMediation%252FUpdateEsbCCLogSql%257DexecuteUPDATE_NCL_ESB_CC_LOGRequestMsg/xpath%3D%252Fbody/smo.xsd
*
*   Custom code snippets are wrapped in top-level <xsl:template> 
*   elements. These <xsl:template> elements, in turn, are used to
*   interface with the custom mappings in the XML Mapping editor.
*****************************************************************************
-->
<xsl:stylesheet
     xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
     xmlns:xalan="http://xml.apache.org/xslt"
     xmlns:in="http://FuseBoxLib/FuseBoxCredCardProvider"
     xmlns:in2="wsdl.http://FuseBoxLib/FuseBoxCredCardProvider"
     xmlns:out="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/update_ncl_esb_cc_log"
     xmlns:io2="http://www.ibm.com/xmlns/prod/websphere/mq/sca/6.0.0"
     xmlns:io="http://www.ibm.com/websphere/sibx/smo/v6.0.1"
     xmlns:out2="wsdl.http://NCLFuseBoxMediation/UpdateEsbCCLogSql"
     xmlns:io3="http://schemas.xmlsoap.org/ws/2004/08/addressing"
     xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
     xmlns:io4="http://www.ibm.com/xmlns/prod/websphere/http/sca/6.1.0"
     xmlns:out3="http://NCLFuseBoxMediation/UpdateEsbCCLogSql"
     xmlns:xsd="http://www.w3.org/2001/XMLSchema"
     xmlns:io5="http://www.w3.org/2005/08/addressing"
     exclude-result-prefixes="in in2 xalan"
     version="1.0">
  <xsl:output method="xml" encoding="UTF-8" indent="yes" xalan:indent-amount="2"/>
  <xsl:strip-space elements="*"/>

  <!-- The rule represents a custom mapping: "Request" to "out3:executeUPDATE_NCL_ESB_CC_LOGInput". -->
  <xsl:template name="RequestToExecuteUPDATE_NCL_ESB_CC_LOGInput">
    <xsl:param name="Request"/>
    <!-- ADD CUSTOM CODE HERE. -->
    <xsl:value-of select="concat(substring-before(document('IN_PORT')/HTTPRequest/Entity/Text,Context/CRED_CRD_NBR),'xxxxxxxxxxxx',substring-after(document('IN_PORT')/HTTPRequest/Entity/Text,Context/CRED_CRD_NBR))"></xsl:value-of>
    <xsl:for-each select="$Request/Field">
    	<xsl:if test="$">
    	
    	</xsl:if>
    </xsl:for-each>
  </xsl:template>
</xsl:stylesheet>
<?xml version="1.0" encoding="UTF-8"?>
<!--
*****************************************************************************
*   This file contains the XSLT code snippets for the custom mappings
*   defined using the IBM XML Mapping Editor V1.0.110
*
*   Mapping file:		UpdateRequesMsgLog_req_1.map
*   Map declaration(s):	UpdateRequesMsgLog_req_1
*   Input file(s):		smo://smo/name%3Dwsdl-primary/transientContext%3D%257Bhttp%253A%252F%252FNCLFuseBoxMediation%257DFuseBoxMediationSharedCtx/message%3D%257Bhttp%253A%252F%252FFuseBoxLib%252FFuseBoxCredCardProvider%257DprocessCardInfoRequestMsg/xpath%3D%252F/smo.xsd
*   Output file(s):		smo://smo/name%3Dwsdl-primary/transientContext%3D%257Bhttp%253A%252F%252FNCLFuseBoxMediation%257DFuseBoxMediationSharedCtx/message%3D%257Bhttp%253A%252F%252FNCLFuseBoxMediation%252FUpdateRequestMsgSQL%257DexecuteUpdateRequestMsgSQLBGRequestMsg/xpath%3D%252F/smo.xsd
*
*   Custom code snippets are wrapped in top-level <xsl:template> 
*   elements. These <xsl:template> elements, in turn, are used to
*   interface with the custom mappings in the XML Mapping editor.
*****************************************************************************
-->
<xsl:stylesheet
     xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
     xmlns:xalan="http://xml.apache.org/xslt"
     xmlns:out2="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/updaterequestmsgsql"
     xmlns:xsd="http://www.w3.org/2001/XMLSchema"
     exclude-result-prefixes="in in2 xalan"
     version="1.0">
  <xsl:output method="text" encoding="UTF-8" indent="yes" xalan:indent-amount="2" cdata-section-elements="Request"/>
  <xsl:strip-space elements="*"/>

  <!-- The rule represents a custom mapping: "Request" to "statement1parameter1". -->
  <xsl:template name="RequestToStatement1parameter1">
    <xsl:param name="Request"/>
    <xsl:text disable-output-escaping="yes">&lt;![CDATA[</xsl:text>
    
      <Request type="AuthorizationRequest">		
      <xsl:for-each select="$Request/Field">
    	<xsl:choose>
    		<xsl:when test="@name = 'Cardholder_Nbr'">    		
    			<Field name="Cardholder_Nbr">xxxxxxxxxxxx</Field>
    		</xsl:when>
    		<xsl:otherwise>
    			<Field name="{@name}"><xsl:value-of select="."/></Field>    			
    		</xsl:otherwise>
    	</xsl:choose>
    </xsl:for-each>
    </Request>
    <xsl:text disable-output-escaping="yes">]]</xsl:text>
 	<xsl:text disable-output-escaping="yes">&gt;</xsl:text>        

  </xsl:template>
</xsl:stylesheet>
<?xml version="1.0" encoding="UTF-8"?>
	<!--
		*****************************************************************************
		* This file contains the XSLT code snippets for the custom mappings *
		defined using the IBM XML Mapping Editor V1.0.110 * * Mapping file:
		TransformRequest_req_1.map * Map declaration(s):
		TransformRequest_req_1 * Input file(s):
		smo://smo/name%3Dwsdl-primary/message%3D%257Bhttp%253A%252F%252FFuseBoxLib%252FProcessCreditCard%257DprocessRequestMsg/xpath%3D%252Fbody/smo.xsd
		* Output file(s):
		smo://smo/name%3Dwsdl-primary/message%3D%257Bhttp%253A%252F%252FFuseBoxLib%252FFuseBoxCredCardProvider%257DprocessCardInfoRequestMsg/xpath%3D%252Fbody/smo.xsd
		* * Custom code snippets are wrapped in top-level <xsl:template> *
		elements. These <xsl:template> elements, in turn, are used to *
		interface with the custom mappings in the XML Mapping editor.
		*****************************************************************************
	-->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:xalan="http://xml.apache.org/xslt" xmlns:in="http://FuseBoxLib/ProcessCreditCard"
	xmlns:in2="wsdl.http://FuseBoxLib/ProcessCreditCard" xmlns:in3="http://FuseBoxLib"
	xmlns:io2="http://www.ibm.com/xmlns/prod/websphere/mq/sca/6.0.0"
	xmlns:io="http://www.ibm.com/websphere/sibx/smo/v6.0.1" xmlns:io3="http://schemas.xmlsoap.org/ws/2004/08/addressing"
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:out="http://FuseBoxLib/FuseBoxCredCardProvider"
	xmlns:io4="http://www.ibm.com/xmlns/prod/websphere/http/sca/6.1.0"
	xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:io5="http://www.w3.org/2005/08/addressing"
	xmlns:out2="wsdl.http://FuseBoxLib/FuseBoxCredCardProvider"
	exclude-result-prefixes="in in2 in3 xalan" version="1.0">
	<xsl:output method="xml" encoding="UTF-8" indent="yes"
		xalan:indent-amount="2" />
	<xsl:strip-space elements="*" />

  <!-- The rule represents a custom mapping: "cardInfo" to "Request". -->
	<xsl:template name="CardInfoToRequest" match="/cardInfo">
		<xsl:param name="cardInfo" />
		<Field>
			<xsl:attribute name="name"><xsl:value-of select="'Message_ID'" /></xsl:attribute>
			<xsl:value-of select="$cardInfo/uniqueValId" />
		</Field>

	</xsl:template>
</xsl:stylesheet>
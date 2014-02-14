<?xml version="1.0" encoding="UTF-8"?>
	<!--
		*****************************************************************************
		* This file contains the XSLT code snippets for the custom mappings *
		defined using the IBM XML Mapping Editor V1.0.110 * * Mapping file:
		XSLTransformation1_req_3.map * Map declaration(s):
		XSLTransformation1_req_3 * Input file(s):
		smo://smo/name%3Dwsdl-primary/message%3D%257Bhttp%253A%252F%252FFuseBoxLib%252FFuseBoxCredCardProvider%257DprocessCardInfoResponseMsg/xpath%3D%252Fbody/smo.xsd
		* Output file(s):
		smo://smo/name%3Dwsdl-primary/message%3D%257Bhttp%253A%252F%252FNCLFuseBoxMediation%252FNclEsbCreditCardUpdateImport%257DexecuteNclseaNcl_Esb_Cc_UpdateRequestMsg/xpath%3D%252Fbody/smo.xsd
		* * Custom code snippets are wrapped in top-level <xsl:template> *
		elements. These <xsl:template> elements, in turn, are used to *
		interface with the custom mappings in the XML Mapping editor.
		*****************************************************************************
	-->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:xalan="http://xml.apache.org/xslt" xmlns:in="http://FuseBoxLib/FuseBoxCredCardProvider"
	xmlns:in2="wsdl.http://FuseBoxLib/FuseBoxCredCardProvider"
	xmlns:out2="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_esb_cc_update"
	xmlns:out="http://NCLFuseBoxMediation/NclEsbCreditCardUpdateImport"
	xmlns:io2="http://www.ibm.com/xmlns/prod/websphere/mq/sca/6.0.0"
	xmlns:io="http://www.ibm.com/websphere/sibx/smo/v6.0.1" xmlns:io3="http://schemas.xmlsoap.org/ws/2004/08/addressing"
	xmlns:out3="wsdl.http://NCLFuseBoxMediation/NclEsbCreditCardUpdateImport"
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:io4="http://www.ibm.com/xmlns/prod/websphere/http/sca/6.1.0"
	xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:io5="http://www.w3.org/2005/08/addressing"
	exclude-result-prefixes="in in2 xalan" version="1.0">
	<xsl:output method="xml" encoding="UTF-8" indent="yes"
		xalan:indent-amount="2" />
	<xsl:strip-space elements="*" />

	<!--
		The rule represents a custom mapping: "Response" to
		"out:executeNclseaNcl_Esb_Cc_UpdateInput".
	-->
	<xsl:template name="ResponseToExecuteNclseaNcl_Esb_Cc_UpdateInput">
		<xsl:param name="Response" />
		<!-- ADD CUSTOM CODE HERE. -->
		<p_resp_trans_id>
			<xsl:value-of select="$Response/Field[./@name='Message_ID']" />
		</p_resp_trans_id>
		<p_resp_message>
			<xsl:text disable-output-escaping="yes">&lt;![CDATA[</xsl:text>
			<xsl:copy-of select="$Response" />
			<xsl:text disable-output-escaping="yes">]]</xsl:text>
			<xsl:text disable-output-escaping="yes">&gt;</xsl:text>
		</p_resp_message>
		<p_resp_response_code>
			<xsl:value-of select="$Response/Field[./@name='Response_Code']" />
		</p_resp_response_code>
		<p_resp_response_text>
			<xsl:value-of select="$Response/Field[./@name='Response_Text']" />
		</p_resp_response_text>
		<p_resp_approval_code>
			<xsl:value-of select="$Response/Field[./@name='Approval_Code']" />
		</p_resp_approval_code>

	</xsl:template>
</xsl:stylesheet>
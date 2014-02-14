<?xml version="1.0" encoding="UTF-8"?>
<!--
*****************************************************************************
*   This file contains the XSLT code snippets for the custom mappings
*   defined using the IBM XML Mapping Editor V1.0.110
*
*   Mapping file:		XSLTransformation2_req_1.map
*   Map declaration(s):	XSLTransformation2_req_1
*   Input file(s):		smo://smo/name%3Dwsdl-primary/correlationContext%3D%257Bhttp%253A%252F%252FNCL_CruieFitConfirmation_Module%257DAppContext/message%3D%257Bhttp%253A%252F%252FNCL_CruieFitConfirmation_Module%252FJDBCImport%257DexecuteNclseaNcl_Wesb_Fit_ConfirmationResponseMsg/xpath%3D%252F/smo.xsd
*   Output file(s):		smo://smo/name%3Dwsdl-primary/correlationContext%3D%257Bhttp%253A%252F%252FNCL_CruieFitConfirmation_Module%257DAppContext/message%3D%257Bhttp%253A%252F%252FNCL_WESB_Shared_Library%252FNCL_CruiseFitConfirmation_Interface%257DPerform_NCL_CruiseFitConfirmationResponseMsg/xpath%3D%252F/smo.xsd
*
*   Custom code snippets are wrapped in top-level <xsl:template> 
*   elements. These <xsl:template> elements, in turn, are used to
*   interface with the custom mappings in the XML Mapping editor.
*****************************************************************************
-->
<xsl:stylesheet
     xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
     xmlns:xalan="http://xml.apache.org/xslt"
     xmlns:str="http://exslt.org/strings"
     xmlns:set="http://exslt.org/sets"
     xmlns:math="http://exslt.org/math"
     xmlns:fn="http://www.w3.org/2005/xpath-functions"
     xmlns:regexp="http://exslt.org/regular-expressions"
     xmlns:dyn="http://exslt.org/dynamic"
     xmlns:dp="http://www.datapower.com/extensions"
     xmlns:exsl="http://exslt.org/common"
     xmlns:date="http://exslt.org/dates-and-times"
     xmlns:in="http://NCL_CruieFitConfirmation_Module/JDBCImport"
     xmlns:in2="http://com/ibm/j2ca/fault"
     xmlns:in3="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_fit_confirmation"
     xmlns:in4="wsdl.http://NCL_CruieFitConfirmation_Module/JDBCImport"
     xmlns:in5="http://com/ibm/j2ca/fault/afcfault"
     xmlns:io="http://www.w3.org/2003/05/soap-envelope"
     xmlns:io3="http://www.ibm.com/xmlns/prod/websphere/mq/sca/6.0.0"
     xmlns:io2="http://www.ibm.com/websphere/sibx/smo/v6.0.1"
     xmlns:io4="http://schemas.xmlsoap.org/ws/2004/08/addressing"
     xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
     xmlns:out="wsdl.http://NCL_WESB_Shared_Library/NCL_CruiseFitConfirmation_Interface"
     xmlns:io6="http://www.ibm.com/xmlns/prod/websphere/http/sca/6.1.0"
     xmlns:io5="http://nclapi/schemas"
     xmlns:xs4xs="http://www.w3.org/2001/XMLSchema"
     xmlns:out2="http://NCL_WESB_Shared_Library/NCL_CruiseFitConfirmation_Interface"
     xmlns:io8="http://www.w3.org/2005/08/addressing"
     xmlns:io7="http://NCL_CruieFitConfirmation_Module"
     xmlns:map="http://NCL_CruieFitConfirmation_Module/xslt/XSLTransformation2_req_1"
     exclude-result-prefixes="in in2 in3 in4 in5 str set math fn regexp dyn dp exsl date map xalan"
     version="1.0">
  <xsl:output method="xml" encoding="UTF-8" indent="yes" xalan:indent-amount="2"/>
  <xsl:strip-space elements="*"/>

  <!-- The rule represents a custom mapping: "null" to "io5:Success". -->
  <xsl:template name="ToSuccess">
    <!-- ADD CUSTOM CODE HERE. -->
    <xsl:value-of select="''"/>
  </xsl:template>
</xsl:stylesheet>
<?xml version="1.0" encoding="UTF-8"?>
<!--
*****************************************************************************
*   This file contains the XSLT code snippets for the custom mappings
*   defined using the IBM XML Mapping Editor V1.0.110
*
*   Mapping file:		XSLTransformation2_req_1.map
*   Map declaration(s):	XSLTransformation2_req_1
*   Input file(s):		smo://smo/name%3Dwsdl-primary/correlationContext%3D%257Bhttp%253A%252F%252FNCL_CruiseUserAuthenticationAndRetrieve%257DAppContext/message%3D%257Bhttp%253A%252F%252FNCL_WESB_Shared_Library%252FEncrypt_Decrypt_Interface%257DprocessEncryptDecryptResponse/xpath%3D%252F/smo.xsd
*   Output file(s):		smo://smo/name%3Dwsdl-primary/correlationContext%3D%257Bhttp%253A%252F%252FNCL_CruiseUserAuthenticationAndRetrieve%257DAppContext/message%3D%257Bhttp%253A%252F%252FNCL_CruiseUserAuthenticationAndRetrieve%252FJDBCImport%257DexecuteNclseaNcl_Wesb_User_LookupRequestMsg/xpath%3D%252F/smo.xsd
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
     xmlns:in="wsdl.http://NCL_WESB_Shared_Library/Encrypt_Decrypt_Interface"
     xmlns:in2="http://NCL_WESB_Shared_Library/Encrypt_Decrypt_Interface"
     xmlns:io="http://NCL_CruiseUserAuthenticationAndRetrieve"
     xmlns:io2="http://www.w3.org/2003/05/soap-envelope"
     xmlns:io3="http://www.ibm.com/websphere/sibx/smo/v6.0.1"
     xmlns:out="wsdl.http://NCL_CruiseUserAuthenticationAndRetrieve/JDBCImport"
     xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
     xmlns:out2="http://NCL_CruiseUserAuthenticationAndRetrieve/JDBCImport"
     xmlns:io4="http://www.ibm.com/xmlns/prod/websphere/mq/sca/6.0.0"
     xmlns:out3="http://com/ibm/j2ca/fault"
     xmlns:io5="http://schemas.xmlsoap.org/ws/2004/08/addressing"
     xmlns:io6="http://www.ibm.com/xmlns/prod/websphere/http/sca/6.1.0"
     xmlns:io7="http://nclapi/schemas"
     xmlns:out4="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_user_lookup"
     xmlns:xs4xs="http://www.w3.org/2001/XMLSchema"
     xmlns:io8="http://www.w3.org/2005/08/addressing"
     xmlns:out5="http://com/ibm/j2ca/fault/afcfault"
     xmlns:map="http://NCL_CruiseUserAuthenticationAndRetrieve/xslt/XSLTransformation2_req_1"
     exclude-result-prefixes="in in2 str set math fn regexp dyn dp exsl date map xalan"
     version="1.0">
  <xsl:output method="xml" encoding="UTF-8" indent="yes" xalan:indent-amount="2"/>
  <xsl:strip-space elements="*"/>

  <!-- The rule represents a custom mapping: "UserLoginName" to "p_username". -->
  <xsl:template name="UserLoginNameToP_username">
    <xsl:param name="UserLoginName"/>
    <!-- ADD CUSTOM CODE HERE. -->
    
    <xsl:value-of select="translate($UserLoginName, 'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ')"/>
    
  </xsl:template>
</xsl:stylesheet>
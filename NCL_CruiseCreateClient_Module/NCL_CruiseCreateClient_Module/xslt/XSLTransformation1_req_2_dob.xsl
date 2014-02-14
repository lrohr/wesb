<?xml version="1.0" encoding="UTF-8"?>
<!--
*****************************************************************************
*   This file contains the XSLT code snippets for the custom mappings
*   defined using the IBM XML Mapping Editor V1.0.110
*
*   Mapping file:		XSLTransformation1_req_2.map
*   Map declaration(s):	XSLTransformation1_req_2
*   Input file(s):		smo://smo/name%3Dwsdl-primary/correlationContext%3D%257Bhttp%253A%252F%252FNCL_CruiseCreateClient_Module%257DApp_context/message%3D%257Bhttp%253A%252F%252FNCL_WESB_Shared_Library%252FEncrypt_Decrypt_Interface%257DprocessEncryptDecryptResponse/xpath%3D%252F/smo.xsd
*   Output file(s):		smo://smo/name%3Dwsdl-primary/correlationContext%3D%257Bhttp%253A%252F%252FNCL_CruiseCreateClient_Module%257DApp_context/message%3D%257Bhttp%253A%252F%252FNCL_CruiseCreateClient_Module%252FDB_Lookup%257DexecuteNclseaNcl_Wesb_Create_Client_ProfileBGRequestMsg/xpath%3D%252F/smo.xsd
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
     xmlns:out="http://NCL_CruiseCreateClient_Module/DB_Lookup"
     xmlns:out4="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_create_companion_xrefbg"
     xmlns:io5="http://www.w3.org/2003/05/soap-envelope"
     xmlns:out5="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_create_client_profile"
     xmlns:io6="http://www.ibm.com/websphere/sibx/smo/v6.0.1"
     xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
     xmlns:out6="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_create_client_profilebg"
     xmlns:out7="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_create_onboard_pref"
     xmlns:out2="wsdl.http://NCL_CruiseCreateClient_Module/DB_Lookup"
     xmlns:out8="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_create_onboard_prefbg"
     xmlns:out9="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_create_client_parm"
     xmlns:io="http://www.ibm.com/xmlns/prod/websphere/mq/sca/6.0.0"
     xmlns:io2="http://NCL_CruiseCreateClient_Module"
     xmlns:io3="http://schemas.xmlsoap.org/ws/2004/08/addressing"
     xmlns:out10="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_create_client_parmbg"
     xmlns:io7="http://www.ibm.com/xmlns/prod/websphere/http/sca/6.1.0"
     xmlns:io4="http://nclapi/schemas"
     xmlns:out11="http://www.ibm.com/xmlns/prod/websphere/bo/6.0.0"
     xmlns:xs4xs="http://www.w3.org/2001/XMLSchema"
     xmlns:out3="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_create_companion_xref"
     xmlns:io8="http://www.w3.org/2005/08/addressing"
     xmlns:map="http://NCL_CruiseCreateClient_Module/xslt/XSLTransformation1_req_2"
     exclude-result-prefixes="in in2 str set math fn regexp dyn dp exsl date map xalan"
     version="1.0">
  <xsl:output method="xml" encoding="UTF-8" indent="yes" xalan:indent-amount="2"/>
  <xsl:strip-space elements="*"/>

  <!-- The rule represents a custom mapping: "BirthDate" to "p_dob". -->
  <xsl:template name="BirthDateToP_dob">
    <xsl:param name="BirthDate"/>
    <!-- ADD CUSTOM CODE HERE. -->
    
        <xsl:choose>
          <xsl:when test="(string-length(   $BirthDate )) > ('0')">
            <xsl:value-of select="concat(substring(    $BirthDate  ,'6','2'),substring(  $BirthDate  ,'9', '2'),substring($BirthDate  ,'1','4'))"></xsl:value-of>
          </xsl:when>
    </xsl:choose>
    
    
  </xsl:template>
</xsl:stylesheet>
<?xml version="1.0" encoding="UTF-8"?>
<!-- @generated mapFile="xslt/NclseaNcl_Wesb_Get_Client_Vacat_PrefP_Dest_CurToStringLength0to128.map" md5sum="0d1d5335110959756b5d0cad5994df55" version="7.6.100" -->
<!--
*****************************************************************************
*   This file has been generated by the IBM XML Mapping Editor.
*
*   Mapping file:		NclseaNcl_Wesb_Get_Client_Vacat_PrefP_Dest_CurToStringLength0to128.map
*   Map declaration(s):	NclseaNcl_Wesb_Get_Client_Vacat_PrefP_Dest_CurToStringLength0to128
*   Input file(s):		file:/D:/20131204_bindings/NCL_CruiseRetrieveClient_Module/NclseaNcl_Wesb_Get_Client_Vacat_PrefP_Dest_Cur.xsd
*
*   Note: Do not modify the contents of this file as it is overwritten
*         each time the mapping model is updated.
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
    xmlns:in="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/metadata"
    xmlns:in2="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_get_client_vacat_prefp_dest_cur"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xmlns:xs4xs="http://www.w3.org/2001/XMLSchema"
    xmlns:map="http://NCL_CruiseRetrieveClient_Module/xslt/NclseaNcl_Wesb_Get_Client_Vacat_PrefP_Dest_CurToStringLength0to128"
    xmlns:msl="http://www.ibm.com/xmlmap"
    exclude-result-prefixes="in in2 str set math fn regexp dyn dp exsl date map xalan msl"
    version="1.0">
  <xsl:output method="xml" encoding="UTF-8" indent="no"/>

  <!-- root wrapper template  -->
  <xsl:template match="/">
    <msl:datamap>
    </msl:datamap>
  </xsl:template>

  <!-- *****************    Utility Templates    ******************  -->
  <!-- copy the namespace declarations from the source to the target -->
  <xsl:template name="copyNamespaceDeclarations">
    <xsl:param name="root"/>
    <xsl:for-each select="$root/namespace::*[not(name() = '')]">
      <xsl:copy/>
    </xsl:for-each>
  </xsl:template>
</xsl:stylesheet>
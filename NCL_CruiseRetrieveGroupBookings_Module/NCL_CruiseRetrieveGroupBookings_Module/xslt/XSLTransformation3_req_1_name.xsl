<?xml version="1.0" encoding="UTF-8"?>
<!--
*****************************************************************************
*   This file contains the XSLT code snippets for the custom mappings
*   defined using the IBM XML Mapping Editor V1.0.110
*
*   Mapping file:		XSLTransformation3_req_1.map
*   Map declaration(s):	XSLTransformation3_req_1
*   Input file(s):		smo://smo/name%3Dwsdl-primary/correlationContext%3D%257Bhttp%253A%252F%252FNCL_CruiseRetrieveGroupBookings_Module%257DApp_context/message%3D%257Bhttp%253A%252F%252FNCL_CruiseRetrieveGroupBookings_Module%252FDB_LOOKUP%257DexecuteNclseaNcl_Wesb_Retrieve_Grp_BookingBGResponseMsg/xpath%3D%252F/smo.xsd
*   Output file(s):		smo://smo/name%3Dwsdl-primary/correlationContext%3D%257Bhttp%253A%252F%252FNCL_CruiseRetrieveGroupBookings_Module%257DApp_context/message%3D%257Bhttp%253A%252F%252FNCL_WESB_Shared_Library%252FNCL_CruiseRetrieveGroupBookings_Interface%257DPerform_NCL_CruiseRetrieveGroupBookingsResponseMsg/xpath%3D%252F/smo.xsd
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
     xmlns:in="http://NCL_CruiseRetrieveGroupBookings_Module/DB_LOOKUP"
     xmlns:in2="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_retrieve_grp_booking"
     xmlns:in3="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_retrieve_grp_bookingbg"
     xmlns:in4="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/nclseancl_wesb_retrieve_grp_bookingp_cursor"
     xmlns:in5="http://www.ibm.com/xmlns/prod/websphere/bo/6.0.0"
     xmlns:in6="wsdl.http://NCL_CruiseRetrieveGroupBookings_Module/DB_LOOKUP"
     xmlns:io="http://www.w3.org/2003/05/soap-envelope"
     xmlns:io3="http://www.ibm.com/xmlns/prod/websphere/mq/sca/6.0.0"
     xmlns:io2="http://www.ibm.com/websphere/sibx/smo/v6.0.1"
     xmlns:out="http://NCL_WESB_Shared_Library/NCL_CruiseRetrieveGroupBookings_Interface"
     xmlns:io4="http://schemas.xmlsoap.org/ws/2004/08/addressing"
     xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
     xmlns:io6="http://www.ibm.com/xmlns/prod/websphere/http/sca/6.1.0"
     xmlns:io5="http://nclapi/schemas"
     xmlns:xs4xs="http://www.w3.org/2001/XMLSchema"
     xmlns:io8="http://www.w3.org/2005/08/addressing"
     xmlns:io7="http://NCL_CruiseRetrieveGroupBookings_Module"
     xmlns:out2="wsdl.http://NCL_WESB_Shared_Library/NCL_CruiseRetrieveGroupBookings_Interface"
     xmlns:map="http://NCL_CruiseRetrieveGroupBookings_Module/xslt/XSLTransformation3_req_1"
     exclude-result-prefixes="in in2 in3 in4 in5 in6 str set math fn regexp dyn dp exsl date map xalan"
     version="1.0">
  <xsl:output method="xml" encoding="UTF-8" indent="yes" xalan:indent-amount="2"/>
  <xsl:strip-space elements="*"/>

  <!-- The rule represents a custom mapping: "ship_code" to "ShipName". -->
  <xsl:template name="Ship_codeToShipName">
    <xsl:param name="ship_code"/>
    <!-- ADD CUSTOM CODE HERE. -->
    
    
     
        <xsl:if test="$ship_code='SKY'">
			<xsl:value-of select="'Norwegian Sky'"/>
		</xsl:if>
		<xsl:if test="$ship_code='SPIRIT'">
			<xsl:value-of select="'Norwegian Spirit'"/>
		</xsl:if>
		<xsl:if test="$ship_code='JEWEL'">
			<xsl:value-of select="'Norwegian Jewel'"/>
		</xsl:if>
		<xsl:if test="$ship_code='CROWN'">
			<xsl:value-of select="'Norwegian Crown'"/>
		</xsl:if>
		<xsl:if test="$ship_code='PRIDE AMER'">
			<xsl:value-of select="'Pride of America'"/>
		</xsl:if>
		<xsl:if test="$ship_code='PRIDE ALOH'">
			<xsl:value-of select="'Pride of Aloha'"/>
		</xsl:if>
		<xsl:if test="$ship_code='SKY'">
			<xsl:value-of select="'Norwegian Sky'"/>
		</xsl:if>
		<xsl:if test="$ship_code='SUN'">
			<xsl:value-of select="'Norwegian Sun'"/>
		</xsl:if>
		<xsl:if test="$ship_code='SEA'">
			<xsl:value-of select="'Norwegian Sea'"/>
		</xsl:if>
		<xsl:if test="$ship_code='MAJESTY'">
			<xsl:value-of select="'Norwegian Majesty'"/>
		</xsl:if>
		<xsl:if test="$ship_code='STAR'">
			<xsl:value-of select="'Norwegian Star'"/>
		</xsl:if>
		<xsl:if test="$ship_code='WIND'">
			<xsl:value-of select="'Norwegian Wind'"/>
		</xsl:if>
		<xsl:if test="$ship_code='DREAM'">
			<xsl:value-of select="'Norwegian Dream'"/>
		</xsl:if>
		<xsl:if test="$ship_code='DAWN'">
			<xsl:value-of select="'Norwegian Dawn'"/>
		</xsl:if>
		<xsl:if test="$ship_code='GEM'">
			<xsl:value-of select="'Norwegian Gem'"/>
		</xsl:if>
		<xsl:if test="$ship_code='PEARL'">
			<xsl:value-of select="'Norwegian Pearl'"/>
		</xsl:if>
		<xsl:if test="$ship_code='JADE'">
			<xsl:value-of select="'Norwegian Jade'"/>
		</xsl:if>
		<xsl:if test="$ship_code='EPIC'">
			<xsl:value-of select="'Norwegian Epic'"/>
		</xsl:if>
		<xsl:if test="$ship_code='SPECIAL'">
			<xsl:value-of select="'Special Programs'"/>
		</xsl:if>
		<xsl:if test="$ship_code='DIAMOND'">
			<xsl:value-of select="'Norwegian Diamond'"/>
		</xsl:if>
        <xsl:if test="$ship_code='BREAKAWAY'">
			<xsl:value-of select="'Norwegian Breakaway'"/>
		</xsl:if>
		<xsl:if test="$ship_code='GETAWAY'">
			<xsl:value-of select="'Norwegian Getaway'"/>
	    </xsl:if>
    
    
  </xsl:template>
</xsl:stylesheet>
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
     xmlns:MapUtils="xalan://com.ibm.wbiserver.transform.util.MapUtils"
     xmlns:map="http://NCL_CruiseRetrieveGroupBookings_Module/xslt/XSLTransformation3_req_1"
     exclude-result-prefixes="in in2 in3 in4 in5 in6 str set math fn regexp dyn dp exsl date MapUtils map xalan"
     version="1.0">
  <xsl:output method="xml" encoding="UTF-8" indent="yes" xalan:indent-amount="2"/>
  <xsl:strip-space elements="*"/>

  <!-- The rule represents a custom mapping: "group_status" to "GroupStatus". -->
  <xsl:template name="Group_statusToGroupStatus">
    <xsl:param name="group_status"/>
    <!-- ADD CUSTOM CODE HERE. -->
    
    <xsl:if test="($group_status)=('BK')">
            <xsl:value-of select="'49'"/>
     </xsl:if>
     <xsl:if test="($group_status)=('CX')">
            <xsl:value-of select="'16'"/>
     </xsl:if>
     <xsl:if test="($group_status)=('OF')">
            <xsl:value-of select="'42'"/>
     </xsl:if>
     <xsl:if test="($group_status)=('WL')">
            <xsl:value-of select="'46'"/>
     </xsl:if>
     <xsl:if test="($group_status)=('CL')">
            <xsl:value-of select="'38'"/>
     </xsl:if>
     <xsl:if test="($group_status)=('CT')">
            <xsl:value-of select="'38'"/>
     </xsl:if>
     <xsl:if test="($group_status)=('TM')">
            <xsl:value-of select="'38'"/>
     </xsl:if>
     <xsl:if test="($group_status)=('SH')">
            <xsl:value-of select="'43'"/>
     </xsl:if>

    
    
  </xsl:template>
</xsl:stylesheet>
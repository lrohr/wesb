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
	xmlns:in2="wsdl.http://FuseBoxLib/ProcessCreditCard" xmlns:io2="http://www.ibm.com/xmlns/prod/websphere/mq/sca/6.0.0"
	xmlns:io="http://www.ibm.com/websphere/sibx/smo/v6.0.1" xmlns:io3="http://schemas.xmlsoap.org/ws/2004/08/addressing"
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:out="http://FuseBoxLib/FuseBoxCredCardProvider"
	xmlns:io4="http://www.ibm.com/xmlns/prod/websphere/http/sca/6.1.0"
	xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:io6="http://www.w3.org/2005/08/addressing"
	xmlns:io5="http://FuseBoxLib" xmlns:out2="wsdl.http://FuseBoxLib/FuseBoxCredCardProvider"
	exclude-result-prefixes="in in2 xalan" version="1.0">
	<xsl:output method="xml" encoding="UTF-8" indent="yes"
		xalan:indent-amount="2" />
	<xsl:strip-space elements="*" />

  <!-- The rule represents a custom mapping: "cardInfo" to "request". -->
	<xsl:template name="MapCardInfoToRequest" match="/cardInfo">
		<xsl:param name="cardInfo" />

		<xsl:variable name="ncl_Office_w">
			<xsl:value-of select="substring-after($cardInfo/officeCodeTxt,'NCL ')" />
		</xsl:variable>
		<xsl:variable name="ncl_Currency_cd">
			<xsl:value-of select="$cardInfo/currencyCd" />
		</xsl:variable>

		<xsl:attribute name="type"><xsl:value-of
			select="'AuthorizationRequest'" /></xsl:attribute>

		<Field>
			<xsl:attribute name="name"><xsl:value-of select="'Chain_Code'" /></xsl:attribute>
			<xsl:value-of select="'NC'" />
		</Field>
		<Field>
			<xsl:attribute name="name"><xsl:value-of select="'Location_ID'" /></xsl:attribute>
			<!--   added code to translate NCL INTL into NCL MIAMI    -->

			<!--
				hard coded MIAMI 11/4/2010 ler <xsl:choose> <xsl:when
				test="$ncl_Office_w = 'INTL' "> <xsl:value-of select="'MIAMI'"/>
				</xsl:when> <xsl:otherwise> <xsl:value-of select="$ncl_Office_w"/>
				</xsl:otherwise> </xsl:choose>
			-->
			<xsl:value-of select="'MIAMI'" />


		</Field>
		<Field>
			<xsl:attribute name="name"><xsl:value-of select="'Currency_Code'" /></xsl:attribute>
			<xsl:value-of select="$ncl_Currency_cd" />
		</Field>
		<Field>
			<xsl:attribute name="name"><xsl:value-of select="'Venue_ID'" /></xsl:attribute>
			<!--
				Changed Venue_ID from ship to "ResUSD" or "ResXXX" 02/20/2009 ler
			-->
			<!--  Change Res to RES    03/19/2009  -->

			<!--
				re-coded 11/04/2010 ler <xsl:value-of
				select="concat('RES',$cardInfo/CURRENCY_CD)"/>
			-->
			<!--
     
		-->
			<xsl:choose>

				<xsl:when
					test="  (   $ncl_Office_w = 'MIAMI'      )  or (   $ncl_Office_w = 'INTL'   )     ">
					<xsl:value-of select="concat('RES',$ncl_Currency_cd )" />
				</xsl:when>

				<xsl:when test="   $ncl_Office_w = 'LONDON'        ">
					<xsl:choose>
						<xsl:when test=" $ncl_Currency_cd = 'USD' ">
							<xsl:value-of select="'RESUKUSD'" />
						</xsl:when>
						<xsl:otherwise>
							<xsl:value-of select="'RESUKGBP'" />
						</xsl:otherwise>
					</xsl:choose>
				</xsl:when>


				<xsl:when
					test=" ($ncl_Office_w != 'LONDON')  and ($ncl_Office_w != 'MIAMI')  and ($ncl_Office_w != 'INTL')   ">
					<xsl:choose>
						<xsl:when test=" $ncl_Currency_cd = 'USD' ">
							<xsl:value-of select="'RESCEUSD'" />
						</xsl:when>
						<xsl:otherwise>
							<xsl:value-of select="'RESCEEUR'" />
						</xsl:otherwise>
					</xsl:choose>
				</xsl:when>



			</xsl:choose>
			<!--
		 Veneu_id      11/4/2010    ler
			-->
		</Field>
		<Field>
			<xsl:attribute name="name"><xsl:value-of select="'Message_ID'" /></xsl:attribute>
			<xsl:value-of select="$cardInfo/uniqueValId" />
		</Field>
		<Field>
			<xsl:attribute name="name"><xsl:value-of select="'Application_ID'" /></xsl:attribute>
			<xsl:value-of select="'ESB_CCApp 0.1'" />
		</Field>
		<Field>
			<xsl:attribute name="name"><xsl:value-of select="'Invoice_Nbr'" /></xsl:attribute>
			<xsl:value-of select="$cardInfo/resGrpId" />
		</Field>
		<Field>
			<xsl:attribute name="name"><xsl:value-of select="'Transaction_Type'" /></xsl:attribute>
			<xsl:variable name="if1">
				<xsl:choose>
					<xsl:when test="($cardInfo/transTypeTxt)=('PMNT')">
						<xsl:value-of select="'S'" />
					</xsl:when>
					<xsl:otherwise>
						<xsl:value-of select="'X'" />
					</xsl:otherwise>
				</xsl:choose>
			</xsl:variable>
			<xsl:value-of select="$if1" />
		</Field>
		<Field>
			<xsl:attribute name="name"><xsl:value-of select="'Auth_Amount'" /></xsl:attribute>
			<xsl:value-of select="normalize-space($cardInfo/transAmt)" />
		</Field>
		<Field>
			<xsl:attribute name="name"><xsl:value-of select="'Cardholder_Nbr'" /></xsl:attribute>
			<xsl:value-of select="normalize-space($cardInfo/credCrdNbr)" />
		</Field>
		<Field>
			<xsl:attribute name="name"><xsl:value-of select="'Expiration_Date'" /></xsl:attribute>
			<xsl:value-of select="$cardInfo/ccExpDat" />
		</Field>
		<Field>
			<xsl:attribute name="name"><xsl:value-of select="'Terminal_Type'" /></xsl:attribute>
			<xsl:value-of select="'0'" />
		</Field>
		<Field>
			<xsl:attribute name="name"><xsl:value-of
				select="'Terminal_Capability'" /></xsl:attribute>
			<xsl:value-of select="'0'" />
		</Field>
		<Field>
			<xsl:attribute name="name"><xsl:value-of select="'Account_Source'" /></xsl:attribute>
			<xsl:value-of select="'M'" />
		</Field>
		<Field>
			<xsl:attribute name="name"><xsl:value-of select="'Departure_Date'" /></xsl:attribute>
			<!--
				per GCS switched DEPARTURE_DAT and ARRIVAL_DAT 02/20/2009 LER
			-->
			<xsl:value-of select="$cardInfo/arrivalDat" />
		</Field>
		<Field>
			<xsl:attribute name="name"><xsl:value-of select="'Arrival_Date'" /></xsl:attribute>
			<!--
				per GCS switched DEPARTURE_DAT and ARRIVAL_DAT 02/20/2009 LER
			-->
			<xsl:value-of select="$cardInfo/departureDat" />
		</Field>
		<xsl:if
			test="(string-length($cardInfo/manAuthCodeTxt))&gt;(number('1')) 
                               or ($cardInfo/TransTypeTxt)!=('PMNT') ">
			<Field>
				<xsl:attribute name="name"><xsl:value-of select="'Auth_Code'" /></xsl:attribute>
				<xsl:variable name="if2">
					<xsl:choose>
						<xsl:when test="($cardInfo/TransTypeTxt)!=('PMNT')">
							<xsl:value-of select="$cardInfo/uniqueValId" />
						</xsl:when>
						<xsl:otherwise>
							<xsl:variable name="if3">
								<xsl:choose>
									<xsl:when
										test="(string-length($cardInfo/manAuthCodeTxt))&gt;(number('0'))">
										<xsl:value-of select="$cardInfo/manAuthCodeTxt" />
									</xsl:when>
								</xsl:choose>
							</xsl:variable>
							<xsl:value-of select="$if3" />
						</xsl:otherwise>
					</xsl:choose>
				</xsl:variable>
				<xsl:value-of select="$if2" />
			</Field>
		</xsl:if>

	</xsl:template>
</xsl:stylesheet>
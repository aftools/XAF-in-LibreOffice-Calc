<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xaf="http://www.auditfiles.nl/XAF/3.2" exclude-result-prefixes="xaf">

	<!-- XSL voor import van XAF 3.2 in OpenOffice/LibreOffice Calc -->
	<xsl:output method="xml" encoding = "UTF-8" omit-xml-declaration = "no"/>

	<xsl:template match="/">
		<office:document-content
			xmlns:office="urn:oasis:names:tc:opendocument:xmlns:office:1.0"
			xmlns:style="urn:oasis:names:tc:opendocument:xmlns:style:1.0"
			xmlns:text="urn:oasis:names:tc:opendocument:xmlns:text:1.0"
			xmlns:table="urn:oasis:names:tc:opendocument:xmlns:table:1.0"
			xmlns:draw="urn:oasis:names:tc:opendocument:xmlns:drawing:1.0"
			xmlns:fo="urn:oasis:names:tc:opendocument:xmlns:xsl-fo-compatible:1.0"
			xmlns:xlink="http://www.w3.org/1999/xlink"
			xmlns:dc="http://purl.org/dc/elements/1.1/"
			xmlns:meta="urn:oasis:names:tc:opendocument:xmlns:meta:1.0"
			xmlns:number="urn:oasis:names:tc:opendocument:xmlns:datastyle:1.0"
			xmlns:svg="urn:oasis:names:tc:opendocument:xmlns:svg-compatible:1.0"
			xmlns:chart="urn:oasis:names:tc:opendocument:xmlns:chart:1.0"
			xmlns:dr3d="urn:oasis:names:tc:opendocument:xmlns:dr3d:1.0"
			xmlns:math="http://www.w3.org/1998/Math/MathML"
			xmlns:form="urn:oasis:names:tc:opendocument:xmlns:form:1.0"
			xmlns:script="urn:oasis:names:tc:opendocument:xmlns:script:1.0"
			xmlns:ooo="http://openoffice.org/2004/office"
			xmlns:ooow="http://openoffice.org/2004/writer"
			xmlns:oooc="http://openoffice.org/2004/calc"
			xmlns:dom="http://www.w3.org/2001/xml-events"
			xmlns:xforms="http://www.w3.org/2002/xforms"
			xmlns:xsd="http://www.w3.org/2001/XMLSchema"
			xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
			office:version="1.0">


			<office:settings>
				<config:config-item-set config:name="ooo:view-settings">
					<config:config-item-map-indexed config:name="Views">
						<config:config-item-map-entry>
							<config:config-item-map-named config:name="Tables">

								<config:config-item-map-entry config:name="ledgerAccount">
									<config:config-item config:name="VerticalSplitMode" config:type="short">2</config:config-item>
									<config:config-item config:name="VerticalSplitPosition" config:type="int">1</config:config-item>
									<config:config-item config:name="PositionBottom" config:type="int">1</config:config-item>
								</config:config-item-map-entry>

								<config:config-item-map-entry config:name="trLine">
									<config:config-item config:name="VerticalSplitMode" config:type="short">2</config:config-item>
									<config:config-item config:name="VerticalSplitPosition" config:type="int">1</config:config-item>
									<config:config-item config:name="PositionBottom" config:type="int">1</config:config-item>
								</config:config-item-map-entry>

							</config:config-item-map-named>
						</config:config-item-map-entry>
					</config:config-item-map-indexed>
				</config:config-item-set>
			</office:settings>

			<office:automatic-styles>
				<style:style style:name="ce1" style:family="table-cell" style:parent-style-name="Default">
					<style:text-properties fo:font-weight="bold" style:font-weight-asian="bold" style:font-weight-complex="bold"/>
				</style:style>

				<number:number-style style:name="N2">
					<number:number number:decimal-places="2" loext:min-decimal-places="2" number:grouping="true"/>
				</number:number-style>
			</office:automatic-styles>

			<office:body>

				<office:spreadsheet>

					<!-- Header -->
					<table:table table:name="header">

						<table:table-row>
							<table:table-cell><text:p>Header</text:p></table:table-cell>
						</table:table-row>

						<xsl:for-each select="xaf:auditfile/xaf:header">

							<table:table-row>
								<table:table-cell table:style-name="ce1"><text:p>fiscalYear</text:p></table:table-cell>
								<table:table-cell><text:p><xsl:value-of select="xaf:fiscalYear"/></text:p></table:table-cell>
							</table:table-row>
							<table:table-row>
								<table:table-cell table:style-name="ce1"><text:p>startDate</text:p></table:table-cell>
								<table:table-cell><text:p><xsl:value-of select="xaf:startDate"/></text:p></table:table-cell>
							</table:table-row>
							<table:table-row>
								<table:table-cell table:style-name="ce1"><text:p>endDate</text:p></table:table-cell>
								<table:table-cell><text:p><xsl:value-of select="xaf:endDate"/></text:p></table:table-cell>
							</table:table-row>
							<table:table-row>
								<table:table-cell table:style-name="ce1"><text:p>curCode</text:p></table:table-cell>
								<table:table-cell><text:p><xsl:value-of select="xaf:curCode"/></text:p></table:table-cell>
							</table:table-row>
							<table:table-row>
								<table:table-cell table:style-name="ce1"><text:p>dateCreated</text:p></table:table-cell>
								<table:table-cell><text:p><xsl:value-of select="xaf:dateCreated"/></text:p></table:table-cell>
							</table:table-row>
							<table:table-row>
								<table:table-cell table:style-name="ce1"><text:p>softwareDesc</text:p></table:table-cell>
								<table:table-cell><text:p><xsl:value-of select="xaf:softwareDesc"/></text:p></table:table-cell>
							</table:table-row>
							<table:table-row>
								<table:table-cell table:style-name="ce1"><text:p>softwareVersion</text:p></table:table-cell>
								<table:table-cell><text:p><xsl:value-of select="xaf:softwareVersion"/></text:p></table:table-cell>
							</table:table-row>
						</xsl:for-each>

					</table:table>
					<!-- Einde van werkblad Header -->

					<!-- Company -->
					<table:table table:name="company">
						<xsl:for-each select="xaf:auditfile/xaf:company">
							<table:table-row>
								<table:table-cell table:style-name="ce1"><text:p>companyIdent</text:p></table:table-cell>
								<table:table-cell><text:p><xsl:value-of select="xaf:companyIdent"/></text:p></table:table-cell>
							</table:table-row>
							<table:table-row>
								<table:table-cell table:style-name="ce1"><text:p>companyName</text:p></table:table-cell>
								<table:table-cell><text:p><xsl:value-of select="xaf:companyName"/></text:p></table:table-cell>
							</table:table-row>
							<table:table-row>
								<table:table-cell table:style-name="ce1"><text:p>taxRegistrationCountry</text:p></table:table-cell>
								<table:table-cell><text:p><xsl:value-of select="xaf:taxRegistrationCountry"/></text:p></table:table-cell>
							</table:table-row>
							<table:table-row>
								<table:table-cell table:style-name="ce1"><text:p>taxRegIdent</text:p></table:table-cell>
								<table:table-cell><text:p><xsl:value-of select="xaf:taxRegIdent"/></text:p></table:table-cell>
							</table:table-row>
							<table:table-row>
								<table:table-cell table:style-name="ce1"><text:p>strAddr_streetName</text:p></table:table-cell>
								<table:table-cell><text:p><xsl:value-of select="xaf:streetAddress[1]/xaf:streetName"/></text:p></table:table-cell>
							</table:table-row>
							<table:table-row>
								<table:table-cell table:style-name="ce1"><text:p>strAddr_number</text:p></table:table-cell>
								<table:table-cell><text:p><xsl:value-of select="xaf:streetAddress[1]/xaf:number"/></text:p></table:table-cell>
							</table:table-row>
							<table:table-row>
								<table:table-cell table:style-name="ce1"><text:p>strAddr_numberExtension</text:p></table:table-cell>
								<table:table-cell><text:p><xsl:value-of select="xaf:streetAddress[1]/xaf:numberExtenstion"/></text:p></table:table-cell>
							</table:table-row>
							<table:table-row>
								<table:table-cell table:style-name="ce1"><text:p>strAddr_city</text:p></table:table-cell>
								<table:table-cell><text:p><xsl:value-of select="xaf:streetAddress[1]/xaf:city"/></text:p></table:table-cell>
							</table:table-row>
							<table:table-row>
								<table:table-cell><text:p>strAddr_postalCode</text:p></table:table-cell>
								<table:table-cell><text:p><xsl:value-of select="xaf:streetAddress[1]/xaf:postalCode"/></text:p></table:table-cell>
							</table:table-row>
							<table:table-row>
								<table:table-cell table:style-name="ce1"><text:p>strAddr_country</text:p></table:table-cell>
								<table:table-cell><text:p><xsl:value-of select="xaf:streetAddress[1]/xaf:country"/></text:p></table:table-cell>
							</table:table-row>

						</xsl:for-each>

					</table:table>
					<!-- Einde van werkblad Company -->


					<!-- Rekeningschema -->
					<table:table table:name="ledgerAccount" table:style-name="ta1">
						<table:table-row>
							<table:table-cell table:style-name="ce1"><text:p>accountID</text:p></table:table-cell>
							<table:table-cell table:style-name="ce1"><text:p>accountType</text:p></table:table-cell>
							<table:table-cell table:style-name="ce1"><text:p>leadCode</text:p></table:table-cell>
							<table:table-cell table:style-name="ce1"><text:p>leadDescription</text:p></table:table-cell>
							<table:table-cell table:style-name="ce1"><text:p>leadReference</text:p></table:table-cell>
							<table:table-cell table:style-name="ce1"><text:p>leadCrossRef</text:p></table:table-cell>
						</table:table-row>

						<xsl:for-each select="xaf:auditfile/xaf:company/xaf:generalLedger/xaf:ledgerAccount">
							<table:table-row>
								<table:table-cell><text:p><xsl:value-of select="xaf:accID"/></text:p></table:table-cell>
								<table:table-cell><text:p><xsl:value-of select="xaf:accDesc"/></text:p></table:table-cell>
								<table:table-cell><text:p><xsl:value-of select="xaf:leadCode"/></text:p></table:table-cell>
								<table:table-cell><text:p><xsl:value-of select="xaf:leadDescription"/></text:p></table:table-cell>
								<table:table-cell><text:p><xsl:value-of select="xaf:leadReference"/></text:p></table:table-cell>
								<table:table-cell><text:p><xsl:value-of select="xaf:leadCrossRef"/></text:p></table:table-cell>
							</table:table-row>
						</xsl:for-each>

					</table:table>
					<!-- Einde van werkblad ledgerAccount -->


					<!-- Taxonomie (RGS?) -->
					<table:table table:name="taxonomy">
						<table:table-row>
							<table:table-cell table:style-name="ce1"><text:p>accountID</text:p></table:table-cell>
							<table:table-cell table:style-name="ce1"><text:p>accountDesc</text:p></table:table-cell>
							<table:table-cell table:style-name="ce1"><text:p>accountType</text:p></table:table-cell>

							<table:table-cell table:style-name="ce1"><text:p>taxoRef</text:p></table:table-cell>
							<table:table-cell table:style-name="ce1"><text:p>entryPointRef</text:p></table:table-cell>
							<table:table-cell table:style-name="ce1"><text:p>conceptRef</text:p></table:table-cell>
							<table:table-cell table:style-name="ce1"><text:p>domainMemberRef</text:p></table:table-cell>
						</table:table-row>

						<xsl:for-each select="xaf:auditfile/xaf:company/xaf:generalLedger/xaf:ledgerAccount/xaf:taxonomy">
							<table:table-row>
								<table:table-cell><text:p><xsl:value-of select="../xaf:accID"/></text:p></table:table-cell>
								<table:table-cell><text:p><xsl:value-of select="../xaf:accDesc"/></text:p></table:table-cell>
								<table:table-cell><text:p><xsl:value-of select="../xaf:accTp"/></text:p></table:table-cell>

								<table:table-cell><text:p><xsl:value-of select="xaf:taxoRef"/></text:p></table:table-cell>
								<table:table-cell><text:p><xsl:value-of select="xaf:taxoRef/xaf:entryPoint[1]/xaf:entryPointRef"/></text:p></table:table-cell>
								<table:table-cell><text:p><xsl:value-of select="xaf:taxoRef/xaf:entryPoint[1]/xaf:conceptRef"/></text:p></table:table-cell>
								<table:table-cell><text:p><xsl:value-of select="xaf:taxoRef/xaf:entryPoint[1]/xaf:domainMember[1]/xaf:domainMemberRef"/></text:p></table:table-cell>
							</table:table-row>
						</xsl:for-each>

					</table:table>
					<!-- Einde van werkblad taxonomy -->


					<!-- Basic -->
					<table:table table:name="basic">
						<table:table-row>
							<table:table-cell table:style-name="ce1"><text:p>basicType</text:p></table:table-cell>
							<table:table-cell table:style-name="ce1"><text:p>basicID</text:p></table:table-cell>
							<table:table-cell table:style-name="ce1"><text:p>basicDesc</text:p></table:table-cell>
						</table:table-row>

						<xsl:for-each select="xaf:auditfile/xaf:company/xaf:generalLedger/xaf:basics/xaf:basic">
							<table:table-row>
								<table:table-cell><text:p><xsl:value-of select="xaf:basicType"/></text:p></table:table-cell>
								<table:table-cell><text:p><xsl:value-of select="xaf:basicID"/></text:p></table:table-cell>
								<table:table-cell><text:p><xsl:value-of select="xaf:basicDesc"/></text:p></table:table-cell>
							</table:table-row>
						</xsl:for-each>

					</table:table>
					<!-- Einde van werkblad basic -->


					<!-- VAT codes -->
					<table:table table:name="vatCode">
						<table:table-row>
							<table:table-cell table:style-name="ce1"><text:p>vatID</text:p></table:table-cell>
							<table:table-cell table:style-name="ce1"><text:p>vatDesc</text:p></table:table-cell>
							<table:table-cell table:style-name="ce1"><text:p>vatToPayAccountID</text:p></table:table-cell>
							<table:table-cell table:style-name="ce1"><text:p>vatToClaimAccountID</text:p></table:table-cell>
						</table:table-row>

						<xsl:for-each select="xaf:auditfile/xaf:company/xaf:vatCodes/xaf:vatCode">
							<table:table-row>
								<table:table-cell table:style-name="ce1"><text:p><xsl:value-of select="xaf:vatID"/></text:p></table:table-cell>
								<table:table-cell table:style-name="ce1"><text:p><xsl:value-of select="xaf:vatDesc"/></text:p></table:table-cell>
								<table:table-cell table:style-name="ce1"><text:p><xsl:value-of select="xaf:vatToPayAccID"/></text:p></table:table-cell>
								<table:table-cell table:style-name="ce1"><text:p><xsl:value-of select="xaf:vatToClaimAccID"/></text:p></table:table-cell>
							</table:table-row>
						</xsl:for-each>

					</table:table>
					<!-- Einde van werkblad vatCode -->


					<!-- Periodes -->
					<table:table table:name="period">
						<table:table-header-rows>
							<table:table-row>
								<table:table-cell table:style-name="ce1"><text:p>periodNumber</text:p></table:table-cell>
								<table:table-cell table:style-name="ce1"><text:p>periodDesc</text:p></table:table-cell>
								<table:table-cell table:style-name="ce1"><text:p>startDatePeriod</text:p></table:table-cell>
								<table:table-cell table:style-name="ce1"><text:p>startTimePeriod</text:p></table:table-cell>
								<table:table-cell table:style-name="ce1"><text:p>endDatePeriod</text:p></table:table-cell>
								<table:table-cell table:style-name="ce1"><text:p>endTimePeriod</text:p></table:table-cell>
							</table:table-row>
						</table:table-header-rows>
						<xsl:for-each select="xaf:auditfile/xaf:company/xaf:periods/xaf:period">
							<table:table-row>
								<table:table-cell><text:p><xsl:value-of select="xaf:periodNumber"/></text:p></table:table-cell>
								<table:table-cell><text:p><xsl:value-of select="xaf:periodDesc"/></text:p></table:table-cell>
								<table:table-cell><text:p><xsl:value-of select="xaf:startDatePeriod"/></text:p></table:table-cell>
								<table:table-cell><text:p><xsl:value-of select="xaf:startTimePeriod"/></text:p></table:table-cell>
								<table:table-cell><text:p><xsl:value-of select="xaf:endDatePeriod"/></text:p></table:table-cell>
								<table:table-cell><text:p><xsl:value-of select="xaf:endTimePeriod"/></text:p></table:table-cell>
							</table:table-row>
						</xsl:for-each>

					</table:table>
					<!-- Einde van werkblad period -->

					<!-- Openingsbalans -->
					<table:table table:name="openingBalance">
						<table:table-header-rows>
							<table:table-row>
								<table:table-cell table:style-name="ce1"><text:p>Balans Datum</text:p></table:table-cell>
								<table:table-cell table:style-name="ce1"><text:p>Omschrijving</text:p></table:table-cell>
								<table:table-cell table:style-name="ce1"><text:p>Aantal balansregels</text:p></table:table-cell>
								<table:table-cell table:style-name="ce1"><text:p>Telling Debet</text:p></table:table-cell>
								<table:table-cell table:style-name="ce1"><text:p>Telling Credit</text:p></table:table-cell>
							</table:table-row>
						</table:table-header-rows>
						<xsl:for-each select="xaf:auditfile/xaf:company/xaf:openingBalance">
							<table:table-row>
								<table:table-cell><text:p><xsl:value-of select="xaf:opBalDate"/></text:p></table:table-cell>
								<table:table-cell><text:p><xsl:value-of select="xaf:opBalDesc"/></text:p></table:table-cell>
								<table:table-cell><text:p><xsl:value-of select="xaf:linesCount"/></text:p></table:table-cell>
								<table:table-cell><text:p><xsl:value-of select="xaf:totalDebit"/></text:p></table:table-cell>
								<table:table-cell><text:p><xsl:value-of select="xaf:totalCredit"/></text:p></table:table-cell>
							</table:table-row>
						</xsl:for-each>

					</table:table>
					<!-- Einde van werkblad openingBalance -->


					<!-- Openingsbalans regels -->
					<table:table table:name="obLine">
						<table:table-header-rows>
							<table:table-row>
								<table:table-cell table:style-name="ce1"><text:p>Volgnr</text:p></table:table-cell>
								<table:table-cell table:style-name="ce1"><text:p>Rekening</text:p></table:table-cell>
								<table:table-cell table:style-name="ce1"><text:p>Datum</text:p></table:table-cell>
								<table:table-cell table:style-name="ce1"><text:p>Omschrijving</text:p></table:table-cell>
								<table:table-cell table:style-name="ce1"><text:p>Bedrag</text:p></table:table-cell>
								<table:table-cell table:style-name="ce1"><text:p>D/C</text:p></table:table-cell>
							</table:table-row>
						</table:table-header-rows>
						<xsl:for-each select="xaf:auditfile/xaf:company/xaf:openingBalance/xaf:obLine">
							<table:table-row>
								<table:table-cell><text:p><xsl:value-of select="xaf:nr"/></text:p></table:table-cell>
								<table:table-cell><text:p><xsl:value-of select="xaf:accID"/></text:p></table:table-cell>
								<table:table-cell><text:p><xsl:value-of select="../xaf:opBalDate"/></text:p></table:table-cell>
								<table:table-cell><text:p><xsl:value-of select="../xaf:opBalDesc"/></text:p></table:table-cell>
								<table:table-cell><text:p><xsl:value-of select="xaf:amnt"/></text:p></table:table-cell>
								<table:table-cell><text:p><xsl:value-of select="xaf:amntTp"/></text:p></table:table-cell>
							</table:table-row>
						</xsl:for-each>

					</table:table>
					<!-- Einde van werkblad obLine -->


					<!-- Debiteuren / Crediteuren -->
					<table:table table:name="customerSupplier">
						<table:table-header-rows>
							<table:table-row>
								<table:table-cell table:style-name="ce1"><text:p>Id</text:p></table:table-cell>
								<table:table-cell table:style-name="ce1"><text:p>Naam</text:p></table:table-cell>
								<table:table-cell table:style-name="ce1"><text:p>Contact</text:p></table:table-cell>
								<table:table-cell table:style-name="ce1"><text:p>Telefoon</text:p></table:table-cell>
								<table:table-cell table:style-name="ce1"><text:p>Fax</text:p></table:table-cell>
								<table:table-cell table:style-name="ce1"><text:p>eMail</text:p></table:table-cell>
								<table:table-cell table:style-name="ce1"><text:p>Website</text:p></table:table-cell>
								<table:table-cell table:style-name="ce1"><text:p>KvK nr</text:p></table:table-cell>
								<table:table-cell table:style-name="ce1"><text:p>Land</text:p></table:table-cell>
								<table:table-cell table:style-name="ce1"><text:p>SofiNr</text:p></table:table-cell>
								<table:table-cell table:style-name="ce1"><text:p>Relatie</text:p></table:table-cell>
								<table:table-cell table:style-name="ce1"><text:p>Soort</text:p></table:table-cell>
								<table:table-cell table:style-name="ce1"><text:p>Groep</text:p></table:table-cell>
								<table:table-cell table:style-name="ce1"><text:p>Kredietlimiet</text:p></table:table-cell>
								<table:table-cell table:style-name="ce1"><text:p>Bestel limiet</text:p></table:table-cell>
								<table:table-cell table:style-name="ce1"><text:p>strAddr_streetname</text:p></table:table-cell>
								<table:table-cell table:style-name="ce1"><text:p>strAddr_number</text:p></table:table-cell>
								<table:table-cell table:style-name="ce1"><text:p>strAddr_numberExtensiton</text:p></table:table-cell>
								<table:table-cell table:style-name="ce1"><text:p>strAddr_city</text:p></table:table-cell>
								<table:table-cell table:style-name="ce1"><text:p>strAddr_postalCode</text:p></table:table-cell>
								<table:table-cell table:style-name="ce1"><text:p>strAddr_country</text:p></table:table-cell>
								<table:table-cell table:style-name="ce1"><text:p>bank_bankAccNr</text:p></table:table-cell>
								<table:table-cell table:style-name="ce1"><text:p>bank_bankIdCd</text:p></table:table-cell>
							</table:table-row>
						</table:table-header-rows>
						<xsl:for-each select="xaf:auditfile/xaf:company/xaf:customersSuppliers/xaf:customerSupplier">
							<table:table-row>
								<table:table-cell table:style-name="ce1"><text:p><xsl:value-of select="xaf:custSupID"/></text:p></table:table-cell>
								<table:table-cell table:style-name="ce1"><text:p><xsl:value-of select="xaf:custSupName"/></text:p></table:table-cell>
								<table:table-cell table:style-name="ce1"><text:p><xsl:value-of select="xaf:contact"/></text:p></table:table-cell>
								<table:table-cell table:style-name="ce1"><text:p><xsl:value-of select="xaf:telephone"/></text:p></table:table-cell>
								<table:table-cell table:style-name="ce1"><text:p><xsl:value-of select="xaf:fax"/></text:p></table:table-cell>
								<table:table-cell table:style-name="ce1"><text:p><xsl:value-of select="xaf:eMail"/></text:p></table:table-cell>
								<table:table-cell table:style-name="ce1"><text:p><xsl:value-of select="xaf:website"/></text:p></table:table-cell>
								<table:table-cell table:style-name="ce1"><text:p><xsl:value-of select="xaf:commerceNr"/></text:p></table:table-cell>
								<table:table-cell table:style-name="ce1"><text:p><xsl:value-of select="xaf:taxRegistrationCountry"/></text:p></table:table-cell>
								<table:table-cell table:style-name="ce1"><text:p><xsl:value-of select="xaf:taxRegIdent"/></text:p></table:table-cell>
								<table:table-cell table:style-name="ce1"><text:p><xsl:value-of select="xaf:relationshipID"/></text:p></table:table-cell>
								<table:table-cell table:style-name="ce1"><text:p><xsl:value-of select="xaf:custSupTp"/></text:p></table:table-cell>
								<table:table-cell table:style-name="ce1"><text:p><xsl:value-of select="xaf:custSupGrpID"/></text:p></table:table-cell>
								<table:table-cell table:style-name="ce1"><text:p><xsl:value-of select="xaf:custCreditLimit"/></text:p></table:table-cell>
								<table:table-cell table:style-name="ce1"><text:p><xsl:value-of select="xaf:supplierLimit"/></text:p></table:table-cell>
								<table:table-cell table:style-name="ce1"><text:p><xsl:value-of select="xaf:streetAddress[1]/xaf:streetname"/> </text:p></table:table-cell>
								<table:table-cell table:style-name="ce1"><text:p><xsl:value-of select="xaf:streetAddress[1]/xaf:number"/> </text:p></table:table-cell>
								<table:table-cell table:style-name="ce1"><text:p><xsl:value-of select="xaf:streetAddress[1]/xaf:numberExtension"/> </text:p></table:table-cell>
								<table:table-cell table:style-name="ce1"><text:p><xsl:value-of select="xaf:streetAddress[1]/xaf:city"/> </text:p></table:table-cell>
								<table:table-cell table:style-name="ce1"><text:p><xsl:value-of select="xaf:streetAddress[1]/xaf:postalCode"/> </text:p></table:table-cell>
								<table:table-cell table:style-name="ce1"><text:p><xsl:value-of select="xaf:streetAddress[1]/xaf:country"/> </text:p></table:table-cell>
								<table:table-cell table:style-name="ce1"><text:p><xsl:value-of select="xaf:bankAccount[1]/xaf:bankAccNr"/> </text:p></table:table-cell>
								<table:table-cell table:style-name="ce1"><text:p><xsl:value-of select="xaf:bankAccount[1]/xaf:bankIdCd"/> </text:p></table:table-cell>
							</table:table-row>
						</xsl:for-each>

					</table:table>
					<!-- Einde van werkblad customerSupplier -->


					<!-- Transactions -->
					<table:table table:name="transactions">
						<table:table-header-rows>
							<table:table-row>
								<table:table-cell table:style-name="ce1"><text:p>linesCount</text:p></table:table-cell>
								<table:table-cell table:style-name="ce1"><text:p>totalDebit</text:p></table:table-cell>
								<table:table-cell table:style-name="ce1"><text:p>totalCredit</text:p></table:table-cell>
							</table:table-row>
						</table:table-header-rows>
						<xsl:for-each select="xaf:auditfile/xaf:company/xaf:transactions">
							<table:table-row>
								<table:table-cell><text:p><xsl:value-of select="xaf:linesCount"/></text:p></table:table-cell>
								<table:table-cell><text:p><xsl:value-of select="xaf:totalDebit"/></text:p></table:table-cell>
								<table:table-cell><text:p><xsl:value-of select="xaf:totalCredit"/></text:p></table:table-cell>
							</table:table-row>
						</xsl:for-each>

					</table:table>
					<!-- Einde van werkblad transactions -->


					<!-- Dagboeken -->
					<table:table table:name="journal">
						<table:table-header-rows>
							<table:table-row>
								<table:table-cell table:style-name="ce1"><text:p>jrnID</text:p></table:table-cell>
								<table:table-cell table:style-name="ce1"><text:p>desc</text:p></table:table-cell>
								<table:table-cell table:style-name="ce1"><text:p>jrnTp</text:p></table:table-cell>
								<table:table-cell table:style-name="ce1"><text:p>offsetAccID</text:p></table:table-cell>
								<table:table-cell table:style-name="ce1"><text:p>bankAccNr</text:p></table:table-cell>
							</table:table-row>
						</table:table-header-rows>
						<xsl:for-each select="xaf:auditfile/xaf:company/xaf:transactions/xaf:journal">
							<table:table-row>
								<table:table-cell><text:p><xsl:value-of select="xaf:jrnID"/></text:p></table:table-cell>
								<table:table-cell><text:p><xsl:value-of select="xaf:desc"/></text:p></table:table-cell>
								<table:table-cell><text:p><xsl:value-of select="xaf:jrnTp"/></text:p></table:table-cell>
								<table:table-cell><text:p><xsl:value-of select="xaf:offsetAccID"/></text:p></table:table-cell>
								<table:table-cell><text:p><xsl:value-of select="xaf:bankAccNr"/></text:p></table:table-cell>
							</table:table-row>
						</xsl:for-each>

					</table:table>
					<!-- Einde van werkblad journal -->


					<!-- Boekingen (boekstukken) -->
					<table:table table:name="transaction">
						<table:table-header-rows>
							<table:table-row>
								<table:table-cell table:style-name="ce1"><text:p>jrn_jrnID</text:p></table:table-cell>
								<table:table-cell table:style-name="ce1"><text:p>jrn_desc</text:p></table:table-cell>

								<table:table-cell table:style-name="ce1"><text:p>nr</text:p></table:table-cell>
								<table:table-cell table:style-name="ce1"><text:p>desc</text:p></table:table-cell>
								<table:table-cell table:style-name="ce1"><text:p>periodNumber</text:p></table:table-cell>
								<table:table-cell table:style-name="ce1"><text:p>trDt</text:p></table:table-cell>
								<table:table-cell table:style-name="ce1"><text:p>amnt</text:p></table:table-cell>
								<table:table-cell table:style-name="ce1"><text:p>bmntTp</text:p></table:table-cell>
								<table:table-cell table:style-name="ce1"><text:p>sourceID</text:p></table:table-cell>
								<table:table-cell table:style-name="ce1"><text:p>userID</text:p></table:table-cell>
							</table:table-row>
						</table:table-header-rows>
						<xsl:for-each select="xaf:auditfile/xaf:company/xaf:transactions/xaf:journal/xaf:transaction">
							<table:table-row>
								<table:table-cell><text:p><xsl:value-of select="../xaf:jrnID"/></text:p></table:table-cell>
								<table:table-cell><text:p><xsl:value-of select="../xaf:desc"/></text:p></table:table-cell>

								<table:table-cell><text:p><xsl:value-of select="xaf:nr"/></text:p></table:table-cell>
								<table:table-cell><text:p><xsl:value-of select="xaf:desc"/></text:p></table:table-cell>
								<table:table-cell><text:p><xsl:value-of select="xaf:periodNumber"/></text:p></table:table-cell>
								<table:table-cell><text:p><xsl:value-of select="xaf:trDt"/></text:p></table:table-cell>
								<table:table-cell><text:p><xsl:value-of select="xaf:amnt"/></text:p></table:table-cell>
								<table:table-cell><text:p><xsl:value-of select="xaf:amntTp"/></text:p></table:table-cell>
								<table:table-cell><text:p><xsl:value-of select="xaf:sourceID"/></text:p></table:table-cell>
								<table:table-cell><text:p><xsl:value-of select="xaf:userID"/></text:p></table:table-cell>
							</table:table-row>
						</xsl:for-each>

					</table:table>
					<!-- Einde van werkblad transaction -->


					<!-- trLine -->
					<table:table table:name="trLine">
						<table:table-header-rows>
							<table:table-row>
								<table:table-cell table:style-name="ce1"><text:p>jrn_jrnID</text:p></table:table-cell>
								<table:table-cell table:style-name="ce1"><text:p>jrn_desc</text:p></table:table-cell>

								<table:table-cell table:style-name="ce1"><text:p>trn_nr</text:p></table:table-cell>
								<table:table-cell table:style-name="ce1"><text:p>trn_desc</text:p></table:table-cell>
								<table:table-cell table:style-name="ce1"><text:p>trn_periodNumber</text:p></table:table-cell>
								<table:table-cell table:style-name="ce1"><text:p>trn_trDt</text:p></table:table-cell>
								<table:table-cell table:style-name="ce1"><text:p>trn_sourceID</text:p></table:table-cell>

								<table:table-cell table:style-name="ce1"><text:p>nr</text:p></table:table-cell>
								<table:table-cell table:style-name="ce1"><text:p>accID</text:p></table:table-cell>
								<table:table-cell table:style-name="ce1"><text:p>docRef</text:p></table:table-cell>
								<table:table-cell table:style-name="ce1"><text:p>effDate</text:p></table:table-cell>
								<table:table-cell table:style-name="ce1"><text:p>desc</text:p></table:table-cell>
								<table:table-cell table:style-name="ce1"><text:p>amnt</text:p></table:table-cell>
								<table:table-cell table:style-name="ce1"><text:p>amntTp</text:p></table:table-cell>

								<table:table-cell table:style-name="ce1"><text:p>recRef</text:p></table:table-cell>
								<table:table-cell table:style-name="ce1"><text:p>matchKeyID</text:p></table:table-cell>
								<table:table-cell table:style-name="ce1"><text:p>custSupID</text:p></table:table-cell>
								<table:table-cell table:style-name="ce1"><text:p>invRef</text:p></table:table-cell>
								<table:table-cell table:style-name="ce1"><text:p>orderRef</text:p></table:table-cell>

								<table:table-cell table:style-name="ce1"><text:p>receivingDocID</text:p></table:table-cell>
								<table:table-cell table:style-name="ce1"><text:p>shipDocRef</text:p></table:table-cell>

								<table:table-cell table:style-name="ce1"><text:p>costID</text:p></table:table-cell>
								<table:table-cell table:style-name="ce1"><text:p>prodID</text:p></table:table-cell>
								<table:table-cell table:style-name="ce1"><text:p>projID</text:p></table:table-cell>
								<table:table-cell table:style-name="ce1"><text:p>artGrpID</text:p></table:table-cell>
								<table:table-cell table:style-name="ce1"><text:p>workCostRefID</text:p></table:table-cell>
								<table:table-cell table:style-name="ce1"><text:p>qntityID</text:p></table:table-cell>
								<table:table-cell table:style-name="ce1"><text:p>qntity</text:p></table:table-cell>

								<table:table-cell table:style-name="ce1"><text:p>bankAccNr</text:p></table:table-cell>
								<table:table-cell table:style-name="ce1"><text:p>bankIdCd</text:p></table:table-cell>

								<table:table-cell table:style-name="ce1"><text:p>vat_vatID</text:p></table:table-cell>
								<table:table-cell table:style-name="ce1"><text:p>vat_vatPerc</text:p></table:table-cell>
								<table:table-cell table:style-name="ce1"><text:p>vat_vatAmnt</text:p></table:table-cell>
								<table:table-cell table:style-name="ce1"><text:p>vat_vatAmntTp</text:p></table:table-cell>

								<table:table-cell table:style-name="ce1"><text:p>curr_curCode</text:p></table:table-cell>
								<table:table-cell table:style-name="ce1"><text:p>curr_currAmnt</text:p></table:table-cell>

							</table:table-row>
						</table:table-header-rows>
						<xsl:for-each select="xaf:auditfile/xaf:company/xaf:transactions/xaf:journal/xaf:transaction/xaf:trLine">
							<table:table-row>
								<table:table-cell><text:p><xsl:value-of select="../../xaf:jrnID"/></text:p></table:table-cell>
								<table:table-cell><text:p><xsl:value-of select="../../xaf:desc"/></text:p></table:table-cell>

								<table:table-cell><text:p><xsl:value-of select="../xaf:nr"/></text:p></table:table-cell>
								<table:table-cell><text:p><xsl:value-of select="../xaf:desc"/></text:p></table:table-cell>
								<table:table-cell><text:p><xsl:value-of select="../xaf:periodNumber"/></text:p></table:table-cell>
								<table:table-cell><text:p><xsl:value-of select="../xaf:trDt"/></text:p></table:table-cell>
								<table:table-cell><text:p><xsl:value-of select="../xaf:sourceID"/></text:p></table:table-cell>

								<table:table-cell><text:p><xsl:value-of select="xaf:nr"/></text:p></table:table-cell>
								<table:table-cell><text:p><xsl:value-of select="xaf:accID"/></text:p></table:table-cell>
								<table:table-cell><text:p><xsl:value-of select="xaf:docRef"/></text:p></table:table-cell>
								<table:table-cell><text:p><xsl:value-of select="xaf:effDate"/></text:p></table:table-cell>
								<table:table-cell><text:p><xsl:value-of select="xaf:desc"/></text:p></table:table-cell>
								<table:table-cell><text:p><xsl:value-of select="xaf:amnt"/></text:p></table:table-cell>
								<table:table-cell><text:p><xsl:value-of select="xaf:amntTp"/></text:p></table:table-cell>

								<table:table-cell><text:p><xsl:value-of select="xaf:recRef"/></text:p></table:table-cell>
								<table:table-cell><text:p><xsl:value-of select="xaf:matchKeyID"/></text:p></table:table-cell>
								<table:table-cell><text:p><xsl:value-of select="xaf:custSupID"/></text:p></table:table-cell>
								<table:table-cell><text:p><xsl:value-of select="xaf:invRef"/></text:p></table:table-cell>
								<table:table-cell><text:p><xsl:value-of select="xaf:orderRef"/></text:p></table:table-cell>

								<table:table-cell><text:p><xsl:value-of select="xaf:receivingDocID"/></text:p></table:table-cell>
								<table:table-cell><text:p><xsl:value-of select="xaf:shipDocRef"/></text:p></table:table-cell>

								<table:table-cell><text:p><xsl:value-of select="xaf:costID"/></text:p></table:table-cell>
								<table:table-cell><text:p><xsl:value-of select="xaf:prodID"/></text:p></table:table-cell>
								<table:table-cell><text:p><xsl:value-of select="xaf:projID"/></text:p></table:table-cell>
								<table:table-cell><text:p><xsl:value-of select="xaf:artGrpID"/></text:p></table:table-cell>
								<table:table-cell><text:p><xsl:value-of select="xaf:workCostRefID"/></text:p></table:table-cell>
								<table:table-cell><text:p><xsl:value-of select="xaf:qntityID"/></text:p></table:table-cell>
								<table:table-cell><text:p><xsl:value-of select="xaf:qntity"/></text:p></table:table-cell>

								<table:table-cell><text:p><xsl:value-of select="xaf:bankAccNr"/></text:p></table:table-cell>
								<table:table-cell><text:p><xsl:value-of select="xaf:bankIdCd"/></text:p></table:table-cell>

								<table:table-cell><text:p><xsl:value-of select="xaf:vat[1]/xaf:vatID"/></text:p></table:table-cell>
								<table:table-cell><text:p><xsl:value-of select="xaf:vat[1]/xaf:vatPerc"/></text:p></table:table-cell>
								<table:table-cell><text:p><xsl:value-of select="xaf:vat[1]/xaf:vatAmnt"/></text:p></table:table-cell>
								<table:table-cell><text:p><xsl:value-of select="xaf:vat[1]/xaf:vatAmntTp"/></text:p></table:table-cell>

								<table:table-cell><text:p><xsl:value-of select="xaf:currency[1]/xaf:curCode"/></text:p></table:table-cell>
								<table:table-cell><text:p><xsl:value-of select="xaf:currency[1]/xaf:curAmnt"/></text:p></table:table-cell>

							</table:table-row>
						</xsl:for-each>

					</table:table>
					<!-- Einde van werkblad Company -->









				</office:spreadsheet>
			</office:body>
		</office:document-content>

		<!-- einde Office document -->
	</xsl:template>
</xsl:stylesheet>


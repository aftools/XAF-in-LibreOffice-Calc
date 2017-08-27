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

   <office:body>
	<office:spreadsheet>
	 <table:table name="Header">

	  <table:table-row>
	   <table:table-cell><text:p>Header</text:p></table:table-cell>
	  </table:table-row>

    <xsl:for-each select="xaf:auditfile/xaf:header">
		<table:table-row>
		   <table:table-cell><text:p>fiscalYear</text:p></table:table-cell>
		   <table:table-cell><text:p><xsl:value-of select="xaf:fiscalYear"/></text:p></table:table-cell>
		</table:table-row>
   
		<table:table-row>
		   <table:table-cell><text:p>startDate</text:p></table:table-cell>
		   <table:table-cell><text:p><xsl:value-of select="xaf:startDate"/></text:p></table:table-cell>
		</table:table-row>
<table:table-row>
		   <table:table-cell><text:p>endDate</text:p></table:table-cell>
		   <table:table-cell><text:p><xsl:value-of select="xaf:endDate"/></text:p></table:table-cell>
		</table:table-row>
<table:table-row>
		   <table:table-cell><text:p>curCode</text:p></table:table-cell>
		   <table:table-cell><text:p><xsl:value-of select="xaf:curCode"/></text:p></table:table-cell>
		</table:table-row>
<table:table-row>
		   <table:table-cell><text:p>dateCreated</text:p></table:table-cell>
		   <table:table-cell><text:p><xsl:value-of select="xaf:dateCreated"/></text:p></table:table-cell>
		</table:table-row>
<table:table-row>
		   <table:table-cell><text:p>softwareDesc</text:p></table:table-cell>
		   <table:table-cell><text:p><xsl:value-of select="xaf:softwareDesc"/></text:p></table:table-cell>
		</table:table-row>
<table:table-row>
		   <table:table-cell><text:p>softwareVersion</text:p></table:table-cell>
		   <table:table-cell><text:p><xsl:value-of select="xaf:softwareVersion"/></text:p></table:table-cell>
		</table:table-row>
    </xsl:for-each>

	</table:table>
	<!-- Einde van werkblad Header -->

	<table:table name="Company">
	
	<xsl:for-each select="xaf:auditfile/xaf:company">

		<table:table-row>
		   <table:table-cell><text:p>companyIdent</text:p></table:table-cell>
		   <table:table-cell><text:p><xsl:value-of select="xaf:companyIdent"/></text:p></table:table-cell>
		</table:table-row>
		<table:table-row>
		   <table:table-cell><text:p>companyName</text:p></table:table-cell>
		   <table:table-cell><text:p><xsl:value-of select="xaf:companyName"/></text:p></table:table-cell>
		</table:table-row>
		<table:table-row>
		   <table:table-cell><text:p>taxRegistrationCountry</text:p></table:table-cell>
		   <table:table-cell><text:p><xsl:value-of select="xaf:taxRegistrationCountry"/></text:p></table:table-cell>
		</table:table-row>
		<table:table-row>
		   <table:table-cell><text:p>taxRegIdent</text:p></table:table-cell>
		   <table:table-cell><text:p><xsl:value-of select="xaf:taxRegIdent"/></text:p></table:table-cell>
		</table:table-row>
		<table:table-row>
		   <table:table-cell><text:p>strAddr_streetName</text:p></table:table-cell>
		   <table:table-cell><text:p><xsl:value-of select="xaf:streetAddress[1]/xaf:streetName"/></text:p></table:table-cell>
		</table:table-row>
		<table:table-row>
		   <table:table-cell><text:p>strAddr_number</text:p></table:table-cell>
		   <table:table-cell><text:p><xsl:value-of select="xaf:streetAddress[1]/xaf:number"/></text:p></table:table-cell>
		</table:table-row>
		<table:table-row>
		   <table:table-cell><text:p>strAddr_numberExtension</text:p></table:table-cell>
		   <table:table-cell><text:p><xsl:value-of select="xaf:streetAddress[1]/xaf:numberExtenstion"/></text:p></table:table-cell>
		</table:table-row>
		<table:table-row>
		   <table:table-cell><text:p>strAddr_city</text:p></table:table-cell>
		   <table:table-cell><text:p><xsl:value-of select="xaf:streetAddress[1]/xaf:city"/></text:p></table:table-cell>
		</table:table-row>
		<table:table-row>
		   <table:table-cell><text:p>strAddr_postalCode</text:p></table:table-cell>
		   <table:table-cell><text:p><xsl:value-of select="xaf:streetAddress[1]/xaf:postalCode"/></text:p></table:table-cell>
		</table:table-row>
		<table:table-row>
		   <table:table-cell><text:p>strAddr_country</text:p></table:table-cell>
		   <table:table-cell><text:p><xsl:value-of select="xaf:streetAddress[1]/xaf:country"/></text:p></table:table-cell>
		</table:table-row>

	</xsl:for-each>

	
	</table:table>
	<!-- Einde van werkblad Company -->


	<table:table name="ledgerAccount">
		<table:table-row>
		   <table:table-cell><text:p>accountID</text:p></table:table-cell>
		   <table:table-cell><text:p>accountType</text:p></table:table-cell>
		   <table:table-cell><text:p>leadCode</text:p></table:table-cell>
		   <table:table-cell><text:p>leadDescription</text:p></table:table-cell>
		   <table:table-cell><text:p>leadReference</text:p></table:table-cell>
		   <table:table-cell><text:p>leadCrossRef</text:p></table:table-cell>
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
	
	<table:table name="trLine">
	
		<table:table-row>
		   <table:table-cell><text:p>jrn_jrnID</text:p></table:table-cell>
		   <table:table-cell><text:p>jrn_desc</text:p></table:table-cell>

		   <table:table-cell><text:p>trn_nr</text:p></table:table-cell>
		   <table:table-cell><text:p>trn_desc</text:p></table:table-cell>
		   <table:table-cell><text:p>trn_periodNumber</text:p></table:table-cell>
		   <table:table-cell><text:p>trn_trDt</text:p></table:table-cell>
		   <table:table-cell><text:p>trn_sourceID</text:p></table:table-cell>

		   <table:table-cell><text:p>nr</text:p></table:table-cell>
		   <table:table-cell><text:p>accID</text:p></table:table-cell>
		   <table:table-cell><text:p>docRef</text:p></table:table-cell>
		   <table:table-cell><text:p>effDate</text:p></table:table-cell>
		   <table:table-cell><text:p>desc</text:p></table:table-cell>
		   <table:table-cell><text:p>amnt</text:p></table:table-cell>
		   <table:table-cell><text:p>amntTp</text:p></table:table-cell>

		   <table:table-cell><text:p>recRef</text:p></table:table-cell>
		   <table:table-cell><text:p>matchKeyID</text:p></table:table-cell>
		   <table:table-cell><text:p>custSupID</text:p></table:table-cell>
		   <table:table-cell><text:p>invRef</text:p></table:table-cell>
		   <table:table-cell><text:p>orderRef</text:p></table:table-cell>
		   
		   <table:table-cell><text:p>receivingDocID</text:p></table:table-cell>
		   <table:table-cell><text:p>shipDocRef</text:p></table:table-cell>
		   
		   <table:table-cell><text:p>costID</text:p></table:table-cell>
		   <table:table-cell><text:p>prodID</text:p></table:table-cell>
		   <table:table-cell><text:p>projID</text:p></table:table-cell>
		   <table:table-cell><text:p>artGrpID</text:p></table:table-cell>
		   <table:table-cell><text:p>workCostRefID</text:p></table:table-cell>
		   <table:table-cell><text:p>qntityID</text:p></table:table-cell>
		   <table:table-cell><text:p>qntity</text:p></table:table-cell>

		   <table:table-cell><text:p>bankAccNr</text:p></table:table-cell>
		   <table:table-cell><text:p>bankIdCd</text:p></table:table-cell>

		   <table:table-cell><text:p>vat_vatID</text:p></table:table-cell>
		   <table:table-cell><text:p>vat_vatPerc</text:p></table:table-cell>
		   <table:table-cell><text:p>vat_vatAmnt</text:p></table:table-cell>
		   <table:table-cell><text:p>vat_vatAmntTp</text:p></table:table-cell>

		   <table:table-cell><text:p>curr_curCode</text:p></table:table-cell>
		   <table:table-cell><text:p>curr_currAmnt</text:p></table:table-cell>

	    </table:table-row>

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


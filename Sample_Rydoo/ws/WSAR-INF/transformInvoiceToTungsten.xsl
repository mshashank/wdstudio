<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:wd="urn:com.workday.report/Customer_Invoice_Printing_Report_-_Custom_Report_Design"
    exclude-result-prefixes="xs"
    version="2.0">
    <xsl:output method="xml" indent="yes"></xsl:output>
    <xsl:template match="wd:Report_Data">
        <xsl:text>&#xA;</xsl:text>
        <xsl:for-each select="wd:Report_Entry">
            <xsl:element name="Rechnung">
                <xsl:element name="Seitenkopfzeile">
                    <xsl:element name="Rechnungsadresse">
                        <xsl:value-of select="normalize-space(wd:Companies/wd:CF_INT_CT_Address_Postal_City_Country)"/>
                    </xsl:element>
                    <xsl:element name="Rechnungstitel">
                        <xsl:text>R E C H N U N G</xsl:text>
                    </xsl:element>
                    <xsl:element name="Rechnungs">
                        <xsl:value-of select="normalize-space(wd:Companies/wd:CF_INT_CT_Address_Postal_City_Country)"/>
                    </xsl:element>
                    <xsl:element name="KundenNr">
                        <xsl:value-of select="normalize-space(wd:Customer_Heading/wd:Customer_ID)"/>
                    </xsl:element>
                    <xsl:element name="Datum">
                        <xsl:value-of select="normalize-space(format-date(wd:Invoice_Date,'[D01]-[M01]-[Y0001]'))"/>
                    </xsl:element>               
                </xsl:element>
                <xsl:element name="RechnungKopfzeile">
                    <xsl:element name="Aktion">
                        <xsl:value-of select="normalize-space(wd:Customer_Heading/wd:Customer_ID)"/>
                    </xsl:element>
                    <xsl:element name="KuNr">
                        <xsl:text>R E C H N U N G</xsl:text>
                    </xsl:element>
                    <xsl:element name="ProNr">
                        <xsl:value-of select="normalize-space(wd:Companies/wd:CF_INT_CT_Address_Postal_City_Country)"/>
                    </xsl:element>
                    <xsl:element name="JobNr">
                        <xsl:value-of select="normalize-space(wd:Customer_Heading/wd:Customer_ID)"/>
                    </xsl:element>
                    <xsl:element name="Produktname">
                        <xsl:value-of select="normalize-space(format-date(wd:Invoice_Date,'[D01]-[M01]-[Y0001]'))"/>
                    </xsl:element>
                    <xsl:element name="Jobkommentar">
                        <xsl:value-of select="normalize-space(wd:Companies/wd:CF_INT_CT_Address_Postal_City_Country)"/>
                    </xsl:element>
                    <xsl:element name="DruckaufAREJOB">
                        <xsl:text>R E C H N U N G</xsl:text>
                    </xsl:element>
                    <xsl:element name="AndereInfo">
                        <xsl:value-of select="normalize-space(wd:Companies/wd:CF_INT_CT_Address_Postal_City_Country)"/>
                    </xsl:element>
                    <xsl:element name="Standardtext">
                        <xsl:value-of select="normalize-space(wd:Customer_Heading/wd:Customer_ID)"/>
                    </xsl:element>
                    <xsl:element name="Standardtext">
                        <xsl:value-of select="concat(wd:CF_INT_EE_Remit-To_Bank_Name,'&#xA;',wd:CF_INT_EE_Remit-To_IBAN,'&#xA;',wd:CF_INT_EE_Remit-To_BIC)"/>
                    </xsl:element>
                    <xsl:element name="Standardtext">
                        <xsl:value-of select="wd:Customer_Heading/Customer_Bill_To_Addressee_Name"/>
                    </xsl:element>
                </xsl:element>
                <xsl:element name="Abschnitt2">
                    <xsl:element name="Leistungsartbezeichnung">
                        <xsl:value-of select="normalize-space(wd:Companies/wd:CF_INT_CT_Address_Postal_City_Country)"/>
                    </xsl:element>
                    <xsl:element name="Provision">
                        <xsl:text>R E C H N U N G</xsl:text>
                    </xsl:element>
                    <xsl:element name="Netto">
                        <xsl:value-of select="normalize-space(wd:Companies/wd:CF_INT_CT_Address_Postal_City_Country)"/>
                    </xsl:element>
                </xsl:element>
                <xsl:element name="Rechnungssummen">
                    <xsl:element name="Nettobetrag">
                        <xsl:value-of select="normalize-space(wd:Companies/wd:CF_INT_CT_Address_Postal_City_Country)"/>
                    </xsl:element>
                    <xsl:element name="N10HandlingFee">
                        <xsl:text>R E C H N U N G</xsl:text>
                    </xsl:element>
                    <xsl:element name="Zwischensumme">
                        <xsl:value-of select="normalize-space(wd:Companies/wd:CF_INT_CT_Address_Postal_City_Country)"/>
                    </xsl:element>
                    <xsl:element name="zzgl19Mehrwertsteuer">
                        <xsl:value-of select="normalize-space(wd:Companies/wd:CF_INT_CT_Address_Postal_City_Country)"/>
                    </xsl:element>
                    <xsl:element name="VAT">
                        <xsl:text>R E C H N U N G</xsl:text>
                    </xsl:element>
                    <xsl:element name="EndsummeEUR">
                        <xsl:value-of select="normalize-space(wd:Companies/wd:CF_INT_CT_Address_Postal_City_Country)"/>
                    </xsl:element>
                </xsl:element>
                <xsl:element name="RechnungFuzeile">
                    <xsl:element name="Standardtext">
                        <xsl:value-of select="normalize-space(wd:Companies/wd:CF_INT_CT_Address_Postal_City_Country)"/>
                    </xsl:element>
                    <xsl:element name="Faelldat">
                        <xsl:text>R E C H N U N G</xsl:text>
                    </xsl:element>
                    <xsl:element name="USTID">
                        <xsl:value-of select="normalize-space(wd:CF_INT_LRV_Customer_UST_ID_Code)"/>
                    </xsl:element>
                </xsl:element>
            </xsl:element>            
        </xsl:for-each>
        
    </xsl:template>
</xsl:stylesheet>
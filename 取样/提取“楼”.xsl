<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    <xsl:output indent="yes" method="xml"/>
    <xsl:template match="/">
        <kml>
            <Document>
                <name><xsl:value-of select="//Document/name"/>楼</name>
                <xsl:copy-of select="//Placemark[contains(name,'楼')]"></xsl:copy-of>
            </Document>
        </kml>
    </xsl:template>
</xsl:stylesheet>
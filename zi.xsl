<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0" xmlns="http://www.opengis.net/kml/2.2">
    <xsl:output indent="yes" method="xml"/>
    <xsl:template match="/">
        <kml>
            <Document>
                <xsl:apply-templates select="//li[div/a/ends-with(.,'孜') and not(contains(.,'郢'))]"/>
                <xsl:apply-templates select="//li[div/a/ends-with(.,'孜村') and not(contains(.,'郢'))]"/>
                <xsl:apply-templates select="//li[div/a/ends-with(.,'孜镇') and not(contains(.,'郢'))]"/>
            </Document>
        </kml>
    </xsl:template>
    <xsl:template match="li">
        <Placemark>
            <xsl:apply-templates select="div"/>
        </Placemark>
    </xsl:template>
    <xsl:template match="div">
        <name><xsl:value-of select="a/@title"/></name>
        <Point>
            <coordinates>
                <xsl:value-of select="p/geo"/><xsl:text>,0</xsl:text>
            </coordinates>
        </Point>
    </xsl:template>
</xsl:stylesheet>
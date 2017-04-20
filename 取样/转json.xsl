<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    <xsl:output indent="yes" method="xml"/>
    <xsl:template match="/">
        <xsl:apply-templates select="//Placemark"/>
        <xsl:apply-templates select="//Placemark" mode="json"/>
    </xsl:template>
    
    <xsl:template match="Placemark">
        <xsl:text>"</xsl:text><xsl:value-of select="name"/><xsl:text>":[</xsl:text><xsl:value-of select="Point/coordinates"/><xsl:text>],</xsl:text>
    </xsl:template>
    
    <xsl:template match="Placemark" mode="json">
        <xsl:text>{name:"</xsl:text><xsl:value-of select="name"/><xsl:text>", value: 1},</xsl:text>
    </xsl:template>
</xsl:stylesheet>
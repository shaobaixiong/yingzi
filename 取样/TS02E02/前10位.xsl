<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    <xsl:output indent="yes" method="xml"/>
    <xsl:template match="/">
        <xsl:variable name="sum" select="count(//Placemark/name)"/>
        <places sum="{$sum}">
            <place type="zhuang"><xsl:value-of select="count(//Placemark/name[contains(.,'庄')]) div $sum * 100"/></place>
            <place type="lou"><xsl:value-of select="count(//Placemark/name[contains(.,'楼')]) div $sum * 100"/></place>
            <place type="yuan"><xsl:value-of select="count(//Placemark/name[contains(.,'园')]) div $sum * 100"/></place>
            <place type="miao"><xsl:value-of select="count(//Placemark/name[contains(.,'庙')]) div $sum * 100"/></place>
            <place type="zhai"><xsl:value-of select="count(//Placemark/name[contains(.,'寨')]) div $sum * 100"/></place>
            <place type="qiao"><xsl:value-of select="count(//Placemark/name[contains(.,'桥')]) div $sum * 100"/></place>
            <place type="wa"><xsl:value-of select="count(//Placemark/name[contains(.,'洼')]) div $sum * 100"/></place>
            <place type="ying"><xsl:value-of select="count(//Placemark/name[contains(.,'营')]) div $sum * 100"/></place>
            <place type="ji"><xsl:value-of select="count(//Placemark/name[contains(.,'集')]) div $sum * 100"/></place>
            <place type="ge"><xsl:value-of select="count(//Placemark/name[contains(.,'阁')]) div $sum * 100"/></place>
            <place type="ge"><xsl:value-of select="count(//Placemark/name[contains(.,'阁')]) div $sum * 100"/></place>
        </places>
    </xsl:template>
    
</xsl:stylesheet>
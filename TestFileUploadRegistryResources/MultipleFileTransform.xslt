<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="1.0">
    <xsl:output omit-xml-declaration="yes"/>
    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>
    <xsl:template match="mediate">
        <root xmlns="">
            <xsl:apply-templates select="@*|node()"/>
        </root>
    </xsl:template>
    <xsl:template match="file">
        <file xmlns="http://org.apache.axis2/xsd/form-data">
            <xsl:apply-templates select="@*|node()"/>
        </file>
    </xsl:template>
</xsl:stylesheet>
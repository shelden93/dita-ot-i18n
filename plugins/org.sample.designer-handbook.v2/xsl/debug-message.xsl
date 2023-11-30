<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="2.0">

    <xsl:import href="plugin:org.sample.base:xsl/debug-message.xsl"/>

    <xsl:template match="*" mode="transtype-strings">
        <xsl:message>
            <xsl:text>designer-handbook-extension: </xsl:text>
            <xsl:call-template name="getVariable">
                <xsl:with-param name="id" select="'designer-handbook-extension'"/>
            </xsl:call-template>
        </xsl:message>
    </xsl:template>
</xsl:stylesheet>
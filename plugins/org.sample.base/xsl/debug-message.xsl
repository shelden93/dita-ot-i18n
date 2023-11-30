<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="2.0">

    <xsl:import href="plugin:org.dita.base:xsl/common/output-message.xsl"/>
    <xsl:import href="plugin:org.dita.base:xsl/common/dita-utilities.xsl"/>

    <!-- Deprecated since 2.3 -->
    <xsl:variable name="msgprefix">DOTX</xsl:variable>

    <xsl:param name="transtype"/>

    <xsl:template match="/">
        <xsl:message select="'=================================================='"/>
        <xsl:message select="concat('TRANSTYPE: ', $transtype)"/>
        <xsl:message select="concat('LANG: ', $DEFAULTLANG)"/>
        <xsl:message select="'=============================='"/>

        <xsl:message>
            <xsl:text>task_context: </xsl:text>
            <xsl:call-template name="getVariable">
                <xsl:with-param name="id" select="'task_context'"/>
            </xsl:call-template>
        </xsl:message>

        <xsl:message>
            <xsl:text>first-topic-title: </xsl:text>
            <xsl:call-template name="getVariable">
                <xsl:with-param name="id" select="'first-topic-title'"/>
            </xsl:call-template>
        </xsl:message>

        <xsl:message>
            <xsl:text>image-prefix: </xsl:text>
            <xsl:call-template name="getVariable">
                <xsl:with-param name="id" select="'image-prefix'"/>
            </xsl:call-template>
        </xsl:message>

        <xsl:apply-templates mode="transtype-strings"/>

        <xsl:message select="'=================================================='"/>
    </xsl:template>
</xsl:stylesheet>
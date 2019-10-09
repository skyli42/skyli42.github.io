<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <h2>The Ruin</h2>
        <xsl:apply-templates/>                
    </xsl:template>

    <xsl:template match="l">
        <p>
            <a href="#" class="line">
                <xsl:apply-templates/>
            </a>
        </p>
    </xsl:template>

    <xsl:template match="structure">
        <span class="structure">
            <xsl:apply-templates/>
        </span>
    </xsl:template>

    <xsl:template match="glory">
        <span class="glory">
            <xsl:value-of select="."/>
        </span>
    </xsl:template>

    <xsl:template match="normal-text">
        <span href="#" class="normal-text">
            <xsl:value-of select="."/>
        </span>
    </xsl:template>


    <xsl:template match="decay">
        <span class="decay">
            <xsl:value-of select="."/>
        </span>
    </xsl:template>
</xsl:stylesheet>
<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html>
            <head>
                <style>
                    .container { margin-left: 200px; margin-right: 200px;}p { color: white; }.line {background-color: black;color: black;text-decoration: none;display: inline-block;}#poem {text-align: center;}.normal-text {color: inherit;}.line:hover {color: white;}.normal-text:hover {color: white;}.structure {color: red;}.structure:hover {color: red;}.glory {color: gold;}.glory:hover {color: gold;}.decay {color: green;}.decay:hover {color: green;}
                </style>
            </head>
            <body>
                <div class="container">
                    <div id="poem">
                        <h2>The Ruin</h2>
                        <xsl:apply-templates/>
                    </div>
                </div>
            </body>
        </html>
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
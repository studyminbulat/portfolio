<xsl:stylesheet version="1.0" id="sheet" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="xsl:stylesheet"/>
    <xsl:template match="/">

        <html>
            <body>
                <xsl:apply-templates/>
            </body>
        </html>

    </xsl:template>

    <xsl:template match="эллипс">
        <xsl:variable name="id" select="@id"/>
        <xsl:variable name="fill" select="@заливка"/>
        <xsl:variable name="stroke" select="@ободок"/>
        <xsl:variable name="stroke-width" select="@ширина-ободка"/>
        <xsl:variable name="cx" select="@cx"/>
        <xsl:variable name="rx" select="@rx"/>
        <xsl:variable name="cy" select="@cy"/>
        <xsl:variable name="ry" select="@ry"/>
        <ellipse
                id="{$id}"
                fill="{$fill}"
                stroke="{$stroke}"
                stroke-width="{$stroke-width}"
                cx="{$cx}" cy="{$cy}"
                rx="{$rx}" ry="{$ry}"
        >
            <xsl:value-of select="@имя"/>
        </ellipse>
    </xsl:template>

    <xsl:template match="root">
        <xsl:variable name="width" select="/root/графика/@ширина"/>
        <xsl:variable name="height" select="/root/графика/@высота"/>
        <svg   width="{$width}" height="{$height}">
            <xsl:apply-templates/>
        </svg>
    </xsl:template>
    <xsl:template match="графика">
        <g>
            <xsl:apply-templates/>
        </g>
    </xsl:template>

</xsl:stylesheet>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
	<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes" omit-xml-declaration="yes"/>

    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>            
        </xsl:copy>
    </xsl:template>
    
	<xsl:template match="/">
        <newStatuses>
            <xsl:apply-templates select="@*|node()"/>
        </newStatuses>   
	</xsl:template>
</xsl:stylesheet>
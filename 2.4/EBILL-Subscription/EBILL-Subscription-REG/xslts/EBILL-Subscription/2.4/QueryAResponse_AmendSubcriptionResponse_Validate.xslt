<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<OriginalSubscription>
		<xsl:for-each select="/*[local-name()='queryResponse']/*[local-name()='result']/*[local-name()='records']">
		<xsl:if test="./Version/text() = 1">
			<xsl:copy-of select="."/>
		</xsl:if>
		</xsl:for-each>
		</OriginalSubscription>
	</xsl:template>
	
</xsl:stylesheet>
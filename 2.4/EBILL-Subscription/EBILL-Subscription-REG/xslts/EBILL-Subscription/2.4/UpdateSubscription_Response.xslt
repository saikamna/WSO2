<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<subscription>
              <xsl:if test="string-length(//Success)!=0">
                <subscriptionId><xsl:value-of select="//Id"/></subscriptionId>
			  </xsl:if>
           </subscription>		
	</xsl:template>
</xsl:stylesheet>
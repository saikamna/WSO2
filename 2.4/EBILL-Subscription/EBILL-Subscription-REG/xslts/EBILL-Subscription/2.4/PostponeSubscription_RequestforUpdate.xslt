<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
   <xsl:output method="xml" version="1.0" encoding="UTF-8" />
   <xsl:param name="ServiceActivationDate" />
   <xsl:template match="/queryResponse">
      <subscription>
         <xsl:if test="string-length($ServiceActivationDate)!=0.0">
            <serviceActivationDate>
               <xsl:value-of select="$ServiceActivationDate" />
            </serviceActivationDate>
         </xsl:if>
      </subscription>
   </xsl:template>
    <xsl:template match="/OriginalSubscription">
      <subscription>
         <xsl:if test="string-length($ServiceActivationDate)!=0.0">
            <serviceActivationDate>
               <xsl:value-of select="$ServiceActivationDate" />
            </serviceActivationDate>
         </xsl:if>
      </subscription>
   </xsl:template>
</xsl:stylesheet>
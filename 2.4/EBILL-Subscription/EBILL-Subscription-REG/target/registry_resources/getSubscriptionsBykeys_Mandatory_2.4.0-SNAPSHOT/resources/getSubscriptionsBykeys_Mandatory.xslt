<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:api="http://api.zuora.com/" xmlns:ns1="http://api.zuora.com/" xmlns:ns2="http://object.api.zuora.com/" xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/" version="1.0">
   <xsl:template match="/">
      <subscriptionsByKeys>
         <xsl:choose>
            <xsl:when test="string-length(//batchSize)&gt;0 and string-length(//pageNumber)&gt;0">
               <xsl:copy-of select="//*" />
            </xsl:when>
            <xsl:otherwise>
               <faultdescription>
                  <xsl:value-of select="concat('Mandatory field cannot be empty',' - ','[batchSize or pageNumber]',' , ')" />
               </faultdescription>
            </xsl:otherwise>
         </xsl:choose>
      </subscriptionsByKeys>
   </xsl:template>
</xsl:stylesheet>
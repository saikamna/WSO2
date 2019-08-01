<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
   <xsl:output method="xml" version="1.0" encoding="UTF-8" />
   <xsl:param name="subscriptionPostponeDate" />
   <xsl:param name="sourceId" />
   <xsl:param name="subscriptionId" />
   <xsl:param name="callBackurl" />
   <xsl:param name="name" />
   <xsl:param name="type" />
   <xsl:param name="status" />
   <xsl:template match="/">
      <amendSubscription>
         <xsl:if test="string-length($sourceId)!=0.0">
            <sourceId>
               <xsl:value-of select="$sourceId" />
            </sourceId>
         </xsl:if>
         <amend>
            <amendments>
               <xsl:if test="string-length($subscriptionPostponeDate)!=0.0">
                  <contractEffectiveDate>
                     <xsl:value-of select="$subscriptionPostponeDate" />
                  </contractEffectiveDate>
               </xsl:if>
               <xsl:if test="string-length($subscriptionId)!=0.0">
                  <subscriptionId>
                     <xsl:value-of select="$subscriptionId" />
                  </subscriptionId>
               </xsl:if>
               <xsl:if test="string-length($subscriptionPostponeDate)!=0.0">
                  <serviceActivationDate>
                     <xsl:value-of select="$subscriptionPostponeDate" />
                  </serviceActivationDate>
               </xsl:if>
               <xsl:if test="string-length($subscriptionPostponeDate)!=0.0">
                  <termStartDate>
                     <xsl:value-of select="$subscriptionPostponeDate" />
                  </termStartDate>
               </xsl:if>
               <xsl:if test="string-length($name)!=0.0">
                  <name>
                     <xsl:value-of select="$name" />
                  </name>
               </xsl:if>
               <xsl:if test="string-length($type)!=0.0">
                  <type>
                     <xsl:value-of select="$type" />
                  </type>
               </xsl:if>
               <xsl:if test="string-length($status)!=0.0">
                  <status>
                     <xsl:value-of select="$status" />
                  </status>
               </xsl:if>
            </amendments>
         </amend>
         <xsl:if test="string-length($callBackurl)!=0.0">
            <callbackURL>
               <xsl:value-of select="$callBackurl" />
            </callbackURL>
         </xsl:if>
      </amendSubscription>
   </xsl:template>
</xsl:stylesheet>
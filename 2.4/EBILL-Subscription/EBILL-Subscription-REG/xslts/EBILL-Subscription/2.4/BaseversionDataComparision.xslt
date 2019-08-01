<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:param name="type" />
		<xsl:param name="TermsAndConditions" />
		<xsl:param name="termType" />
		<xsl:param name="currentTerm" />
		<xsl:param name="currentTermPeriodType" />
		<xsl:param name="renewalSetting" />
		<xsl:param name="renewalTerm" />
		<xsl:param name="renewalTermPeriodType" />
		<xsl:param name="autoRenew" />
		<xsl:param name="OriginalSubscriptiontermType" />
		<xsl:param name="OriginalSubscriptionCurrentTerm" />
		<xsl:param name="OriginalSubscriptionCurrentTermPeriodType" />
		<xsl:param name="OriginalSubscriptionRenewalSetting" />
		<xsl:param name="OriginalSubscriptionRenewalTerm" />
		<xsl:param name="OriginalSubscriptionRenewalTermPeriodType" />
		<xsl:param name="OriginalSubscriptionautoRenew" />
	<xsl:template match="/">
	
		<QueryAResponseComparision>
		
			<xsl:choose>
				<xsl:when test="$type=$TermsAndConditions">
				</xsl:when>
				<xsl:otherwise>
					<faultdescription>Type did not match</faultdescription>
				</xsl:otherwise>
			</xsl:choose>
			<xsl:choose>
				<xsl:when test="$termType=$OriginalSubscriptiontermType">
				</xsl:when>
				<xsl:otherwise>
					<faultdescription>TermType did not match</faultdescription>
				</xsl:otherwise>
			</xsl:choose>
			<xsl:choose>
				<xsl:when test="$currentTerm=$OriginalSubscriptionCurrentTerm">
				</xsl:when>
				<xsl:otherwise>
					<faultdescription>currentTerm did not match</faultdescription>
				</xsl:otherwise>
			</xsl:choose>
			<xsl:choose>
				<xsl:when test="$currentTermPeriodType=$OriginalSubscriptionCurrentTermPeriodType">
				</xsl:when>
				<xsl:otherwise>
					<faultdescription>CurrentTermPeriodType did not match</faultdescription>
				</xsl:otherwise>
			</xsl:choose>
			<xsl:choose>
				<xsl:when test="$renewalSetting=$OriginalSubscriptionRenewalSetting">
				</xsl:when>
				<xsl:otherwise>
					<faultdescription>renewalSetting did not match</faultdescription>
				</xsl:otherwise>
			</xsl:choose>
			<xsl:choose>
				<xsl:when test="$renewalTerm=$OriginalSubscriptionRenewalTerm">
				</xsl:when>
				<xsl:otherwise>
					<faultdescription>renewalTerm did not match</faultdescription>
				</xsl:otherwise>
			</xsl:choose>
			<xsl:choose>
				<xsl:when test="$renewalTermPeriodType=$OriginalSubscriptionRenewalTermPeriodType">
				</xsl:when>
				<xsl:otherwise>
					<faultdescription>renewalTermPeriodType did not match</faultdescription>
				</xsl:otherwise>
			</xsl:choose>
			<xsl:choose>
				<xsl:when test="$autoRenew=$OriginalSubscriptionautoRenew">
				</xsl:when>
				<xsl:otherwise>
					<faultdescription>autoRenew did not match</faultdescription>
				</xsl:otherwise>
			</xsl:choose>
			
		</QueryAResponseComparision>
	</xsl:template>
</xsl:stylesheet>
<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/" version="1.0">

	<xsl:output method="xml" version="1.0" encoding="UTF-8" />

	<xsl:param name="faultCode" />
	<xsl:param name="subKey" />

	<xsl:template match="/">

		<xsl:if test="$faultCode='RATEPLANS_NOT_FOUND'">

			<soapenv:Fault>
				<faultcode>RATEPLANS_NOT_FOUND</faultcode>
				<faultstring>Subscription not found for the input <xsl:value-of
					select="$subKey" /></faultstring>
			</soapenv:Fault>

		</xsl:if>

		<xsl:if test="$faultCode='SUBSCRIPTION_NOT_FOUND'">
			<soapenv:Fault>
				<faultcode>SUBSCRIPTION_NOT_FOUND</faultcode>
				<faultstring>Subscription not found for the input <xsl:value-of
					select="$subKey" /></faultstring>
			</soapenv:Fault>
		</xsl:if>
		<xsl:if test="$faultCode='EMPTY_SUBSCRIPTION'">
			<soapenv:Fault>
				<faultcode>SUBSCRIPTION_KEY_NOT_FOUND</faultcode>
				<faultstring>SubscriptionKey is Mandatory </faultstring>
			</soapenv:Fault>
		</xsl:if>
	</xsl:template>
</xsl:stylesheet>
<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:v1="http://www.schneider-electric.com/ifw/common/message/SoapHeader/v1"
	xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/" xmlns:api="http://api.zuora.com/">

		<xsl:template match="getSubscriptions">

			<api:query xmlns:api="http://api.zuora.com/">
				<api:queryString>
					select Id,AccountNumber,Name,DefaultPaymentMethodId from Account
					where CrmId='<xsl:value-of select="//accountIdentifier/bFOAccount/bFOAccountId/text()" />'
				</api:queryString>
			</api:query>
	</xsl:template>
</xsl:stylesheet>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/"
	xmlns:v1="http://www.schneider-electric.com/ifw/common/message/SoapHeader/v1"
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ns2="http://object.api.zuora.com/"
	xmlns:ns1="http://api.zuora.com/">

	<xsl:output method="xml" version="1.0" encoding="UTF-8" />



	<xsl:template match="/">
		<xsl:choose>
			<xsl:when test="string-length(//ns1:queryResponse/ns1:result)!=0">

				<listAccountsResponse>
					<xsl:for-each select="//ns1:queryResponse/ns1:result/ns1:records">
						<!--0 or more repetitions: -->
						<xsl:if
							test="string-length(//ns1:queryResponse/ns1:result/ns1:records)!=0">
							<account>
								<id>
									<xsl:value-of select="./ns2:Id" />
								</id>
								<number>
									<xsl:value-of select="./ns2:AccountNumber" />
								</number>
								<name>
									<xsl:value-of select="./ns2:Name" />
								</name>
								<xsl:if test="string-length(./ns2:DefaultPaymentMethodId)!=0">
									<defaultPaymentMethodId>
										<xsl:value-of select="./ns2:DefaultPaymentMethodId" />
									</defaultPaymentMethodId>
								</xsl:if>
							</account>
						</xsl:if>
					</xsl:for-each>
				</listAccountsResponse>

			</xsl:when>
			<xsl:when test="string-length(//ns1:queryResponse/ns1:result)=0">

				<listAccountsResponse />

			</xsl:when>
		</xsl:choose>
	</xsl:template>
</xsl:stylesheet>
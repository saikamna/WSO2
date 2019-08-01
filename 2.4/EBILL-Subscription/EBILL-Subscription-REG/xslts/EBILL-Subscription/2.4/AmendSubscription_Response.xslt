<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:ns1="http://api.zuora.com/" xmlns:ns2="http://object.api.zuora.com/"
	extension-element-prefixes="ns1 ns2 xsl">
	<xsl:template match="/">
		<AmendSubscriptionResponse>
			<xsl:for-each select="//ns1:amendResponse/ns1:results">
			<subscribeResponse>
				<subscription>
                 	<xsl:if test="count(./ns1:AmendmentIds)!=0">
						<xsl:for-each select="./ns1:AmendmentIds">
							<amendmentIds>
								<xsl:value-of select="." />
							</amendmentIds>
						</xsl:for-each>
                    </xsl:if>
					<xsl:if test="count(./ns1:Errors)!=0">
						<xsl:for-each select="./ns1:Errors">
							<errorMessage>
								<errorCode>
									<xsl:value-of select="./ns1:Code" />
								</errorCode>
								<errorDescription>
									<xsl:value-of select="./ns1:Message" />
								</errorDescription>
							</errorMessage>
						</xsl:for-each>
					</xsl:if>		
					<xsl:if
						test="string-length(./ns1:GatewayResponse)!=0">
						<gatewayResponse>
							<xsl:value-of
								select="./ns1:GatewayResponse" />
						</gatewayResponse>
					</xsl:if>
					<xsl:if
						test="string-length(./ns1:GatewayResponseCode)!=0">
						<gatewayResponseCode>
							<xsl:value-of
								select="./ns1:GatewayResponseCode" />
						</gatewayResponseCode>
					</xsl:if>
					<xsl:if
						test="string-length(./ns1:InvoiceId)!=0">					
					<invoiceId>
						<xsl:value-of select="./ns1:InvoiceId" />
					</invoiceId>
					</xsl:if>				
					<xsl:if
						test="string-length(./ns1:PaymentId)!=0">
					<paymentId>
						<xsl:value-of
							select="./ns1:PaymentId" />
					</paymentId>
					</xsl:if>
					<xsl:if
						test="string-length(./ns1:PaymentTransactionNumber)!=0">
					<paymentTransactionNumber>
						<xsl:value-of
							select="./ns1:PaymentTransactionNumber" />
					</paymentTransactionNumber>
					</xsl:if>
					<xsl:if
						test="string-length(./ns1:SubscriptionId)!=0">
					<subscriptionId>
						<xsl:value-of
							select="./ns1:SubscriptionId" />
					</subscriptionId>
					</xsl:if>
					<xsl:if
						test="string-length(./ns1:Success)!=0">					
					<success>
						<xsl:value-of select="./ns1:Success" />
					</success>
					</xsl:if>
					<xsl:if
						test="string-length(./ns1:TotalDeltaMrr)!=0">					
					<totalDeltaMrr>
						<xsl:value-of select="./ns1:TotalDeltaMrr" />
					</totalDeltaMrr>
					</xsl:if>
					<xsl:if
						test="string-length(./ns1:TotalDeltaTcv)!=0">
					<totalDeltaTcv>
						<xsl:value-of select="./ns1:TotalDeltaTcv" />
					</totalDeltaTcv>
					</xsl:if>
			</subscription>
		</subscribeResponse>
		</xsl:for-each>
		</AmendSubscriptionResponse>
	</xsl:template>
</xsl:stylesheet>
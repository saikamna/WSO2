<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
	xmlns:ns1="http://api.zuora.com/" 
	xmlns:ns2="http://object.api.zuora.com/"
	xmlns:fns="http://fault.api.zuora.com"
	xmlns:v1="http://www.schneider-electric.com/ifw/common/message/SoapHeader/v1"
	exclude-result-prefixes="fns ns1 v1 ns2">
	
	<xsl:template match="/">
	<createSubscriptionsResponse>
			<xsl:for-each select="//ns1:subscribeResponse/ns1:result">
			<subscribeResponse>
				<subscription>
					<xsl:if
						test="string-length(./ns1:AccountId)!=0">
					<subscriptionOwnerAccountId>
						<xsl:value-of select="./ns1:AccountId" />
					</subscriptionOwnerAccountId>
					</xsl:if>
					<xsl:if
						test="string-length(./ns1:AccountNumber)!=0">
					<accountNumber>
						<xsl:value-of
							select="./ns1:AccountNumber" />
					</accountNumber>
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
						test="string-length(./ns1:InvoiceNumber)!=0">				
					<invoiceNumber>
						<xsl:value-of select="./ns1:InvoiceNumber" />
					</invoiceNumber>
					</xsl:if>
					
						<xsl:for-each
							select="./ns1:InvoiceResult/ns1:Invoice">
							<invoiceResult>
							<invoice>
								<xsl:if test="string-length(./ns2:Id)!=0">
									<id>
										<xsl:value-of select="./ns2:Id" />
									</id>
								</xsl:if>
								<xsl:if test="string-length(./ns2:InvoiceNumber)!=0">
									<number>
										<xsl:value-of select="./ns2:InvoiceNumber" />
									</number>
								</xsl:if>
							</invoice>
							</invoiceResult>
						</xsl:for-each>
					
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
						test="string-length(./ns1:SubscriptionNumber)!=0">
					<subscriptionNumber>
						<xsl:value-of
							select="./ns1:SubscriptionNumber" />
					</subscriptionNumber>
					</xsl:if>
					<xsl:if
						test="string-length(./ns1:Success)!=0">					
					<success>
						<xsl:value-of select="./ns1:Success" />
					</success>
					</xsl:if>
					<xsl:if
						test="string-length(./ns1:TotalMrr)!=0">					
					<totalMRR>
						<xsl:value-of select="./ns1:TotalMrr" />
					</totalMRR>
					</xsl:if>
					<xsl:if
						test="string-length(./ns1:TotalTcv)!=0">
					<totalTCV>
						<xsl:value-of select="./ns1:TotalTcv" />
					</totalTCV>
					</xsl:if>
			</subscription>
		</subscribeResponse>
		</xsl:for-each>
		</createSubscriptionsResponse>
	</xsl:template>
</xsl:stylesheet>
<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:api="http://api.zuora.com/" xmlns:obj="http://object.api.zuora.com/"
	xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/"
	version="1.0">
	<xsl:output method="xml" version="1.0" encoding="UTF-8" />
	<xsl:template match="/">
		<api:subscribe>
			<xsl:for-each select="//previewSubscriptionCreation/subscribe">
				<api:subscribes>
					<api:Account>
						<xsl:if test="count(./subscriptionOwnerAccountId)!=0">
							<obj:Id>
								<xsl:value-of select="./subscriptionOwnerAccountId" />
							</obj:Id>
						</xsl:if>
					</api:Account>

					<api:PreviewOptions>
						<api:EnablePreviewMode>true</api:EnablePreviewMode>
						<xsl:if test="count(./previewOptions/numberOfPeriods)!=0">
							<api:NumberOfPeriods>
								<xsl:value-of select="./previewOptions/numberOfPeriods" />
							</api:NumberOfPeriods>
						</xsl:if>
						<xsl:if test="count(./previewOptions/previewThroughTermEnd)!=0">
							<api:PreviewThroughTermEnd>
								<xsl:value-of select="./previewOptions/previewThroughTermEnd" />
							</api:PreviewThroughTermEnd>
						</xsl:if>
						<xsl:if test="count(./previewOptions/previewType)!=0">
							<api:PreviewType>
								<xsl:value-of select="./previewOptions/previewType" />
							</api:PreviewType>
						</xsl:if>
					</api:PreviewOptions>

					<api:SubscribeOptions>
						<xsl:if test="count(./subscribeOptions/applyCreditBalance)!=0">
							<api:ApplyCreditBalance>
								<xsl:value-of select="./subscribeOptions/applyCreditBalance" />
							</api:ApplyCreditBalance>
						</xsl:if>
						<xsl:if
							test="count(./subscribeOptions/externalPaymentOptions)!=0">
							<api:ExternalPaymentOptions>
								<xsl:if
									test="count(./subscribeOptions/externalPaymentOptions/amount)!=0">
									<api:Amount>
										<xsl:value-of
											select="./subscribeOptions/externalPaymentOptions/amount" />
									</api:Amount>
								</xsl:if>
								<xsl:if
									test="count(./subscribeOptions/externalPaymentOptions/effectiveDate)!=0">
									<api:EffectiveDate>
										<xsl:value-of
											select="./subscribeOptions/externalPaymentOptions/effectiveDate" />
									</api:EffectiveDate>
								</xsl:if>
								<xsl:if
									test="count(./subscribeOptions/externalPaymentOptions/gatewayOrderId)!=0">
									<api:GatewayOrderId>
										<xsl:value-of
											select="./subscribeOptions/externalPaymentOptions/gatewayOrderId" />
									</api:GatewayOrderId>
								</xsl:if>
								<xsl:if
									test="count(./subscribeOptions/externalPaymentOptions/paymentMethodId)!=0">
									<api:PaymentMethodId>
										<xsl:value-of
											select="./subscribeOptions/externalPaymentOptions/paymentMethodId" />
									</api:PaymentMethodId>
								</xsl:if>
								<xsl:if
									test="count(./subscribeOptions/externalPaymentOptions/referenceId)!=0">
									<api:ReferenceId>
										<xsl:value-of
											select="./subscribeOptions/externalPaymentOptions/referenceId" />
									</api:ReferenceId>
								</xsl:if>
							</api:ExternalPaymentOptions>
						</xsl:if>
						<xsl:if test="count(./subscribeOptions/generateInvoice)!=0">
							<api:GenerateInvoice>
								<xsl:value-of select="./subscribeOptions/generateInvoice" />
							</api:GenerateInvoice>
						</xsl:if>
						<xsl:if test="count(./subscribeOptions/processPayments)!=0">
							<api:ProcessPayments>
								<xsl:value-of select="./subscribeOptions/processPayments" />
							</api:ProcessPayments>
						</xsl:if>
						<api:SubscribeInvoiceProcessingOptions>
							<xsl:if
								test="count(./subscribeOptions/subscribeInvoiceProcessingOptions/invoiceDate)!=0">
								<api:InvoiceDate>
									<xsl:value-of
										select="./subscribeOptions/subscribeInvoiceProcessingOptions/invoiceDate" />
								</api:InvoiceDate>
							</xsl:if>
							<xsl:choose>
								<xsl:when
									test="count(./subscribeOptions/subscribeInvoiceProcessingOptions/invoiceProcessingScope)!=0">
									<api:InvoiceProcessingScope>
										<xsl:value-of
											select="./subscribeOptions/subscribeInvoiceProcessingOptions/invoiceProcessingScope" />
									</api:InvoiceProcessingScope>
								</xsl:when>
								<xsl:otherwise>
									<api:InvoiceProcessingScope>Subscription
									</api:InvoiceProcessingScope>
								</xsl:otherwise>
							</xsl:choose>
							<xsl:if
								test="count(./subscribeOptions/subscribeInvoiceProcessingOptions/invoiceTargetDate)!=0">
								<api:InvoiceTargetDate>
									<xsl:value-of
										select="./subscribeOptions/subscribeInvoiceProcessingOptions/invoiceTargetDate" />
								</api:InvoiceTargetDate>
							</xsl:if>
						</api:SubscribeInvoiceProcessingOptions>
					</api:SubscribeOptions>
					<api:SubscriptionData>
						<api:Subscription>
							<obj:AccountId>
								<xsl:value-of
									select="./subscriptionData/subscription/subscriptionOwnerAccountId" />
							</obj:AccountId>
							<xsl:if
								test="count(./subscriptionData/subscription/autoRenew)!=0">
								<obj:AutoRenew>
									<xsl:value-of
										select="./subscriptionData/subscription/autoRenew" />
								</obj:AutoRenew>
							</xsl:if>
							<xsl:if
								test="count(./subscriptionData/subscription/contractAcceptanceDate)!=0">
								<obj:ContractAcceptanceDate>
									<xsl:value-of
										select="./subscriptionData/subscription/contractAcceptanceDate" />
								</obj:ContractAcceptanceDate>
							</xsl:if>
							<xsl:if
								test="count(./subscriptionData/subscription/contractEffectiveDate)!=0">
								<obj:ContractEffectiveDate>
									<xsl:value-of
										select="./subscriptionData/subscription/contractEffectiveDate" />
								</obj:ContractEffectiveDate>
							</xsl:if>
							<xsl:if
								test="count(./subscriptionData/subscription/initialTerm)!=0">
								<obj:InitialTerm>
									<xsl:value-of
										select="./subscriptionData/subscription/initialTerm" />
								</obj:InitialTerm>
							</xsl:if>
							<xsl:if
								test="count(./subscriptionData/subscription/invoiceOwnerId)!=0">
								<obj:InvoiceOwnerId>
									<xsl:value-of
										select="./subscriptionData/subscription/invoiceOwnerId" />
								</obj:InvoiceOwnerId>
							</xsl:if>
							<xsl:if
								test="count(./subscriptionData/subscription/isInvoiceSeparate)!=0">
								<obj:IsInvoiceSeparate>
									<xsl:value-of
										select="./subscriptionData/subscription/isInvoiceSeparate" />
								</obj:IsInvoiceSeparate>
							</xsl:if>
							<xsl:if
								test="count(./subscriptionData/subscription/name)!=0">
								<obj:Name>
									<xsl:value-of
										select="./subscriptionData/subscription/name" />
								</obj:Name>
							</xsl:if>
							<xsl:if
								test="count(./subscriptionData/subscription/notes)!=0">
								<obj:Notes>
									<xsl:value-of
										select="./subscriptionData/subscription/notes" />
								</obj:Notes>
							</xsl:if>
							<xsl:if
								test="count(./subscriptionData/subscription/orderCreatedBy)!=0">
								<obj:Order_Created_By__c>
									<xsl:value-of
										select="./subscriptionData/subscription/orderCreatedBy" />
								</obj:Order_Created_By__c>
							</xsl:if>
							<xsl:if
								test="count(./subscriptionData/subscription/orderModifiedBy)!=0">
								<obj:Order_Modified_By__c>
									<xsl:value-of
										select="./subscriptionData/subscription/orderModifiedBy" />
								</obj:Order_Modified_By__c>
							</xsl:if>
							<xsl:if
								test="count(./subscriptionData/subscription/provisioningLastId)!=0">
								<obj:PROVISIONING_LAST_ID__c>
									<xsl:value-of
										select="./subscriptionData/subscription/provisioningLastId" />
								</obj:PROVISIONING_LAST_ID__c>
							</xsl:if>
							<xsl:if
								test="count(./subscriptionData/subscription/provisioningLastResult)!=0">
								<obj:PROVISIONING_LAST_RESULT__c>
									<xsl:value-of
										select="./subscriptionData/subscription/provisioningLastResult" />
								</obj:PROVISIONING_LAST_RESULT__c>
							</xsl:if>
							<xsl:if
								test="count(./subscriptionData/subscription/provisioningLastTimestamp)!=0">
								<obj:PROVISIONING_LAST_TIMESTAMP__c>
									<xsl:value-of
										select="./subscriptionData/subscription/provisioningLastTimestamp" />
								</obj:PROVISIONING_LAST_TIMESTAMP__c>
							</xsl:if>
							<xsl:if
								test="count(./subscriptionData/subscription/renewalSetting)!=0">
								<obj:RenewalSetting>
									<xsl:value-of
										select="./subscriptionData/subscription/renewalSetting" />
								</obj:RenewalSetting>
							</xsl:if>
							<xsl:if
								test="count(./subscriptionData/subscription/renewalTerm)!=0">
								<obj:RenewalTerm>
									<xsl:value-of
										select="./subscriptionData/subscription/renewalTerm" />
								</obj:RenewalTerm>
							</xsl:if>
							<xsl:if
								test="count(./subscriptionData/subscription/serviceActivationDate)!=0">
								<obj:ServiceActivationDate>
									<xsl:value-of
										select="./subscriptionData/subscription/serviceActivationDate" />
								</obj:ServiceActivationDate>
							</xsl:if>
							<xsl:if
								test="count(./subscriptionData/subscription/shoppingCartLabel)!=0">
								<obj:Shopping_Cart_Label__c>
									<xsl:value-of
										select="./subscriptionData/subscription/shoppingCartLabel" />
								</obj:Shopping_Cart_Label__c>
							</xsl:if>
							<xsl:if
								test="count(./subscriptionData/subscription/status)!=0">
								<obj:Status>
									<xsl:value-of
										select="./subscriptionData/subscription/status" />
								</obj:Status>
							</xsl:if>
							<xsl:if
								test="count(./subscriptionData/subscription/termStartDate)!=0">
								<obj:TermStartDate>
									<xsl:value-of
										select="./subscriptionData/subscription/termStartDate" />
								</obj:TermStartDate>
							</xsl:if>
							<xsl:if
								test="count(./subscriptionData/subscription/termType)!=0">
								<obj:TermType>
									<xsl:value-of
										select="./subscriptionData/subscription/termType" />
								</obj:TermType>
							</xsl:if>
							<xsl:if
								test="count(./subscriptionData/subscription/trial)!=0">
								<obj:Trial__c>
									<xsl:value-of
										select="./subscriptionData/subscription/trial" />
								</obj:Trial__c>
							</xsl:if>
							<xsl:if
								test="count(./subscriptionData/subscription/provisionDate)!=0">
								<obj:Z_ProvisionDate__c>
									<xsl:value-of
										select="./subscriptionData/subscription/provisionDate" />
								</obj:Z_ProvisionDate__c>
							</xsl:if>
							<xsl:if
								test="count(./subscriptionData/subscription/assetSerialNumber)!=0">
								<obj:Asset_SN__c>
									<xsl:value-of
										select="./subscriptionData/subscription/assetSerialNumber" />
								</obj:Asset_SN__c>
							</xsl:if>
							<xsl:if
								test="count(./subscriptionData/subscription/assetSKU)!=0">
								<obj:Asset_SKU__c>
									<xsl:value-of
										select="./subscriptionData/subscription/assetSKU" />
								</obj:Asset_SKU__c>
							</xsl:if>
							<xsl:if
								test="count(./subscriptionData/subscription/eBillContactId)!=0">
								<obj:ZuoraContactId_1__c>
									<xsl:value-of
										select="./subscriptionData/subscription/eBillContactId" />
								</obj:ZuoraContactId_1__c>
							</xsl:if>
							<xsl:if
								test="count(./subscriptionData/subscription/customTextAttribute1)!=0">
								<obj:CustomTextAttribute1__c>
									<xsl:value-of
										select="./subscriptionData/subscription/customTextAttribute1" />
								</obj:CustomTextAttribute1__c>
							</xsl:if>
							<xsl:if
								test="count(./subscriptionData/subscription/customTextAttribute2)!=0">
								<obj:CustomTextAttribute2__c>
									<xsl:value-of
										select="./subscriptionData/subscription/customTextAttribute2" />
								</obj:CustomTextAttribute2__c>
							</xsl:if>
							<xsl:if
								test="count(./subscriptionData/subscription/customDateAttribute1)!=0">
								<obj:CustomDateAttribute1__c>
									<xsl:value-of
										select="./subscriptionData/subscription/customDateAttribute1" />
								</obj:CustomDateAttribute1__c>
							</xsl:if>
							<xsl:if
								test="count(./subscriptionData/subscription/solarSite)!=0">
								<obj:Solar_Site__c>
									<xsl:value-of
										select="./subscriptionData/subscription/solarSite" />
								</obj:Solar_Site__c>
							</xsl:if>
						</api:Subscription>
						<!--Zero or more repetitions: -->
						<xsl:for-each select="./subscriptionData/ratePlanData">
							<api:RatePlanData>
								<api:RatePlan>
									<xsl:if test="count(./ratePlan/productRatePlanId)!=0">
										<obj:ProductRatePlanId>
											<xsl:value-of select="./ratePlan/productRatePlanId" />
										</obj:ProductRatePlanId>
									</xsl:if>
								</api:RatePlan>
								<!--Zero or more repetitions: -->
								<xsl:for-each select="./ratePlanCharge">
									<api:RatePlanChargeData>
										<api:RatePlanCharge>
											<xsl:if test="count(./discountPercentage)!=0">
												<obj:DiscountPercentage>
													<xsl:value-of select="./discountPercentage" />
												</obj:DiscountPercentage>
											</xsl:if>
											<obj:ProductRatePlanChargeId>
												<xsl:value-of select="./productRatePlanChargeId" />
											</obj:ProductRatePlanChargeId>
											<xsl:if test="count(./quantity)!=0">
												<obj:Quantity>
													<xsl:value-of select="./quantity" />
												</obj:Quantity>
											</xsl:if>
											<xsl:if test="count(./price)!=0">
												<obj:Price>
													<xsl:value-of select="./price" />
												</obj:Price>
											</xsl:if>
										</api:RatePlanCharge>
									</api:RatePlanChargeData>
								</xsl:for-each>
							</api:RatePlanData>
						</xsl:for-each>
					</api:SubscriptionData>
				</api:subscribes>
			</xsl:for-each>
		</api:subscribe>
	</xsl:template>
</xsl:stylesheet>
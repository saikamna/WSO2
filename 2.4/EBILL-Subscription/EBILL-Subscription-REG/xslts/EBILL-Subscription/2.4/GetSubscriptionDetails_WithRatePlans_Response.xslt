<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/"
	xmlns:v1="http://www.schneider-electric.com/ifw/common/message/SoapHeader/v1">
	<xsl:output method="xml" version="1.0" encoding="UTF-8" />
	<xsl:param name="currentDate" />
	<xsl:template match="/">
		<getSubscriptionDetailsResponse>
			<xsl:if test="(count(//subscriptionProductFeatures)=0)">
				<notifications>
					<!--1 or more repetitions: -->
					<notification>
						<code>SUBSCRIPTION_PRODUCT_FEATURES_NOT_FOUND</code>
						<description>
							SubscriptionProductFeatures not found for the input
							<xsl:value-of select="//subscriptionNumber" />
						</description>
					</notification>
				</notifications>
			</xsl:if>
			<subscriptionDetails>
				<id>
					<xsl:value-of select="//id" />
				</id>
				<number>
					<xsl:value-of select="//subscriptionNumber" />
				</number>
				<status>
					<xsl:value-of select="//status" />
				</status>
				<accountId>
					<xsl:value-of select="//accountId" />
				</accountId>
				<accountNumber>
					<xsl:value-of select="//accountNumber" />
				</accountNumber>
				<accountName>
					<xsl:value-of select="//accountName" />
				</accountName>
				<xsl:if test="string-length(//invoiceOwnerAccountId)!=0">
					<invoiceOwnerId>
						<xsl:value-of select="//invoiceOwnerAccountId" />
					</invoiceOwnerId>
				</xsl:if>
				<xsl:if test="string-length(//invoiceOwnerAccountNumber)!=0">
					<invoiceOwnerNumber>
						<xsl:value-of select="//invoiceOwnerAccountNumber" />
					</invoiceOwnerNumber>
				</xsl:if>
				<xsl:if test="string-length(//invoiceOwnerAccountName)!=0">
					<invoiceOwnerName>
						<xsl:value-of select="//invoiceOwnerAccountName" />
					</invoiceOwnerName>
				</xsl:if>
				<xsl:if test="string-length(//termType)!=0">
					<termType>
						<xsl:value-of select="//termType" />
					</termType>
				</xsl:if>
				<xsl:if test="string-length(//contractEffectiveDate)!=0">
					<contractEffectiveDate>
						<xsl:value-of select="//contractEffectiveDate" />
					</contractEffectiveDate>
				</xsl:if>
				<xsl:if test="string-length(//serviceActivationDate)!=0">
					<serviceActivationDate>
						<xsl:value-of select="//serviceActivationDate" />
					</serviceActivationDate>
				</xsl:if>
				<xsl:if test="string-length(//subscriptionStartDate)!=0">
					<subscriptionStartDate>
						<xsl:value-of select="//subscriptionStartDate" />
					</subscriptionStartDate>
				</xsl:if>
				<xsl:if test="string-length(//customerAcceptanceDate)!=0">
					<customerAcceptanceDate>
						<xsl:value-of select="//customerAcceptanceDate" />
					</customerAcceptanceDate>
				</xsl:if>
				<xsl:if test="string-length(//termStartDate)!=0">
					<termStartDate>
						<xsl:value-of select="//termStartDate" />
					</termStartDate>
				</xsl:if>
				<xsl:if test="string-length(//termEndDate)!=0">
					<termEndDate>
						<xsl:value-of select="//termEndDate" />
					</termEndDate>
				</xsl:if>
				<xsl:if test="string-length(//initialTerm)!=0">
					<initialTerm>
						<xsl:value-of select="//initialTerm" />
					</initialTerm>
				</xsl:if>
				<xsl:if test="string-length(//autoRenew)!=0">
					<autoRenew>
						<xsl:value-of select="//autoRenew" />
					</autoRenew>
				</xsl:if>
				<xsl:if test="string-length(//renewalTerm)!=0">
					<renewalTerm>
						<xsl:value-of select="//renewalTerm" />
					</renewalTerm>
				</xsl:if>
				<xsl:if test="string-length(//contractedMrr)!=0">
					<contractedMrr>
						<xsl:value-of select="//contractedMrr" />
					</contractedMrr>
				</xsl:if>
				<xsl:if test="string-length(//totalContractedValue)!=0">
					<totalContractedValue>
						<xsl:value-of select="//totalContractedValue" />
					</totalContractedValue>
				</xsl:if>
				<xsl:if test="string-length(//Z_ProvisionDate__c)!=0">
					<provisioningDate>
						<xsl:value-of select="//Z_ProvisionDate__c" />
					</provisioningDate>
				</xsl:if>
				<xsl:if test="string-length(//PROVISIONING_LAST_RESULT__c)!=0">
					<provisioningLastResult>
						<xsl:value-of select="//PROVISIONING_LAST_RESULT__c" />
					</provisioningLastResult>
				</xsl:if>
				<xsl:if test="string-length(//PROVISIONING_LAST_TIMESTAMP__c)!=0">
					<provisioningLastTimestamp>
						<xsl:value-of select="//PROVISIONING_LAST_TIMESTAMP__c" />
					</provisioningLastTimestamp>
				</xsl:if>
				<xsl:if test="string-length(//PROVISIONING_LAST_ID__c)!=0">
					<provisioningLastTransactionId>
						<xsl:value-of select="//PROVISIONING_LAST_ID__c" />
					</provisioningLastTransactionId>
				</xsl:if>
				<xsl:if test="string-length(//notes)!=0">
					<notes>
						<xsl:value-of select="//notes" />
					</notes>
				</xsl:if>
				<xsl:if test="string-length(//Trial__c)!=0">
					<trial>
						<xsl:value-of select="//Trial__c" />
					</trial>
				</xsl:if>
				<xsl:if test="string-length(//Entity__c)!=0">
					<entity>
						<xsl:value-of select="//Entity__c" />
					</entity>
				</xsl:if>
				<xsl:if test="string-length(//Order_Created_By__c)!=0">
					<orderCreatedBy>
						<xsl:value-of select="//Order_Created_By__c" />
					</orderCreatedBy>
				</xsl:if>
				<xsl:if test="string-length(//Shopping_Cart_Label__c)!=0">
					<shoppingCartLabel>
						<xsl:value-of select="//Shopping_Cart_Label__c" />
					</shoppingCartLabel>
				</xsl:if>
				<xsl:if test="string-length(//Order_Modified_By__c)!=0">
					<orderModifiedBy>
						<xsl:value-of select="//Order_Modified_By__c" />
					</orderModifiedBy>
				</xsl:if>
				<xsl:choose>
					<xsl:when
						test="string-length(//serviceActivationDate)!=0 and string-length(//Trial__c)!=0">
						<xsl:choose>
							<xsl:when
								test="($currentDate &lt; //serviceActivationDate)and(//Trial__c='Y')">
								<inTrialIndicator>Y</inTrialIndicator>
							</xsl:when>
							<xsl:otherwise>
								<inTrialIndicator>N</inTrialIndicator>
							</xsl:otherwise>
						</xsl:choose>
					</xsl:when>
					<xsl:otherwise />
				</xsl:choose>
				<xsl:if test="string-length(//Asset_SN__c)!=0">
					<assetSerialNumber>
						<xsl:value-of select="//Asset_SN__c" />
					</assetSerialNumber>
				</xsl:if>
				<xsl:if test="string-length(//Asset_SKU__c)!=0">
					<assetSKU>
						<xsl:value-of select="//Asset_SKU__c" />
					</assetSKU>
				</xsl:if>
				<xsl:if test="string-length(//ZuoraContactId_1__c)!=0">
					<eBillContactId>
						<xsl:value-of select="//ZuoraContactId_1__c" />
					</eBillContactId>
				</xsl:if>
				<xsl:if test="string-length(//CustomTextAttribute1__c)!=0">
					<customTextAttribute1>
						<xsl:value-of select="//CustomTextAttribute1__c" />
					</customTextAttribute1>
				</xsl:if>
				<xsl:if test="string-length(//CustomTextAttribute2__c)!=0">
					<customTextAttribute2>
						<xsl:value-of select="//CustomTextAttribute2__c" />
					</customTextAttribute2>
				</xsl:if>
				<xsl:if test="string-length(//CustomDateAttribute1__c)!=0">
					<customDateAttribute1>
						<xsl:value-of select="//CustomDateAttribute1__c" />
					</customDateAttribute1>
				</xsl:if>
				<xsl:if test="string-length(//Solar_Site__c)!=0">
					<solarSite>
						<xsl:value-of select="//Solar_Site__c" />
					</solarSite>
				</xsl:if>
				<!--For each RatePlans -->
				<xsl:for-each select="//ratePlans">
					<ratePlans>
						<id>
							<xsl:value-of select="./id" />
						</id>
						<name>
							<xsl:value-of select="./ratePlanName" />
						</name>
						<productId>
							<xsl:value-of select="./productId" />
						</productId>
						<productName>
							<xsl:value-of select="./productName" />
						</productName>
						<xsl:if test="string-length(./productSku)!=0">
							<productSku>
								<xsl:value-of select="./productSku" />
							</productSku>
						</xsl:if>
						<productRatePlanId>
							<xsl:value-of select="./productRatePlanId" />
						</productRatePlanId>
						<xsl:if test="string-length(./ratePlanName)!=0">
							<ratePlanName>
								<xsl:value-of select="./ratePlanName" />
							</ratePlanName>
						</xsl:if>
						<xsl:if test="string-length(./lastChangeType)!=0">
							<lastChangeType>
								<xsl:value-of select="./lastChangeType" />
							</lastChangeType>
						</xsl:if>
						<!--For each ratePlanCharges -->
						<xsl:for-each select="./ratePlanCharges">
							<ratePlanCharges>
								<id>
									<xsl:value-of select="./id" />
								</id>
								<number>
									<xsl:value-of select="./number" />
								</number>
								<name>
									<xsl:value-of select="./name" />
								</name>
								<type>
									<xsl:value-of select="./type" />
								</type>
								<model>
									<xsl:value-of select="./model" />
								</model>
								<xsl:if test="string-length(./pricingSummary)!=0">
									<pricingSummary>
										<xsl:value-of select="./pricingSummary" />
									</pricingSummary>
								</xsl:if>
								<xsl:if test="string-length(./billingDay)!=0">
									<billingDay>
										<xsl:value-of select="./billingDay" />
									</billingDay>
								</xsl:if>
								<xsl:if test="string-length(./billingPeriod)!=0">
									<billingPeriod>
										<xsl:value-of select="./billingPeriod" />
									</billingPeriod>
								</xsl:if>
								<xsl:if test="string-length(./quantity)!=0">
									<quantity>
										<xsl:value-of select="./quantity" />
									</quantity>
								</xsl:if>
								<xsl:if test="string-length(./productRatePlanChargeId)!=0">
									<productRatePlanChargeId>
										<xsl:value-of select="./productRatePlanChargeId" />
									</productRatePlanChargeId>
								</xsl:if>
								<xsl:if test="string-length(./description)!=0">
									<description>
										<xsl:value-of select="./description" />
									</description>
								</xsl:if>
								<xsl:if test="string-length(./discountAmount)!=0">
									<discountAmount>
										<xsl:value-of select="./discountAmount" />
									</discountAmount>
								</xsl:if>
								<xsl:if test="string-length(./discountPercentage)!=0">
									<discountPercentage>
										<xsl:value-of select="./discountPercentage" />
									</discountPercentage>
								</xsl:if>
								<xsl:if test="string-length(./endDateCondition)!=0">
									<endDateCondition>
										<xsl:value-of select="./endDateCondition" />
									</endDateCondition>
								</xsl:if>
								<xsl:if test="string-length(./listPriceBase)!=0">
									<listPriceBase>
										<xsl:value-of select="./listPriceBase" />
									</listPriceBase>
								</xsl:if>
								<xsl:if test="string-length(./price)!=0">
									<price>
										<xsl:value-of select="./price" />
									</price>
								</xsl:if>

								<xsl:if test="string-length(./specificEndDate)!=0">
									<specificEndDate>
										<xsl:value-of select="./specificEndDate" />
									</specificEndDate>
								</xsl:if>
								<xsl:if test="string-length(./upToPeriods)!=0">
									<upToPeriods>
										<xsl:value-of select="./upToPeriods" />
									</upToPeriods>
								</xsl:if>
								<xsl:if test="string-length(./upToPeriodsType)!=0">
									<upToPeriodsType>
										<xsl:value-of select="./upToPeriodsType" />
									</upToPeriodsType>
								</xsl:if>
								<xsl:if test="string-length(./originalChargeId)!=0">
									<originalChargeId>
										<xsl:value-of select="./originalChargeId" />
									</originalChargeId>
								</xsl:if>
								<xsl:if test="string-length(./uom)!=0">
									<uom>
										<xsl:value-of select="./uom" />
									</uom>
								</xsl:if>
								<xsl:if test="string-length(./version)!=0">
									<version>
										<xsl:value-of select="./version" />
									</version>
								</xsl:if>
								<xsl:if test="string-length(./priceChangeOption)!=0">
									<priceChangeOption>
										<xsl:value-of select="./priceChangeOption" />
									</priceChangeOption>
								</xsl:if>
								<xsl:if test="string-length(./priceIncreasePercentage)!=0">
									<priceIncreasePercentage>
										<xsl:value-of select="./priceIncreasePercentage" />
									</priceIncreasePercentage>
								</xsl:if>
								<xsl:if test="string-length(./currency)!=0">
									<currency>
										<xsl:value-of select="./currency" />
									</currency>
								</xsl:if>
								<xsl:if test="string-length(./tiers)!=0">
									<tiers>
										<xsl:value-of select="./tiers" />
									</tiers>
								</xsl:if>
								<xsl:if test="string-length(./includedUnits)!=0">
									<includedUnits>
										<xsl:value-of select="./includedUnits" />
									</includedUnits>
								</xsl:if>
								<xsl:if test="string-length(./overagePrice)!=0">
									<overagePrice>
										<xsl:value-of select="./overagePrice" />
									</overagePrice>
								</xsl:if>
								<xsl:if test="string-length(./discountAmount)!=0">
									<discountAmount>
										<xsl:value-of select="./discountAmount" />
									</discountAmount>
								</xsl:if>
								<xsl:if test="string-length(./applyDiscountTo)!=0">
									<applyDiscountTo>
										<xsl:value-of select="./applyDiscountTo" />
									</applyDiscountTo>
								</xsl:if>
								<xsl:if test="string-length(./discountLevel)!=0">
									<discountLevel>
										<xsl:value-of select="./discountLevel" />
									</discountLevel>
								</xsl:if>
								<xsl:if test="string-length(./discountClass)!=0">
									<discountClass>
										<xsl:value-of select="./discountClass" />
									</discountClass>
								</xsl:if>
								<xsl:if test="string-length(./discountApplyDetails)!=0">
									<discountApplyDetails>
										<xsl:if test="string-length(./appliedProductRatePlanChargeId)!=0">
											<appliedProductRatePlanChargeId>
												<xsl:value-of select="./appliedProductRatePlanChargeId" />
											</appliedProductRatePlanChargeId>
										</xsl:if>
										<xsl:if test="string-length(./appliedProductRatePlanId)!=0">
											<appliedProductRatePlanId>
												<xsl:value-of select="./appliedProductRatePlanId" />
											</appliedProductRatePlanId>
										</xsl:if>
									</discountApplyDetails>
								</xsl:if>
								<xsl:if test="string-length(./specificBillingPeriod)!=0">
									<specificBillingPeriod>
										<xsl:value-of select="./specificBillingPeriod" />
									</specificBillingPeriod>
								</xsl:if>
								<xsl:if test="string-length(./billingTiming)!=0">
									<billingTiming>
										<xsl:value-of select="./billingTiming" />
									</billingTiming>
								</xsl:if>
								<xsl:if test="string-length(./billingPeriodAlignment)!=0">
									<billingPeriodAlignment>
										<xsl:value-of select="./billingPeriodAlignment" />
									</billingPeriodAlignment>
								</xsl:if>
								<xsl:if test="string-length(./smoothingModel)!=0">
									<smoothingModel>
										<xsl:value-of select="./smoothingModel" />
									</smoothingModel>
								</xsl:if>
								<xsl:if test="string-length(./numberOfPeriods)!=0">
									<numberOfPeriods>
										<xsl:value-of select="./numberOfPeriods" />
									</numberOfPeriods>
								</xsl:if>
								<xsl:if test="string-length(./overageCalculationOption)!=0">
									<overageCalculationOption>
										<xsl:value-of select="./overageCalculationOption" />
									</overageCalculationOption>
								</xsl:if>
								<xsl:if test="string-length(./overageUnusedUnitsCreditOption)!=0">
									<overageUnusedUnitsCreditOption>
										<xsl:value-of select="./overageUnusedUnitsCreditOption" />
									</overageUnusedUnitsCreditOption>
								</xsl:if>
								<xsl:if test="string-length(./unusedUnitsCreditRates)!=0">
									<unusedUnitsCreditRates>
										<xsl:value-of select="./unusedUnitsCreditRates" />
									</unusedUnitsCreditRates>
								</xsl:if>
								<xsl:if test="string-length(./usageRecordRatingOption)!=0">
									<usageRecordRatingOption>
										<xsl:value-of select="./usageRecordRatingOption" />
									</usageRecordRatingOption>
								</xsl:if>
								<xsl:if test="string-length(./segment)!=0">
									<segment>
										<xsl:value-of select="./segment" />
									</segment>
								</xsl:if>
								<xsl:if test="string-length(./effectiveStartDate)!=0">
									<effectiveStartDate>
										<xsl:value-of select="./effectiveStartDate" />
									</effectiveStartDate>
								</xsl:if>
								<xsl:if test="string-length(./effectiveEndDate)!=0">
									<effectiveEndDate>
										<xsl:value-of select="./effectiveEndDate" />
									</effectiveEndDate>
								</xsl:if>
								<xsl:if test="string-length(./processedThroughDate)!=0">
									<processedThroughDate>
										<xsl:value-of select="./processedThroughDate" />
									</processedThroughDate>
								</xsl:if>
								<xsl:if test="string-length(./chargedThroughDate)!=0">
									<chargedThroughDate>
										<xsl:value-of select="./chargedThroughDate" />
									</chargedThroughDate>
								</xsl:if>
								<xsl:if test="string-length(./done)!=0">
									<done>
										<xsl:value-of select="./done" />
									</done>
								</xsl:if>
								<xsl:if test="string-length(./triggerDate)!=0">
									<triggerDate>
										<xsl:value-of select="./triggerDate" />
									</triggerDate>
								</xsl:if>
								<xsl:if test="string-length(./triggerEvent)!=0">
									<triggerEvent>
										<xsl:value-of select="./triggerEvent" />
									</triggerEvent>
								</xsl:if>
								<xsl:if test="string-length(./mrr)!=0">
									<mrr>
										<xsl:value-of select="./mrr" />
									</mrr>
								</xsl:if>
								<xsl:if test="string-length(./dmrc)!=0">
									<dmrc>
										<xsl:value-of select="./dmrc" />
									</dmrc>
								</xsl:if>
								<xsl:if test="string-length(./mcv)!=0">
									<mcv>
										<xsl:value-of select="./mcv" />
									</mcv>
								</xsl:if>
								<xsl:if test="string-length(./tcv)!=0">
									<tcv>
										<xsl:value-of select="./tcv" />
									</tcv>
								</xsl:if>
								<xsl:if test="string-length(./dtcv)!=0">
									<dtcv>
										<xsl:value-of select="./dtcv" />
									</dtcv>
								</xsl:if>
							</ratePlanCharges>
						</xsl:for-each>
						<!--For each subscriptionProductFeatures -->
						<xsl:for-each select="./subscriptionProductFeatures">
							<subscriptionProductFeatures>
								<id>
									<xsl:value-of select="./id" />
								</id>
								<name>
									<xsl:value-of select="./name" />
								</name>
								<code>
									<xsl:value-of select="./featureCode" />
								</code>
								<xsl:if test="string-length(./description)!=0">
									<description>
										<xsl:value-of select="./description" />
									</description>
								</xsl:if>
							</subscriptionProductFeatures>
						</xsl:for-each>
					</ratePlans>
				</xsl:for-each>
			</subscriptionDetails>
		</getSubscriptionDetailsResponse>
	</xsl:template>
</xsl:stylesheet>
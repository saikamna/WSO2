<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/"
	
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ns2="http://object.api.zuora.com/"
	xmlns:ns1="http://api.zuora.com/">
	<xsl:output method="xml" version="1.0" encoding="UTF-8" />
	<xsl:param name="subscriptionStatus" />

	<xsl:param name="currentDate" />

	<xsl:template match="/">
		<xsl:choose>
			<xsl:when
				test="string-length(//ns1:queryResponse/ns1:result/ns1:records)!=0">
				<getSubscriptionsResponse>
					<xsl:for-each select="//ns1:queryResponse/ns1:result/ns1:records">
						<subscriptionDetails>
							<xsl:if test="string-length(./ns2:Id)!=0">
								<id>
									<xsl:value-of select="./ns2:Id" />
								</id>
							</xsl:if>
							<xsl:if test="string-length(./ns2:Name)!=0">
								<number>
									<xsl:value-of select="./ns2:Name" />
								</number>
							</xsl:if>
							<xsl:if test="string-length(./ns2:Status)!=0">
								<status>
									<xsl:value-of select="./ns2:Status" />
								</status>
							</xsl:if>
							<xsl:if test="string-length(./ns2:AccountId)!=0">
								<accountId>
									<xsl:value-of select="./ns2:AccountId" />
								</accountId>
							</xsl:if>
							<xsl:if test="string-length(./ns2:Asset_SN__c)!=0">
								<assetSerialNumber>
									<xsl:value-of select="./ns2:Asset_SN__c" />
								</assetSerialNumber>
							</xsl:if>
							<xsl:if test="string-length(./ns2:Asset_SKU__c)!=0">
								<assetSKU>
									<xsl:value-of select="./ns2:Asset_SKU__c" />
								</assetSKU>
							</xsl:if>
							<xsl:if test="string-length(./ns2:InvoiceOwnerId)!=0">
								<invoiceOwnerId>
									<xsl:value-of select="./ns2:InvoiceOwnerId" />
								</invoiceOwnerId>
							</xsl:if>
							<xsl:if test="string-length(./ns2:ZuoraContactId_1__c)!=0">
								<eBillContactId>
									<xsl:value-of select="./ns2:ZuoraContactId_1__c" />
								</eBillContactId>
							</xsl:if>
							<xsl:if test="string-length(./ns2:TermType)!=0">
								<termType>
									<xsl:value-of select="./ns2:TermType" />
								</termType>
							</xsl:if>
							<xsl:if test="string-length(./ns2:ContractEffectiveDate)!=0">
								<contractEffectiveDate>
									<xsl:value-of select="./ns2:ContractEffectiveDate" />
								</contractEffectiveDate>
							</xsl:if>
							<xsl:if test="string-length(./ns2:ServiceActivationDate)!=0">
								<serviceActivationDate>
									<xsl:value-of select="./ns2:ServiceActivationDate" />
								</serviceActivationDate>
							</xsl:if>
							<xsl:if test="string-length(./ns2:SubscriptionStartDate )!=0">
								<subscriptionStartDate>
									<xsl:value-of select="./ns2:SubscriptionStartDate " />
								</subscriptionStartDate>
							</xsl:if>
							<xsl:if test="string-length(./ns2:ContractAcceptanceDate)!=0">
								<customerAcceptanceDate>
									<xsl:value-of select="./ns2:ContractAcceptanceDate" />
								</customerAcceptanceDate>
							</xsl:if>
							<xsl:if test="string-length(./ns2:TermStartDate)!=0">
								<termStartDate>
									<xsl:value-of select="./ns2:TermStartDate" />
								</termStartDate>
							</xsl:if>
							<xsl:if test="string-length(./ns2:TermEndDate)!=0">
								<termEndDate>
									<xsl:value-of select="./ns2:TermEndDate" />
								</termEndDate>
							</xsl:if>
							<xsl:if test="string-length(./ns2:InitialTerm)!=0">
								<initialTerm>
									<xsl:value-of select="./ns2:InitialTerm" />
								</initialTerm>
							</xsl:if>
							<xsl:if test="string-length(./ns2:AutoRenew)!=0">
								<autoRenew>
									<xsl:value-of select="./ns2:AutoRenew" />
								</autoRenew>
							</xsl:if>
							<xsl:if test="string-length(./ns2:RenewalTerm)!=0">
								<renewalTerm>
									<xsl:value-of select="./ns2:RenewalTerm" />
								</renewalTerm>
							</xsl:if>
							<xsl:if test="string-length(./ns2:Z_ProvisionDate__c)!=0">
								<provisioningDate>
									<xsl:value-of select="./ns2:Z_ProvisionDate__c" />
								</provisioningDate>
							</xsl:if>
							<xsl:if test="string-length(./ns2:PROVISIONING_LAST_RESULT__c)!=0">
								<provisioningLastResult>
									<xsl:value-of select="./ns2:PROVISIONING_LAST_RESULT__c" />
								</provisioningLastResult>
							</xsl:if>
							<xsl:if test="string-length(./ns2:PROVISIONING_LAST_TIMESTAMP__c)!=0">
								<provisioningLastTimestamp>
									<xsl:value-of select="./ns2:PROVISIONING_LAST_TIMESTAMP__c" />
								</provisioningLastTimestamp>
							</xsl:if>
							<xsl:if test="string-length(./ns2:PROVISIONING_LAST_ID__c)!=0">
								<provisioningLastTransactionId>
									<xsl:value-of select="./ns2:PROVISIONING_LAST_ID__c" />
								</provisioningLastTransactionId>
							</xsl:if>
							<xsl:if test="string-length(./ns2:Notes)!=0">
								<notes>
									<xsl:value-of select="./ns2:Notes" />
								</notes>
							</xsl:if>
							<xsl:if test="string-length(./ns2:Trial__c)!=0">
								<trial>
									<xsl:value-of select="./ns2:Trial__c" />
								</trial>
							</xsl:if>
							<xsl:if test="string-length(./ns2:Entity__c)!=0">
								<entity>
									<xsl:value-of select="./ns2:Entity__c" />
								</entity>
							</xsl:if>
							<xsl:if test="string-length(./ns2:Order_Created_By__c)!=0">
								<orderCreatedBy>
									<xsl:value-of select="./ns2:Order_Created_By__c" />
								</orderCreatedBy>
							</xsl:if>
							<xsl:if test="string-length(./ns2:Shopping_Cart_Label__c)!=0">
								<shoppingCartLabel>
									<xsl:value-of select="./ns2:Shopping_Cart_Label__c" />
								</shoppingCartLabel>
							</xsl:if>
							<xsl:if test="string-length(./ns2:Order_Modified_By__c)!=0">
								<orderChangedBy>
									<xsl:value-of select="./ns2:Order_Modified_By__c" />
								</orderChangedBy>
							</xsl:if>
							<!--<xsl:variable name="currentDate" select="js:currentDateFormat10()"/> -->
							<xsl:variable name="Date"
								select="translate(./ns2:ServiceActivationDate/text(),'-','')" />
							<xsl:variable name="TDate" select="translate($currentDate,'-','')" />

							<xsl:if
								test="count(./ns2:ServiceActivationDate)>0 or count(./ns2:Trial__c)>0">
								<xsl:choose>
									<xsl:when test="((./ns2:Trial__c='Y') and ($TDate &lt; $Date) )">
										<inTrialIndicator>Y</inTrialIndicator>
									</xsl:when>
									<xsl:otherwise>
										<inTrialIndicator>N</inTrialIndicator>
									</xsl:otherwise>
								</xsl:choose>
							</xsl:if>
							<xsl:if test="string-length(./ns2:OriginalCreatedDate)>0">
								<originalCreatedDate>
									<xsl:value-of select="./ns2:OriginalCreatedDate" />
								</originalCreatedDate>
							</xsl:if>
							<xsl:if
								test="((string-length(./ns2:OriginalCreatedDate)!=0) and (string-length(./ns2:CreatedDate)!=0))">
								<xsl:if
									test="(string(./ns2:OriginalCreatedDate/text())!=string(./ns2:CreatedDate/text()))">
									<lastAmendmentDate>
										<xsl:value-of select="./ns2:CreatedDate" />
									</lastAmendmentDate>
								</xsl:if>
							</xsl:if>
							<xsl:if test="string-length(./ns2:CoolOff__c)!=0">
								<coolOff>
									<xsl:value-of select="./ns2:CoolOff__c" />
								</coolOff>
							</xsl:if>
							<xsl:if test="string-length(./ns2:CustomerPaymentReference__c)!=0">
								<customerPaymentReference>
									<xsl:value-of select="./ns2:CustomerPaymentReference__c" />
								</customerPaymentReference>
							</xsl:if>
							<xsl:if test="string-length(./ns2:ZHMIGateManagerID__c)!=0">
								<zHMIGateManagerID>
									<xsl:value-of select="./ns2:ZHMIGateManagerID__c" />
								</zHMIGateManagerID>
							</xsl:if>
							<xsl:if test="string-length(./ns2:ZuoraContactId_2__c)!=0">
								<zuoraContactId2>
									<xsl:value-of select="./ns2:ZuoraContactId_2__c" />
								</zuoraContactId2>
							</xsl:if>
							<xsl:if test="string-length(./ns2:CurrentTermPeriodType)!=0">
								<currentTermPeriodType>
									<xsl:value-of select="./ns2:CurrentTermPeriodType" />
								</currentTermPeriodType>
							</xsl:if>
							<xsl:if test="string-length(./ns2:InitialTermPeriodType)!=0">
								<initialTermPeriodType>
									<xsl:value-of select="./ns2:InitialTermPeriodType" />
								</initialTermPeriodType>
							</xsl:if>
							<xsl:if test="string-length(./ns2:RenewalTermPeriodType)!=0">
								<renewalTermPeriodType>
									<xsl:value-of select="./ns2:RenewalTermPeriodType" />
								</renewalTermPeriodType>
							</xsl:if>
							<xsl:if test="string-length(./ns2:CustomTextAttribute1__c)!=0">
								<customTextAttribute1>
									<xsl:value-of select="./ns2:CustomTextAttribute1__c" />
								</customTextAttribute1>
							</xsl:if>
							<xsl:if test="string-length(./ns2:CustomTextAttribute2__c)!=0">
								<customTextAttribute2>
									<xsl:value-of select="./ns2:CustomTextAttribute2__c" />
								</customTextAttribute2>
							</xsl:if>
							<xsl:if test="string-length(./ns2:CustomDateAttribute1__c)!=0">
								<customDateAttribute1>
									<xsl:value-of select="./ns2:CustomDateAttribute1__c" />
								</customDateAttribute1>
							</xsl:if>
							<xsl:if test="string-length(./ns2:Solar_Site__c)!=0">
								<solarSite>
									<xsl:value-of select="./ns2:Solar_Site__c" />
								</solarSite>
							</xsl:if>
							<xsl:if test="string-length(./ns2:CostType__c)!=0">
								<costType>
									<xsl:value-of select="./ns2:CostType__c" />
								</costType>
							</xsl:if>
							<xsl:if test="string-length(./ns2:CostTypeValue__c)!=0">
								<costTypeValue>
									<xsl:value-of select="./ns2:CostTypeValue__c" />
								</costTypeValue>
							</xsl:if>
							<xsl:if test="string-length(./ns2:TECH_ReferenceQuote__c)!=0">
								<referenceQuote>
									<xsl:value-of select="./ns2:TECH_ReferenceQuote__c" />
								</referenceQuote>
							</xsl:if>
							<xsl:if test="string-length(./ns2:Opportunity__c)!=0">
								<opportunityId>
									<xsl:value-of select="./ns2:Opportunity__c" />
								</opportunityId>
							</xsl:if>
						</subscriptionDetails>
					</xsl:for-each>
				</getSubscriptionsResponse>
			</xsl:when>
			<xsl:when
				test="string-length(//ns1:queryResponse/ns1:result/ns1:records)=0">
				<getSubscriptionsResponse />
			</xsl:when>
		</xsl:choose>
	</xsl:template>
</xsl:stylesheet>
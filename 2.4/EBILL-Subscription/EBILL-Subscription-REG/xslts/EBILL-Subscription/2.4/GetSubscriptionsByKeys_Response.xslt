<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:api="http://api.zuora.com/"
	xmlns:ns1="http://api.zuora.com/" xmlns:ns2="http://object.api.zuora.com/" exclude-result-prefixes="#all">
	<xsl:output method="xml" version="1.0" encoding="UTF-8" />

	<xsl:template match="/">
		<xsl:choose>
			<xsl:when test="string-length(//ns1:queryMoreResponse/ns1:result/ns1:records)!=0">
				<subscriptions>
					<xsl:choose>
						<xsl:when
							test="string-length(//ns1:queryResponse/ns1:result/ns1:queryLocator/text())!=0">
							<queryId>
								<xsl:value-of
									select="substring-before(//ns1:queryResponse/ns1:result/ns1:queryLocator/text(),'-')" />
							</queryId>
						</xsl:when>
						<xsl:when
							test="string-length(//ns1:queryMoreResponse/ns1:result/ns1:queryLocator/text())!=0">
							<queryId>
								<xsl:value-of
									select="substring-before(//ns1:queryMoreResponse/ns1:result/ns1:queryLocator/text(),'-')" />
							</queryId>
						</xsl:when>
						<xsl:when test="string-length(//queryId/text())!=0">
							<queryId>
								<xsl:value-of select="//queryId/text()" />
							</queryId>
						</xsl:when>
						<xsl:otherwise>
						</xsl:otherwise>
					</xsl:choose>
					<xsl:choose>
						<xsl:when
							test="string-length(//ns1:queryResponse/ns1:result/ns1:size/text())!=0">
							<recordCount>
								<xsl:value-of select="//ns1:queryResponse/ns1:result/ns1:size/text()" />
							</recordCount>
						</xsl:when>
						<xsl:when
							test="string-length(//ns1:queryMoreResponse/ns1:result/ns1:size/text())!=0">
							<recordCount>
								<xsl:value-of
									select="//ns1:queryMoreResponse/ns1:result/ns1:size/text()" />
							</recordCount>
						</xsl:when>
						<xsl:otherwise>
							<recordCount>0</recordCount>
						</xsl:otherwise>
					</xsl:choose>
					<xsl:if test="string-length(//ns1:queryMoreResponse/ns1:result/ns1:records)!=0">
							<xsl:for-each select="//ns1:queryMoreResponse/ns1:result/ns1:records">
								<subscription>
									<xsl:if test="string-length(./ns2:Id)!=0">
										<id>
											<xsl:value-of select="./ns2:Id" />
										</id>
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
									<xsl:if test="string-length(./ns2:AutoRenew)!=0">
										<autoRenew>
											<xsl:value-of select="./ns2:AutoRenew" />
										</autoRenew>
									</xsl:if>
									<xsl:if test="string-length(./ns2:CancelledDate)!=0">
										<cancelledDate>
											<xsl:value-of select="./ns2:CancelledDate" />
										</cancelledDate>
									</xsl:if>
									<xsl:if test="string-length(./ns2:ContractAcceptanceDate)!=0">
										<contractAcceptanceDate>
											<xsl:value-of select="./ns2:ContractAcceptanceDate" />
										</contractAcceptanceDate>
									</xsl:if>
									<xsl:if test="string-length(./ns2:ContractEffectiveDate)!=0">
										<contractEffectiveDate>
											<xsl:value-of select="./ns2:ContractEffectiveDate" />
										</contractEffectiveDate>
									</xsl:if>
									<xsl:if test="string-length(./ns2:CoolOff__c)!=0">
										<coolOff>
											<xsl:value-of select="./ns2:CoolOff__c" />
										</coolOff>
									</xsl:if>
									<xsl:if test="string-length(./ns2:CpqBundleJsonId__QT)!=0">
										<cpqBundleJsonId>
											<xsl:value-of select="./ns2:CpqBundleJsonId__QT" />
										</cpqBundleJsonId>
									</xsl:if>
									<xsl:if test="string-length(./ns2:CreatedById)!=0">
										<createdById>
											<xsl:value-of select="./ns2:CreatedById" />
										</createdById>
									</xsl:if>
									<xsl:if test="string-length(./ns2:CreatedDate)!=0">
										<createdDate>
											<xsl:value-of select="./ns2:CreatedDate" />
										</createdDate>
									</xsl:if>
									<xsl:if test="string-length(./ns2:CreatorAccountId)!=0">
										<creatorAccountId>
											<xsl:value-of select="./ns2:CreatorAccountId" />
										</creatorAccountId>
									</xsl:if>
									<xsl:if test="string-length(./ns2:CreatorInvoiceOwnerId)!=0">
										<creatorInvoiceOwnerId>
											<xsl:value-of select="./ns2:CreatorInvoiceOwnerId" />
										</creatorInvoiceOwnerId>
									</xsl:if>
									<xsl:if test="string-length(./ns2:CustomDateAttribute1__c)!=0">
										<customDateAttribute>
											<xsl:value-of select="./ns2:CustomDateAttribute1__c" />
										</customDateAttribute>
									</xsl:if>
									<xsl:if test="string-length(./ns2:CustomerPaymentReference__c)!=0">
										<customerPaymentReference>
											<xsl:value-of select="./ns2:CustomerPaymentReference__c" />
										</customerPaymentReference>
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
									<xsl:if test="string-length(./ns2:Entity__c)!=0">
										<entity>
											<xsl:value-of select="./ns2:Entity__c" />
										</entity>
									</xsl:if>
									<xsl:if test="string-length(./ns2:InitialTerm)!=0">
										<initialTerm>
											<xsl:value-of select="./ns2:InitialTerm" />
										</initialTerm>
									</xsl:if>
									<xsl:if test="string-length(./ns2:Installer_email__c)!=0">
										<installerEmail>
											<xsl:value-of select="./ns2:Installer_email__c" />
										</installerEmail>
									</xsl:if>									
									<xsl:if test="string-length(./ns2:InvoiceOwnerId)!=0">
										<invoiceOwnerId>
											<xsl:value-of select="./ns2:InvoiceOwnerId" />
										</invoiceOwnerId>
									</xsl:if>
									<xsl:if test="string-length(./ns2:IsInvoiceSeparate)!=0">
										<isInvoiceSeparate>
											<xsl:value-of select="./ns2:IsInvoiceSeparate" />
										</isInvoiceSeparate>
									</xsl:if>
									<xsl:if test="string-length(./ns2:Name)!=0">
										<name>
											<xsl:value-of select="./ns2:Name" />
										</name>
									</xsl:if>
									<xsl:if test="string-length(./ns2:Notes)!=0">
										<notes>
											<xsl:value-of select="./ns2:Notes" />
										</notes>
									</xsl:if>
									<xsl:if test="string-length(./ns2:opportunity__c)!=0">
										<opportunity>
											<xsl:value-of select="./ns2:opportunity__c" />
										</opportunity>
									</xsl:if>
									<xsl:if test="string-length(./ns2:OpportunityCloseDate__QT)!=0">
										<opportunityCloseDate>
											<xsl:value-of select="./ns2:OpportunityCloseDate__QT" />
										</opportunityCloseDate>
									</xsl:if>
									<xsl:if test="string-length(./ns2:OpportunityName__QT)!=0">
										<opportunityName>
											<xsl:value-of select="./ns2:OpportunityName__QT" />
										</opportunityName>
									</xsl:if>
									<xsl:if test="string-length(./ns2:Order_Created_By__c)!=0">
										<orderCreatedBy>
											<xsl:value-of select="./ns2:Order_Created_By__c" />
										</orderCreatedBy>
									</xsl:if>	
									<xsl:if test="string-length(./ns2:Order_Modified_By__c)!=0">
										<orderModifiedBy>
											<xsl:value-of select="./ns2:Order_Modified_By__c" />
										</orderModifiedBy>
									</xsl:if>
									<xsl:if test="string-length(./ns2:OriginalCreatedDate)!=0">
										<originalCreatedDate>
											<xsl:value-of select="./ns2:OriginalCreatedDate" />
										</originalCreatedDate>
									</xsl:if>
									<xsl:if test="string-length(./ns2:OriginalId)!=0">
										<originalId>
											<xsl:value-of select="./ns2:OriginalId" />
										</originalId>
									</xsl:if>	
									<xsl:if test="string-length(./ns2:PreviousSubscriptionId)!=0">
										<previousSubscriptionId>
											<xsl:value-of select="./ns2:PreviousSubscriptionId" />
										</previousSubscriptionId>
									</xsl:if>
									<xsl:if test="string-length(./ns2:PROVISIONING_LAST_ID__c)!=0">
										<provisioningLastId>
											<xsl:value-of select="./ns2:PROVISIONING_LAST_ID__c" />
										</provisioningLastId>
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
									<xsl:if test="string-length(./ns2:QuoteBusinessType__QT)!=0">
										<quoteBusinessType>
											<xsl:value-of select="./ns2:QuoteBusinessType__QT" />
										</quoteBusinessType>
									</xsl:if>	
									<xsl:if test="string-length(./ns2:QuoteNumber__QT)!=0">
										<quoteNumber>
											<xsl:value-of select="./ns2:QuoteNumber__QT" />
										</quoteNumber>
									</xsl:if>
									<xsl:if test="string-length(./ns2:QuoteType__QT)!=0">
										<quoteType>
											<xsl:value-of select="./ns2:QuoteType__QT" />
										</quoteType>
									</xsl:if>
									<xsl:if test="string-length(./ns2:RenewalSetting)!=0">
										<renewalSetting>
											<xsl:value-of select="./ns2:RenewalSetting" />
										</renewalSetting>
									</xsl:if>	
									<xsl:if test="string-length(./ns2:RenewalTerm)!=0">
										<renewalTerm>
											<xsl:value-of select="./ns2:RenewalTerm" />
										</renewalTerm>
									</xsl:if>
									<xsl:if test="string-length(./ns2:RenewalTriggerInfo1__c)!=0">
										<renewalTriggerInfo1>
											<xsl:value-of select="./ns2:RenewalTriggerInfo1__c" />
										</renewalTriggerInfo1>
									</xsl:if>
									<xsl:if test="string-length(./ns2:RenewalTriggerInfo2__c)!=0">
										<renewalTriggerInfo2>
											<xsl:value-of select="./ns2:RenewalTriggerInfo2__c" />
										</renewalTriggerInfo2>
									</xsl:if>
									<xsl:if test="string-length(./ns2:ServiceActivationDate)!=0">
										<serviceActivationDate>
											<xsl:value-of select="./ns2:ServiceActivationDate" />
										</serviceActivationDate>
									</xsl:if>
									<xsl:if test="string-length(./ns2:Shopping_Cart_Label__c)!=0">
										<shoppingCartLabel>
											<xsl:value-of select="./ns2:Shopping_Cart_Label__c" />
										</shoppingCartLabel>
									</xsl:if>	
									<xsl:if test="string-length(./ns2:SourcePurchase__c)!=0">
										<sourcePurchase>
											<xsl:value-of select="./ns2:SourcePurchase__c" />
										</sourcePurchase>
									</xsl:if>
									<xsl:if test="string-length(./ns2:Status)!=0">
										<status>
											<xsl:value-of select="./ns2:Status" />
										</status>
									</xsl:if>
									<xsl:if test="string-length(./ns2:SubscriptionEndDate)!=0">
										<subscriptionEndDate>
											<xsl:value-of select="./ns2:SubscriptionEndDate" />
										</subscriptionEndDate>
									</xsl:if>	
									<xsl:if test="string-length(./ns2:SubscriptionStartDate)!=0">
										<subscriptionStartDate>
											<xsl:value-of select="./ns2:SubscriptionStartDate" />
										</subscriptionStartDate>
									</xsl:if>		
									<xsl:if test="string-length(./ns2:TECH_ReferenceQuote__c)!=0">
										<TECHReferenceQuote>
											<xsl:value-of select="./ns2:TECH_ReferenceQuote__c" />
										</TECHReferenceQuote>
									</xsl:if>
									<xsl:if test="string-length(./ns2:TermEndDate)!=0">
										<termEndDate>
											<xsl:value-of select="./ns2:TermEndDate" />
										</termEndDate>
									</xsl:if>
									<xsl:if test="string-length(./ns2:TermStartDate)!=0">
										<termStartDate>
											<xsl:value-of select="./ns2:TermStartDate" />
										</termStartDate>
									</xsl:if>
									<xsl:if test="string-length(./ns2:TermType)!=0">
										<termType>
											<xsl:value-of select="./ns2:TermType" />
										</termType>
									</xsl:if>
									<xsl:if test="string-length(./ns2:Trial__c)!=0">
										<trial>
											<xsl:value-of select="./ns2:Trial__c" />
										</trial>
									</xsl:if>
									<xsl:if test="string-length(./ns2:UpdatedById)!=0">
										<updatedById>
											<xsl:value-of select="./ns2:UpdatedById" />
										</updatedById>
									</xsl:if>
									<xsl:if test="string-length(./ns2:UpdatedDate)!=0">
										<updatedDate>
											<xsl:value-of select="./ns2:UpdatedDate" />
										</updatedDate>
									</xsl:if>	
									<xsl:if test="string-length(./ns2:VERSION)!=0">
										<version>
											<xsl:value-of select="./ns2:VERSION" />
										</version>
									</xsl:if>
									<xsl:if test="string-length(./ns2:Z_ProvisionDate__c)!=0">
										<provisioningDate>
											<xsl:value-of select="./ns2:Z_ProvisionDate__c" />
										</provisioningDate>
									</xsl:if>
									<xsl:if test="string-length(./ns2:ZHMIGateManagerID__c)!=0">
										<zHMIGateManagerId>
											<xsl:value-of select="./ns2:ZHMIGateManagerID__c" />
										</zHMIGateManagerId>
									</xsl:if>
									<xsl:if test="string-length(./ns2:ZuoraContactId_1__c)!=0">
										<zuoraContactId1>
											<xsl:value-of select="./ns2:ZuoraContactId_1__c" />
										</zuoraContactId1>
									</xsl:if>
									<xsl:if test="string-length(./ns2:ZuoraContactId_2__c)!=0">
										<zuoraContactId2>
											<xsl:value-of select="./ns2:ZuoraContactId_2__c" />
										</zuoraContactId2>
									</xsl:if>
									<xsl:if test="string-length(./ns2:Solar_Site__c)!=0">
										<solarSite>
											<xsl:value-of select="./ns2:Solar_Site__c" />
										</solarSite>
									</xsl:if>
								</subscription>
							</xsl:for-each>
					</xsl:if>
				</subscriptions>
			</xsl:when>
			<xsl:otherwise>
				<subscriptions>
					<xsl:if
						test="string-length(//ns1:queryResponse/ns1:result/ns1:queryLocator/text())!=0">
						<queryId>
							<xsl:value-of
								select="substring-before(//ns1:queryResponse/ns1:result/ns1:queryLocator/text(),'-')" />
						</queryId>
					</xsl:if>
					<xsl:choose>
						<xsl:when
							test="string-length(//ns1:queryResponse/ns1:result/ns1:size/text())!=0">
							<recordCount>
								<xsl:value-of select="//ns1:queryResponse/ns1:result/ns1:size/text()" />
							</recordCount>
						</xsl:when>
						<xsl:when
							test="string-length(//ns1:queryMoreResponse/ns1:result/ns1:records/ns1:size/text())!=0">
							<recordCount>
								<xsl:value-of
									select="//ns1:queryMoreResponse/ns1:result/ns1:records/ns1:size/text()" />
							</recordCount>
						</xsl:when>
						<xsl:otherwise>
							<recordCount>0</recordCount>
						</xsl:otherwise>
					</xsl:choose>
					<xsl:if test="string-length(//ns1:queryResponse/ns1:result/ns1:records)!=0">
							<xsl:for-each select="//ns1:queryResponse/ns1:result/ns1:records">
								<subscription>
									<xsl:if test="string-length(./ns2:Id)!=0">
										<id>
											<xsl:value-of select="./ns2:Id" />
										</id>
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
									<xsl:if test="string-length(./ns2:AutoRenew)!=0">
										<autoRenew>
											<xsl:value-of select="./ns2:AutoRenew" />
										</autoRenew>
									</xsl:if>
									<xsl:if test="string-length(./ns2:CancelledDate)!=0">
										<cancelledDate>
											<xsl:value-of select="./ns2:CancelledDate" />
										</cancelledDate>
									</xsl:if>
									<xsl:if test="string-length(./ns2:ContractAcceptanceDate)!=0">
										<contractAcceptanceDate>
											<xsl:value-of select="./ns2:ContractAcceptanceDate" />
										</contractAcceptanceDate>
									</xsl:if>
									<xsl:if test="string-length(./ns2:ContractEffectiveDate)!=0">
										<contractEffectiveDate>
											<xsl:value-of select="./ns2:ContractEffectiveDate" />
										</contractEffectiveDate>
									</xsl:if>
									<xsl:if test="string-length(./ns2:CoolOff__c)!=0">
										<coolOff>
											<xsl:value-of select="./ns2:CoolOff__c" />
										</coolOff>
									</xsl:if>
									<xsl:if test="string-length(./ns2:CpqBundleJsonId__QT)!=0">
										<cpqBundleJsonId>
											<xsl:value-of select="./ns2:CpqBundleJsonId__QT" />
										</cpqBundleJsonId>
									</xsl:if>
									<xsl:if test="string-length(./ns2:CreatedById)!=0">
										<createdById>
											<xsl:value-of select="./ns2:CreatedById" />
										</createdById>
									</xsl:if>
									<xsl:if test="string-length(./ns2:CreatedDate)!=0">
										<createdDate>
											<xsl:value-of select="./ns2:CreatedDate" />
										</createdDate>
									</xsl:if>
									<xsl:if test="string-length(./ns2:CreatorAccountId)!=0">
										<creatorAccountId>
											<xsl:value-of select="./ns2:CreatorAccountId" />
										</creatorAccountId>
									</xsl:if>
									<xsl:if test="string-length(./ns2:CreatorInvoiceOwnerId)!=0">
										<creatorInvoiceOwnerId>
											<xsl:value-of select="./ns2:CreatorInvoiceOwnerId" />
										</creatorInvoiceOwnerId>
									</xsl:if>
									<xsl:if test="string-length(./ns2:CustomDateAttribute1__c)!=0">
										<customDateAttribute>
											<xsl:value-of select="./ns2:CustomDateAttribute1__c" />
										</customDateAttribute>
									</xsl:if>
									<xsl:if test="string-length(./ns2:CustomerPaymentReference__c)!=0">
										<customerPaymentReference>
											<xsl:value-of select="./ns2:CustomerPaymentReference__c" />
										</customerPaymentReference>
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
									<xsl:if test="string-length(./ns2:Entity__c)!=0">
										<entity>
											<xsl:value-of select="./ns2:Entity__c" />
										</entity>
									</xsl:if>
									<xsl:if test="string-length(./ns2:InitialTerm)!=0">
										<initialTerm>
											<xsl:value-of select="./ns2:InitialTerm" />
										</initialTerm>
									</xsl:if>
									<xsl:if test="string-length(./ns2:Installer_email__c)!=0">
										<installerEmail>
											<xsl:value-of select="./ns2:Installer_email__c" />
										</installerEmail>
									</xsl:if>									
									<xsl:if test="string-length(./ns2:InvoiceOwnerId)!=0">
										<invoiceOwnerId>
											<xsl:value-of select="./ns2:InvoiceOwnerId" />
										</invoiceOwnerId>
									</xsl:if>
									<xsl:if test="string-length(./ns2:IsInvoiceSeparate)!=0">
										<isInvoiceSeparate>
											<xsl:value-of select="./ns2:IsInvoiceSeparate" />
										</isInvoiceSeparate>
									</xsl:if>
									<xsl:if test="string-length(./ns2:Name)!=0">
										<name>
											<xsl:value-of select="./ns2:Name" />
										</name>
									</xsl:if>
									<xsl:if test="string-length(./ns2:Notes)!=0">
										<notes>
											<xsl:value-of select="./ns2:Notes" />
										</notes>
									</xsl:if>
									<xsl:if test="string-length(./ns2:opportunity__c)!=0">
										<opportunity>
											<xsl:value-of select="./ns2:opportunity__c" />
										</opportunity>
									</xsl:if>
									<xsl:if test="string-length(./ns2:OpportunityCloseDate__QT)!=0">
										<opportunityCloseDate>
											<xsl:value-of select="./ns2:OpportunityCloseDate__QT" />
										</opportunityCloseDate>
									</xsl:if>
									<xsl:if test="string-length(./ns2:OpportunityName__QT)!=0">
										<opportunityName>
											<xsl:value-of select="./ns2:OpportunityName__QT" />
										</opportunityName>
									</xsl:if>
									<xsl:if test="string-length(./ns2:Order_Created_By__c)!=0">
										<orderCreatedBy>
											<xsl:value-of select="./ns2:Order_Created_By__c" />
										</orderCreatedBy>
									</xsl:if>	
									<xsl:if test="string-length(./ns2:Order_Modified_By__c)!=0">
										<orderModifiedBy>
											<xsl:value-of select="./ns2:Order_Modified_By__c" />
										</orderModifiedBy>
									</xsl:if>
									<xsl:if test="string-length(./ns2:OriginalCreatedDate)!=0">
										<originalCreatedDate>
											<xsl:value-of select="./ns2:OriginalCreatedDate" />
										</originalCreatedDate>
									</xsl:if>
									<xsl:if test="string-length(./ns2:OriginalId)!=0">
										<originalId>
											<xsl:value-of select="./ns2:OriginalId" />
										</originalId>
									</xsl:if>	
									<xsl:if test="string-length(./ns2:PreviousSubscriptionId)!=0">
										<previousSubscriptionId>
											<xsl:value-of select="./ns2:PreviousSubscriptionId" />
										</previousSubscriptionId>
									</xsl:if>
									<xsl:if test="string-length(./ns2:PROVISIONING_LAST_ID__c)!=0">
										<provisioningLastId>
											<xsl:value-of select="./ns2:PROVISIONING_LAST_ID__c" />
										</provisioningLastId>
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
									<xsl:if test="string-length(./ns2:QuoteBusinessType__QT)!=0">
										<quoteBusinessType>
											<xsl:value-of select="./ns2:QuoteBusinessType__QT" />
										</quoteBusinessType>
									</xsl:if>	
									<xsl:if test="string-length(./ns2:QuoteNumber__QT)!=0">
										<quoteNumber>
											<xsl:value-of select="./ns2:QuoteNumber__QT" />
										</quoteNumber>
									</xsl:if>
									<xsl:if test="string-length(./ns2:QuoteType__QT)!=0">
										<quoteType>
											<xsl:value-of select="./ns2:QuoteType__QT" />
										</quoteType>
									</xsl:if>
									<xsl:if test="string-length(./ns2:RenewalSetting)!=0">
										<renewalSetting>
											<xsl:value-of select="./ns2:RenewalSetting" />
										</renewalSetting>
									</xsl:if>	
									<xsl:if test="string-length(./ns2:RenewalTerm)!=0">
										<renewalTerm>
											<xsl:value-of select="./ns2:RenewalTerm" />
										</renewalTerm>
									</xsl:if>
									<xsl:if test="string-length(./ns2:RenewalTriggerInfo1__c)!=0">
										<renewalTriggerInfo1>
											<xsl:value-of select="./ns2:RenewalTriggerInfo1__c" />
										</renewalTriggerInfo1>
									</xsl:if>
									<xsl:if test="string-length(./ns2:RenewalTriggerInfo2__c)!=0">
										<renewalTriggerInfo2>
											<xsl:value-of select="./ns2:RenewalTriggerInfo2__c" />
										</renewalTriggerInfo2>
									</xsl:if>
									<xsl:if test="string-length(./ns2:ServiceActivationDate)!=0">
										<serviceActivationDate>
											<xsl:value-of select="./ns2:ServiceActivationDate" />
										</serviceActivationDate>
									</xsl:if>
									<xsl:if test="string-length(./ns2:Shopping_Cart_Label__c)!=0">
										<shoppingCartLabel>
											<xsl:value-of select="./ns2:Shopping_Cart_Label__c" />
										</shoppingCartLabel>
									</xsl:if>	
									<xsl:if test="string-length(./ns2:SourcePurchase__c)!=0">
										<sourcePurchase>
											<xsl:value-of select="./ns2:SourcePurchase__c" />
										</sourcePurchase>
									</xsl:if>
									<xsl:if test="string-length(./ns2:Status)!=0">
										<status>
											<xsl:value-of select="./ns2:Status" />
										</status>
									</xsl:if>
									<xsl:if test="string-length(./ns2:SubscriptionEndDate)!=0">
										<subscriptionEndDate>
											<xsl:value-of select="./ns2:SubscriptionEndDate" />
										</subscriptionEndDate>
									</xsl:if>	
									<xsl:if test="string-length(./ns2:SubscriptionStartDate)!=0">
										<subscriptionStartDate>
											<xsl:value-of select="./ns2:SubscriptionStartDate" />
										</subscriptionStartDate>
									</xsl:if>		
									<xsl:if test="string-length(./ns2:TECH_ReferenceQuote__c)!=0">
										<TECHReferenceQuote>
											<xsl:value-of select="./ns2:TECH_ReferenceQuote__c" />
										</TECHReferenceQuote>
									</xsl:if>
									<xsl:if test="string-length(./ns2:TermEndDate)!=0">
										<termEndDate>
											<xsl:value-of select="./ns2:TermEndDate" />
										</termEndDate>
									</xsl:if>
									<xsl:if test="string-length(./ns2:TermStartDate)!=0">
										<termStartDate>
											<xsl:value-of select="./ns2:TermStartDate" />
										</termStartDate>
									</xsl:if>
									<xsl:if test="string-length(./ns2:TermType)!=0">
										<termType>
											<xsl:value-of select="./ns2:TermType" />
										</termType>
									</xsl:if>
									<xsl:if test="string-length(./ns2:Trial__c)!=0">
										<trial>
											<xsl:value-of select="./ns2:Trial__c" />
										</trial>
									</xsl:if>
									<xsl:if test="string-length(./ns2:UpdatedById)!=0">
										<updatedById>
											<xsl:value-of select="./ns2:UpdatedById" />
										</updatedById>
									</xsl:if>
									<xsl:if test="string-length(./ns2:UpdatedDate)!=0">
										<updatedDate>
											<xsl:value-of select="./ns2:UpdatedDate" />
										</updatedDate>
									</xsl:if>	
									<xsl:if test="string-length(./ns2:VERSION)!=0">
										<version>
											<xsl:value-of select="./ns2:VERSION" />
										</version>
									</xsl:if>
									<xsl:if test="string-length(./ns2:Z_ProvisionDate__c)!=0">
										<provisioningDate>
											<xsl:value-of select="./ns2:Z_ProvisionDate__c" />
										</provisioningDate>
									</xsl:if>
									<xsl:if test="string-length(./ns2:ZHMIGateManagerID__c)!=0">
										<zHMIGateManagerId>
											<xsl:value-of select="./ns2:ZHMIGateManagerID__c" />
										</zHMIGateManagerId>
									</xsl:if>
									<xsl:if test="string-length(./ns2:ZuoraContactId_1__c)!=0">
										<zuoraContactId1>
											<xsl:value-of select="./ns2:ZuoraContactId_1__c" />
										</zuoraContactId1>
									</xsl:if>
									<xsl:if test="string-length(./ns2:ZuoraContactId_2__c)!=0">
										<zuoraContactId2>
											<xsl:value-of select="./ns2:ZuoraContactId_2__c" />
										</zuoraContactId2>
									</xsl:if>
									<xsl:if test="string-length(./ns2:Solar_Site__c)!=0">
										<solarSite>
											<xsl:value-of select="./ns2:Solar_Site__c" />
										</solarSite>
									</xsl:if>
								</subscription>
							</xsl:for-each>
					</xsl:if>
				</subscriptions>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
</xsl:stylesheet>
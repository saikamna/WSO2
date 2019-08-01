<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
   <xsl:output method="xml" version="1.0" encoding="UTF-8"/>
   <xsl:template match="/">
      <subscription>
			<xsl:if test="count(/*[1]/accountId)!=0">
				<AccountId>
					<xsl:value-of select="/*[1]/accountId"/>
				</AccountId>
			</xsl:if>
			<xsl:if test="count(/*[1]/autoRenew)!=0">
				<AutoRenew>
					<xsl:value-of select="/*[1]/autoRenew"/>
				</AutoRenew>
			</xsl:if>
			<xsl:if test="count(/*[1]/contractAcceptanceDate)!=0">
				<ContractAcceptanceDate>
					<xsl:value-of select="/*[1]/contractAcceptanceDate"/>
				</ContractAcceptanceDate>
			</xsl:if>
			<xsl:if test="count(/*[1]/contractEffectiveDate)!=0">
				<ContractEffectiveDate>
					<xsl:value-of select="/*[1]/contractEffectiveDate"/>
				</ContractEffectiveDate>
			</xsl:if>
			<xsl:if test="count(/*[1]/currentTermPeriodType)!=0">
				<CurrentTermPeriodType>
					<xsl:value-of select="/*[1]/currentTermPeriodType"/>
				</CurrentTermPeriodType>
			</xsl:if>
			<xsl:if test="count(/*[1]/initialTerm)!=0">
				<InitialTerm>
					<xsl:value-of select="/*[1]/initialTerm"/>
				</InitialTerm>
			</xsl:if>
			<xsl:if test="count(/*[1]/initialTermPeriodType)!=0">
				<InitialTermPeriodType>
					<xsl:value-of select="/*[1]/initialTermPeriodType"/>
				</InitialTermPeriodType>
			</xsl:if>
			<xsl:if test="count(/*[1]/invoiceOwnerId)!=0">
				<InvoiceOwnerId>
					<xsl:value-of select="/*[1]/invoiceOwnerId"/>
				</InvoiceOwnerId>
			</xsl:if>
			<xsl:if test="count(/*[1]/isInvoiceSeparate)!=0">
				<IsInvoiceSeparate>
					<xsl:value-of select="/*[1]/isInvoiceSeparate"/>
				</IsInvoiceSeparate>
			</xsl:if>
			<xsl:if test="count(/*[1]/name)!=0">
				<Name>
					<xsl:value-of select="/*[1]/name"/>
				</Name>
			</xsl:if>
			<xsl:if test="count(/*[1]/notes)!=0">
				<Notes>
					<xsl:value-of select="/*[1]/notes"/>
				</Notes>
			</xsl:if>
			<xsl:if test="count(/*[1]/renewalSetting)!=0">
				<RenewalSetting>
					<xsl:value-of select="/*[1]/renewalSetting"/>
				</RenewalSetting>
			</xsl:if>
			<xsl:if test="count(/*[1]/renewalTerm)!=0">
				<RenewalTerm>
					<xsl:value-of select="/*[1]/renewalTerm"/>
				</RenewalTerm>
			</xsl:if>
			<xsl:if test="count(/*[1]/renewalTermPeriodType)!=0">
				<RenewalTermPeriodType>
					<xsl:value-of select="/*[1]/renewalTermPeriodType"/>
				</RenewalTermPeriodType>
			</xsl:if>
			<xsl:if test="count(/*[1]/serviceActivationDate)!=0">
				<ServiceActivationDate>
					<xsl:value-of select="/*[1]/serviceActivationDate"/>
				</ServiceActivationDate>
			</xsl:if>
			<xsl:if test="count(/*[1]/termStartDate)!=0">
				<TermStartDate>
					<xsl:value-of select="/*[1]/termStartDate"/>
				</TermStartDate>
			</xsl:if>
			<xsl:if test="count(/*[1]/termType)!=0">
				<TermType>
					<xsl:value-of select="/*[1]/termType"/>
				</TermType>
			</xsl:if>
			<xsl:if test="count(/*[1]/cpqBundleJsonIdQT)!=0">
				<CpqBundleJsonId__QT>
					<xsl:value-of select="/*[1]/cpqBundleJsonIdQT"/>
				</CpqBundleJsonId__QT>
			</xsl:if>
			<xsl:if test="count(/*[1]/opportunityCloseDateQT)!=0">
				<OpportunityCloseDate__QT>
					<xsl:value-of select="/*[1]/opportunityCloseDateQT"/>
				</OpportunityCloseDate__QT>
			</xsl:if>
			<xsl:if test="count(/*[1]/opportunityNameQT)!=0">
				<OpportunityName__QT>
					<xsl:value-of select="/*[1]/opportunityNameQT"/>
				</OpportunityName__QT>
			</xsl:if>
			<xsl:if test="count(/*[1]/quoteBusinessTypeQT)!=0">
				<QuoteBusinessType__QT>
					<xsl:value-of select="/*[1]/quoteBusinessTypeQT"/>
				</QuoteBusinessType__QT>
			</xsl:if>
			<xsl:if test="count(/*[1]/quoteNumberQT)!=0">
				<QuoteNumber__QT>
					<xsl:value-of select="/*[1]/quoteNumberQT"/>
				</QuoteNumber__QT>
			</xsl:if>
			<xsl:if test="count(/*[1]/quoteTypeQT)!=0">
				<QuoteType__QT>
					<xsl:value-of select="/*[1]/quoteTypeQT"/>
				</QuoteType__QT>
			</xsl:if>
			<xsl:if test="count(/*[1]/orderModifiedBy)!=0">
				<Order_Modified_By__c>
					<xsl:value-of select="/*[1]/orderModifiedBy"/>
				</Order_Modified_By__c>
			</xsl:if>
			<xsl:if test="count(/*[1]/shoppingCartLabel)!=0">
				<Shopping_Cart_Label__c>
					<xsl:value-of select="/*[1]/shoppingCartLabel"/>
				</Shopping_Cart_Label__c>
			</xsl:if>
			<xsl:if test="count(/*[1]/orderCreatedBy)!=0">
				<Order_Created_By__c>
					<xsl:value-of select="/*[1]/orderCreatedBy"/>
				</Order_Created_By__c>
			</xsl:if>
			<xsl:if test="count(/*[1]/provisioningLastId)!=0">
				<PROVISIONING_LAST_ID__c>
					<xsl:value-of select="/*[1]/provisioningLastId"/>
				</PROVISIONING_LAST_ID__c>
			</xsl:if>
			<xsl:if test="count(/*[1]/provisioningLastTimestamp)!=0">
				<PROVISIONING_LAST_TIMESTAMP__c>
					<xsl:value-of select="/*[1]/provisioningLastTimestamp"/>
				</PROVISIONING_LAST_TIMESTAMP__c>
			</xsl:if>
			<xsl:if test="count(/*[1]/provisioningLastResult)!=0">
				<PROVISIONING_LAST_RESULT__c>
					<xsl:value-of select="/*[1]/provisioningLastResult"/>
				</PROVISIONING_LAST_RESULT__c>
			</xsl:if>
			<xsl:if test="count(/*[1]/trial)!=0">
				<Trial__c>
					<xsl:value-of select="/*[1]/trial"/>
				</Trial__c>
			</xsl:if>
			<xsl:if test="count(/*[1]/mailInfoNewSub)!=0">
				<MailInfoNewSub__c>
					<xsl:value-of select="/*[1]/mailInfoNewSub"/>
				</MailInfoNewSub__c>
			</xsl:if>
			<xsl:if test="count(/*[1]/costTypeValue)!=0">
				<CostTypeValue__c>
					<xsl:value-of select="/*[1]/costTypeValue"/>
				</CostTypeValue__c>
			</xsl:if>
			<xsl:if test="count(/*[1]/costType)!=0">
				<CostType__c>
					<xsl:value-of select="/*[1]/costType"/>
				</CostType__c>
			</xsl:if>
			<xsl:if test="count(/*[1]/solarSite)!=0">
				<Solar_Site__c>
					<xsl:value-of select="/*[1]/solarSite"/>
				</Solar_Site__c>
			</xsl:if>
			<xsl:if test="count(/*[1]/renewalTriggerInfo2)!=0">
				<RenewalTriggerInfo2__c>
					<xsl:value-of select="/*[1]/renewalTriggerInfo2"/>
				</RenewalTriggerInfo2__c>
			</xsl:if>
			<xsl:if test="count(/*[1]/renewalTriggerInfo1)!=0">
				<RenewalTriggerInfo1__c>
					<xsl:value-of select="/*[1]/renewalTriggerInfo1"/>
				</RenewalTriggerInfo1__c>
			</xsl:if>
			<xsl:if test="count(/*[1]/customDateAttribute1)!=0">
				<CustomDateAttribute1__c>
					<xsl:value-of select="/*[1]/customDateAttribute1"/>
				</CustomDateAttribute1__c>
			</xsl:if>
			<xsl:if test="count(/*[1]/customTextAttribute2)!=0">
				<CustomTextAttribute2__c>
					<xsl:value-of select="/*[1]/customTextAttribute2"/>
				</CustomTextAttribute2__c>
			</xsl:if>
			<xsl:if test="count(/*[1]/customTextAttribute1)!=0">
				<CustomTextAttribute1__c>
					<xsl:value-of select="/*[1]/customTextAttribute1"/>
				</CustomTextAttribute1__c>
			</xsl:if>
			<xsl:if test="count(/*[1]/gateManagerId)!=0">
				<ZHMIGateManagerID__c>
					<xsl:value-of select="/*[1]/gateManagerId"/>
				</ZHMIGateManagerID__c>
			</xsl:if>
			<xsl:if test="count(/*[1]/zuoraContactId2)!=0">
				<ZuoraContactId_2__c>
					<xsl:value-of select="/*[1]/zuoraContactId2"/>
				</ZuoraContactId_2__c>
			</xsl:if>
			<xsl:if test="count(/*[1]/customerPaymentReference)!=0">
				<CustomerPaymentReference__c>
					<xsl:value-of select="/*[1]/customerPaymentReference"/>
				</CustomerPaymentReference__c>
			</xsl:if>
			<xsl:if test="count(/*[1]/coolOff)!=0">
				<CoolOff__c>
					<xsl:value-of select="/*[1]/coolOff"/>
				</CoolOff__c>
			</xsl:if>
			<xsl:if test="count(/*[1]/nbMW)!=0">
				<Nb_MW__c>
					<xsl:value-of select="/*[1]/nbMW"/>
				</Nb_MW__c>
			</xsl:if>
			<xsl:if test="count(/*[1]/referenceQuote)!=0">
				<TECH_ReferenceQuote__c>
					<xsl:value-of select="/*[1]/referenceQuote"/>
				</TECH_ReferenceQuote__c>
			</xsl:if>
			<xsl:if test="count(/*[1]/installerEmail)!=0">
				<Installer_email__c>
					<xsl:value-of select="/*[1]/installerEmail"/>
				</Installer_email__c>
			</xsl:if>
			<xsl:if test="count(/*[1]/sourcePurchase)!=0">
				<SourcePurchase__c>
					<xsl:value-of select="/*[1]/sourcePurchase"/>
				</SourcePurchase__c>
			</xsl:if>
			<xsl:if test="count(/*[1]/opportunity)!=0">
				<Opportunity__c>
					<xsl:value-of select="/*[1]/opportunity"/>
				</Opportunity__c>
			</xsl:if>
			<xsl:if test="count(/*[1]/entity)!=0">
				<Entity__c>
					<xsl:value-of select="/*[1]/entity"/>
				</Entity__c>
			</xsl:if>
			<xsl:if test="count(/*[1]/provisionDate)!=0">
				<Z_ProvisionDate__c>
					<xsl:value-of select="/*[1]/provisionDate"/>
				</Z_ProvisionDate__c>
			</xsl:if>
			<xsl:if test="count(/*[1]/assetSN)!=0">
				<Asset_SN__c>
					<xsl:value-of select="/*[1]/assetSN"/>
				</Asset_SN__c>
			</xsl:if>
			<xsl:if test="count(/*[1]/assetSKU)!=0">
				<Asset_SKU__c>
					<xsl:value-of select="/*[1]/assetSKU"/>
				</Asset_SKU__c>
			</xsl:if>
			<xsl:if test="count(/*[1]/zuoraContactId1)!=0">
				<ZuoraContactId_1__c>
					<xsl:value-of select="/*[1]/zuoraContactId1"/>
				</ZuoraContactId_1__c>
			</xsl:if>
      </subscription>
   </xsl:template>
</xsl:stylesheet>
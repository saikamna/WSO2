<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:api="http://api.zuora.com/"
	xmlns:ns1="http://api.zuora.com/" xmlns:ns2="http://object.api.zuora.com/">
	<xsl:output method="xml" indent="yes" version="1.0" encoding="UTF-8" />

	<xsl:template match="/">
		<xsl:variable name="Id" select="&quot; Id&quot;" />
		<xsl:variable name="AccountId" select="&quot; AccountId&quot;" />
		<xsl:variable name="AssetSN" select="&quot; Asset_SN__c&quot;" />
		<xsl:variable name="AssetSKU" select="&quot; Asset_SKU__c&quot;" />
		<xsl:variable name="AutoRenew" select="&quot; AutoRenew&quot;" />
		<xsl:variable name="CancelledDate" select="&quot; CancelledDate&quot;" />
		<xsl:variable name="ContractAcceptanceDate" select="&quot; ContractAcceptanceDate&quot;" />
		<xsl:variable name="ContractEffectiveDate" select="&quot; ContractEffectiveDate&quot;" />
		<xsl:variable name="CoolOff" select="&quot; CoolOff__c&quot;" />
		<xsl:variable name="CpqBundleJsonId" select="&quot; CpqBundleJsonId__QT&quot;" />
		<xsl:variable name="CreatedById" select="&quot; CreatedById&quot;" />
		<xsl:variable name="CreatedDate" select="&quot; CreatedDate&quot;" />
		<xsl:variable name="CreatorAccountId" select="&quot; CreatorAccountId&quot;" />
		<xsl:variable name="CreatorInvoiceOwnerId" select="&quot; CreatorInvoiceOwnerId&quot;" />
		<xsl:variable name="CustomDateAttribute1" select="&quot; CustomDateAttribute1__c&quot;" />
		<xsl:variable name="CustomerPaymentReference" select="&quot; CustomerPaymentReference__c&quot;" />
		<xsl:variable name="CustomTextAttribute1" select="&quot; CustomTextAttribute1__c&quot;" />
		<xsl:variable name="CustomTextAttribute2" select="&quot; CustomTextAttribute2__c&quot;" />
		<xsl:variable name="Entity" select="&quot; Entity__c&quot;" />
		<xsl:variable name="InitialTerm" select="&quot; InitialTerm&quot;" />
		<xsl:variable name="Installeremail" select="&quot; Installer_email__c&quot;" />
		<xsl:variable name="InvoiceOwnerId" select="&quot; InvoiceOwnerId&quot;" />
		<xsl:variable name="IsInvoiceSeparate" select="&quot; IsInvoiceSeparate&quot;" />
		<xsl:variable name="Name" select="&quot; Name&quot;" />
		<xsl:variable name="Notes" select="&quot; Notes&quot;" />
		<xsl:variable name="opportunity" select="&quot; opportunity__c&quot;" />
		<xsl:variable name="OpportunityCloseDate" select="&quot; OpportunityCloseDate__QT&quot;" />
		<xsl:variable name="OpportunityName" select="&quot; OpportunityName__QT&quot;" />
		<xsl:variable name="OrderCreatedBy" select="&quot; Order_Created_By__c&quot;" />
		<xsl:variable name="OrderModifiedBy" select="&quot; Order_Modified_By__c&quot;" />
		<xsl:variable name="OriginalCreatedDate" select="&quot; OriginalCreatedDate&quot;" />
		<xsl:variable name="OriginalId" select="&quot; OriginalId&quot;" />
		<xsl:variable name="PreviousSubscriptionId" select="&quot; PreviousSubscriptionId&quot;" />
		<xsl:variable name="PROVISIONINGLASTID" select="&quot; PROVISIONING_LAST_ID__c&quot;" />
		<xsl:variable name="PROVISIONINGLASTRESULT" select="&quot; PROVISIONING_LAST_RESULT__c&quot;" />
		<xsl:variable name="PROVISIONINGLASTTIMESTAMP" select="&quot; PROVISIONING_LAST_TIMESTAMP__c&quot;" />
		<xsl:variable name="QuoteBusinessType" select="&quot; QuoteBusinessType__QT&quot;" />
		<xsl:variable name="QuoteNumber" select="&quot; QuoteNumber__QT&quot;" />
		<xsl:variable name="QuoteType" select="&quot; QuoteType__QT&quot;" />
		<xsl:variable name="RenewalSetting" select="&quot; RenewalSetting&quot;" />
		<xsl:variable name="RenewalTerm" select="&quot; RenewalTerm&quot;" />
		<xsl:variable name="RenewalTriggerInfo1" select="&quot; RenewalTriggerInfo1__c&quot;" />
		<xsl:variable name="RenewalTriggerInfo2" select="&quot; RenewalTriggerInfo2__c&quot;" />
		<xsl:variable name="ServiceActivationDate" select="&quot; ServiceActivationDate&quot;" />
		<xsl:variable name="ShoppingCartLabel" select="&quot; Shopping_Cart_Label__c&quot;" />
		<xsl:variable name="SourcePurchase" select="&quot; SourcePurchase__c&quot;" />
		<xsl:variable name="Status" select="&quot; Status&quot;" />
		<xsl:variable name="SubscriptionEndDate" select="&quot; SubscriptionEndDate&quot;" />
		<xsl:variable name="SubscriptionStartDate" select="&quot; SubscriptionStartDate&quot;" />
		<xsl:variable name="TECHReferenceQuote" select="&quot; TECH_ReferenceQuote__c&quot;" />
		<xsl:variable name="TermEndDate" select="&quot; TermEndDate&quot;" />
		<xsl:variable name="TermStartDate" select="&quot; TermStartDate&quot;" />
		<xsl:variable name="TermType" select="&quot; TermType&quot;" />
		<xsl:variable name="Trial" select="&quot; Trial__c&quot;" />
		<xsl:variable name="UpdatedById" select="&quot; UpdatedById&quot;" />
		<xsl:variable name="UpdatedDate" select="&quot; UpdatedDate&quot;" />
		<xsl:variable name="version" select="&quot; VERSION&quot;" />
		<xsl:variable name="ProvisionDate" select="&quot; Z_ProvisionDate__c&quot;" />
		<xsl:variable name="ZHMIGateManagerID" select="&quot; ZHMIGateManagerID__c&quot;" />
		<xsl:variable name="ZuoraContactId1" select="&quot; ZuoraContactId_1__c&quot;" />
		<xsl:variable name="ZuoraContactId2" select="&quot; ZuoraContactId_2__c&quot;" />		
		<xsl:variable name="SolarSite" select="&quot; Solar_Site__c&quot;" />
		
		<xsl:variable name="Pos" select="&quot;%&apos;&quot;" />
		<xsl:variable name="Pos1" select="&quot;&apos;&quot;" />
		<xsl:variable name="Pos2" select="&quot; like &apos;&quot;" />  
		<xsl:variable name="Pos3" select="&quot; like &apos;%&quot;" />
		<xsl:variable name="Pos4" select="&quot; =&apos;&quot;" />
		<xsl:variable name="Pos5" select="&quot; &lt; &apos;&quot;" />
		<xsl:variable name="Pos6" select="&quot; &gt; &apos;&quot;" />
		<xsl:variable name="Pos7" select="&quot;&apos;&quot;" />
		
		<api:query>
			<api:queryString>SELECT Id, AccountId, Asset_SN__c, Asset_SKU__c, AutoRenew, CancelledDate, ContractAcceptanceDate, ContractEffectiveDate, CoolOff__c, CpqBundleJsonId__QT, CreatedById, CreatedDate, CreatorAccountId, CreatorInvoiceOwnerId, CustomDateAttribute1__c, CustomerPaymentReference__c, CustomTextAttribute1__c, CustomTextAttribute2__c, Entity__c, InitialTerm, Installer_email__c, InvoiceOwnerId, IsInvoiceSeparate, Name, Notes, opportunity__c, OpportunityCloseDate__QT, OpportunityName__QT, Order_Created_By__c, Order_Modified_By__c, OriginalCreatedDate, OriginalId, PreviousSubscriptionId, PROVISIONING_LAST_ID__c, PROVISIONING_LAST_RESULT__c, PROVISIONING_LAST_TIMESTAMP__c, QuoteBusinessType__QT, QuoteNumber__QT, QuoteType__QT, RenewalSetting, RenewalTerm, RenewalTriggerInfo1__c, RenewalTriggerInfo2__c, ServiceActivationDate, Shopping_Cart_Label__c, SourcePurchase__c, Status, SubscriptionEndDate, SubscriptionStartDate, TECH_ReferenceQuote__c, TermEndDate, TermStartDate, TermType, Trial__c, UpdatedById, UpdatedDate, VERSION, Z_ProvisionDate__c, ZHMIGateManagerID__c, ZuoraContactId_1__c, ZuoraContactId_2__c, Solar_Site__c FROM Subscription WHERE 
					
						<xsl:if test="string-length(//id)!=0">
							<xsl:value-of select="$Id" />
							<xsl:choose>
								<xsl:when test="//idCondition=&apos;Start-With&apos;">
									<xsl:value-of select="$Pos2" />
									<xsl:value-of select="//id" />
									<xsl:value-of select="$Pos" />
								</xsl:when>
								<xsl:when test="//idCondition=&apos;End-With&apos;">
									<xsl:value-of select="$Pos3" />
									<xsl:value-of select="//id" />
									<xsl:value-of select="$Pos1" />
								</xsl:when>
								<xsl:when test="//idCondition=&apos;Contains&apos;">
									<xsl:value-of select="$Pos4" />
									<xsl:value-of select="//id" />
									<xsl:value-of select="$Pos7" />
								</xsl:when>
								<xsl:otherwise>
									<xsl:value-of select="$Pos4" />
									<xsl:value-of select="//id" />
									<xsl:value-of select="$Pos7" />
								</xsl:otherwise>
							</xsl:choose>
							<xsl:text> AND</xsl:text>
						</xsl:if>
						<xsl:if test="string-length(//accountId)!=0">
							<xsl:value-of select="$AccountId" />
							<xsl:choose>
								<xsl:when test="//accountIdCondition=&apos;Start-With&apos;">
									<xsl:value-of select="$Pos2" />
									<xsl:value-of select="//accountId" />
									<xsl:value-of select="$Pos" />
								</xsl:when>
								<xsl:when test="//accountIdCondition=&apos;End-With&apos;">
									<xsl:value-of select="$Pos3" />
									<xsl:value-of select="//accountId" />
									<xsl:value-of select="$Pos1" />
								</xsl:when>
								<xsl:when test="//accountIdCondition=&apos;Contains&apos;">
									<xsl:value-of select="$Pos4" />
									<xsl:value-of select="//accountId" />
									<xsl:value-of select="$Pos7" />
								</xsl:when>
								<xsl:otherwise>
									<xsl:value-of select="$Pos4" />
									<xsl:value-of select="//accountId" />
									<xsl:value-of select="$Pos7" />
								</xsl:otherwise>
							</xsl:choose>
							<xsl:text> AND</xsl:text>
						</xsl:if>
						<xsl:if test="string-length(//assetSerialNumber)!=0">
							<xsl:value-of select="$AssetSN" />
							<xsl:choose>
								<xsl:when test="//assetSerialNumberCondition=&apos;Start-With&apos;">
									<xsl:value-of select="$Pos2" />
									<xsl:value-of select="//assetSerialNumber" />
									<xsl:value-of select="$Pos" />
								</xsl:when>
								<xsl:when test="//assetSerialNumberCondition=&apos;End-With&apos;">
									<xsl:value-of select="$Pos3" />
									<xsl:value-of select="//assetSerialNumber" />
									<xsl:value-of select="$Pos1" />
								</xsl:when>
								<xsl:when test="//assetSerialNumberCondition=&apos;Contains&apos;">
									<xsl:value-of select="$Pos4" />
									<xsl:value-of select="//assetSerialNumber" />
									<xsl:value-of select="$Pos7" />
								</xsl:when>
								<xsl:otherwise>
									<xsl:value-of select="$Pos4" />
									<xsl:value-of select="//assetSerialNumber" />
									<xsl:value-of select="$Pos7" />
								</xsl:otherwise>
							</xsl:choose>
							<xsl:text> AND</xsl:text>
						</xsl:if>
						<xsl:if test="string-length(//assetSKU)!=0">
							<xsl:value-of select="$AssetSKU" />
							<xsl:choose>
								<xsl:when test="//assetSKUCondition=&apos;Start-With&apos;">
									<xsl:value-of select="$Pos2" />
									<xsl:value-of select="//assetSKU" />
									<xsl:value-of select="$Pos" />
								</xsl:when>
								<xsl:when test="//assetSKUCondition=&apos;End-With&apos;">
									<xsl:value-of select="$Pos3" />
									<xsl:value-of select="//assetSKU" />
									<xsl:value-of select="$Pos1" />
								</xsl:when>
								<xsl:when test="//assetSKUCondition=&apos;Contains&apos;">
									<xsl:value-of select="$Pos4" />
									<xsl:value-of select="//assetSKU" />
									<xsl:value-of select="$Pos7" />
								</xsl:when>
								<xsl:otherwise>
									<xsl:value-of select="$Pos4" />
									<xsl:value-of select="//assetSKU" />
									<xsl:value-of select="$Pos7" />
								</xsl:otherwise>
							</xsl:choose>
							<xsl:text> AND</xsl:text>
						</xsl:if>
						<xsl:if test="string-length(//autoRenew)!=0">
							<xsl:value-of select="$AutoRenew" />
							<xsl:choose>
								<xsl:when
									test="//autoRenewCondition=&apos;Contains&apos;">
									<xsl:text>=</xsl:text>
									<xsl:value-of select="//autoRenew" />
								</xsl:when>
								<xsl:otherwise>
									<xsl:text>=</xsl:text>
									<xsl:value-of select="//autoRenew" />
								</xsl:otherwise>
							</xsl:choose>
							<xsl:text> AND</xsl:text>
						</xsl:if>
						<xsl:if test="string-length(//cancelledDate)!=0">
							<xsl:value-of select="$CancelledDate" />
							<xsl:choose>
								<xsl:when test="//cancelledDateCondition=&apos;Before&apos;">
									<xsl:value-of select="$Pos5" />
									<xsl:value-of select="//cancelledDate" />
									<xsl:value-of select="$Pos7" />
								</xsl:when>
								<xsl:when test="//cancelledDateCondition=&apos;After&apos;">
									<xsl:value-of select="$Pos6" />
									<xsl:value-of select="//cancelledDate" />
									<xsl:value-of select="$Pos7" />
								</xsl:when>
								<xsl:otherwise>
									<xsl:value-of select="$Pos4" />
									<xsl:value-of select="//cancelledDate" />
									<xsl:value-of select="$Pos7" />
								</xsl:otherwise>
							</xsl:choose>
							<xsl:text> AND</xsl:text>
						</xsl:if>
						<xsl:if test="string-length(//contractAcceptanceDate)!=0">
							<xsl:value-of select="$ContractAcceptanceDate" />
							<xsl:choose>
								<xsl:when
									test="//contractAcceptanceDateCondition=&apos;Before&apos;">
									<xsl:value-of select="$Pos5" />
									<xsl:value-of select="//contractAcceptanceDate" />
									<xsl:value-of select="$Pos7" />
								</xsl:when>
								<xsl:when test="//contractAcceptanceDateCondition=&apos;After&apos;">
									<xsl:value-of select="$Pos6" />
									<xsl:value-of select="//contractAcceptanceDate" />
									<xsl:value-of select="$Pos7" />
								</xsl:when>
								<xsl:otherwise>
									<xsl:value-of select="$Pos4" />
									<xsl:value-of select="//contractAcceptanceDate" />
									<xsl:value-of select="$Pos7" />
								</xsl:otherwise>
							</xsl:choose>
							<xsl:text> AND</xsl:text>
						</xsl:if>
						<xsl:if test="string-length(//contractEffectiveDate)!=0">
							<xsl:value-of select="$ContractEffectiveDate" />
							<xsl:choose>
								<xsl:when test="//contractEffectiveDateCondition=&apos;Before&apos;">
									<xsl:value-of select="$Pos5" />
									<xsl:value-of select="//contractEffectiveDate" />
									<xsl:value-of select="$Pos7" />
								</xsl:when>
								<xsl:when test="//contractEffectiveDateCondition=&apos;After&apos;">
									<xsl:value-of select="$Pos6" />
									<xsl:value-of select="//contractEffectiveDate" />
									<xsl:value-of select="$Pos7" />
								</xsl:when>
								<xsl:otherwise>
									<xsl:value-of select="$Pos4" />
									<xsl:value-of select="//contractEffectiveDate" />
									<xsl:value-of select="$Pos7" />
								</xsl:otherwise>
							</xsl:choose>
							<xsl:text> AND</xsl:text>
						</xsl:if>
						<xsl:if test="string-length(//coolOff)!=0">
							<xsl:value-of select="$CoolOff" />
							<xsl:choose>
								<xsl:when test="//coolOffCondition=&apos;Contains&apos;">
									<xsl:text>=</xsl:text>
									<xsl:value-of select="//coolOff" />
								</xsl:when>
								<xsl:otherwise>
									<xsl:text>=</xsl:text>
									<xsl:value-of select="//coolOff" />
								</xsl:otherwise>
							</xsl:choose>
							<xsl:text> AND</xsl:text>
						</xsl:if>
						<xsl:if test="string-length(//cpqBundleJsonId)!=0">
							<xsl:value-of select="$CpqBundleJsonId" />
							<xsl:choose>
								<xsl:when test="//cpqBundleJsonIdCondition=&apos;Start-With&apos;">
									<xsl:value-of select="$Pos2" />
									<xsl:value-of select="//cpqBundleJsonId" />
									<xsl:value-of select="$Pos" />
									<xsl:text>&amp;</xsl:text>
								</xsl:when>
								<xsl:when test="//cpqBundleJsonIdCondition=&apos;End-With&apos;">
									<xsl:value-of select="$Pos3" />
									<xsl:value-of select="//cpqBundleJsonId" />
									<xsl:value-of select="$Pos1" />
								</xsl:when>
								<xsl:when test="//cpqBundleJsonIdCondition=&apos;Contains&apos;">
									<xsl:value-of select="$Pos4" />
									<xsl:value-of select="//cpqBundleJsonId" />
									<xsl:value-of select="$Pos7" />
								</xsl:when>
								<xsl:otherwise>
									<xsl:value-of select="$Pos4" />
									<xsl:value-of select="//cpqBundleJsonId" />
									<xsl:value-of select="$Pos7" />
								</xsl:otherwise>
							</xsl:choose>
							<xsl:text> AND</xsl:text>
						</xsl:if>
						<xsl:if test="string-length(//createdById)!=0">
							<xsl:value-of select="$CreatedById" />
							<xsl:choose>
								<xsl:when test="//createdByIdCondition=&apos;Start-With&apos;">
									<xsl:value-of select="$Pos2" />
									<xsl:value-of select="//createdById" />
									<xsl:value-of select="$Pos" />
								</xsl:when>
								<xsl:when test="//createdByIdCondition=&apos;End-With&apos;">
									<xsl:value-of select="$Pos3" />
									<xsl:value-of select="//createdById" />
									<xsl:value-of select="$Pos1" />
								</xsl:when>
								<xsl:when test="//createdByIdCondition=&apos;Contains&apos;">
									<xsl:value-of select="$Pos4" />
									<xsl:value-of select="//createdById" />
									<xsl:value-of select="$Pos7" />
								</xsl:when>
								<xsl:otherwise>
									<xsl:value-of select="$Pos4" />
									<xsl:value-of select="//createdById" />
									<xsl:value-of select="$Pos7" />
								</xsl:otherwise>
							</xsl:choose>
							<xsl:text> AND</xsl:text>
						</xsl:if>
						<xsl:if test="string-length(//createdDate)!=0">
							<xsl:value-of select="$CreatedDate" />
							<xsl:choose>
								<xsl:when test="//createdDateCondition=&apos;Before&apos;">
									<xsl:value-of select="$Pos5" />
									<xsl:value-of select="//createdDate" />
									<xsl:value-of select="$Pos7" />
								</xsl:when>
								<xsl:when test="//createdDateCondition=&apos;After&apos;">
									<xsl:value-of select="$Pos6" />
									<xsl:value-of select="//createdDate" />
									<xsl:value-of select="$Pos7" />
								</xsl:when>
								<xsl:otherwise>
									<xsl:value-of select="$Pos4" />
									<xsl:value-of select="//createdDate" />
									<xsl:value-of select="$Pos7" />
								</xsl:otherwise>
							</xsl:choose>
							<xsl:text> AND</xsl:text>
						</xsl:if>
						<xsl:if test="string-length(//creatorAccountId)!=0">
							<xsl:value-of select="$CreatorAccountId" />
							<xsl:choose>
								<xsl:when test="//creatorAccountIdCondition=&apos;Start-With&apos;">
									<xsl:value-of select="$Pos2" />
									<xsl:value-of select="//creatorAccountId" />
									<xsl:value-of select="$Pos" />
								</xsl:when>
								<xsl:when test="//creatorAccountIdCondition=&apos;End-With&apos;">
									<xsl:value-of select="$Pos3" />
									<xsl:value-of select="//creatorAccountId" />
									<xsl:value-of select="$Pos1" />
								</xsl:when>
								<xsl:when test="//creatorAccountIdCondition=&apos;Contains&apos;">
									<xsl:value-of select="$Pos4" />
									<xsl:value-of select="//creatorAccountId" />
									<xsl:value-of select="$Pos7" />
								</xsl:when>
								<xsl:otherwise>
									<xsl:value-of select="$Pos4" />
									<xsl:value-of select="//creatorAccountId" />
									<xsl:value-of select="$Pos7" />
								</xsl:otherwise>
							</xsl:choose>
							<xsl:text> AND</xsl:text>
						</xsl:if>
						<xsl:if test="string-length(//creatorInvoiceOwnerId)!=0">
							<xsl:value-of select="$CreatorInvoiceOwnerId" />
							<xsl:choose>
								<xsl:when
									test="//creatorInvoiceOwnerIdCondition=&apos;Start-With&apos;">
									<xsl:value-of select="$Pos2" />
									<xsl:value-of select="//creatorInvoiceOwnerId" />
									<xsl:value-of select="$Pos" />
								</xsl:when>
								<xsl:when
									test="//creatorInvoiceOwnerIdCondition=&apos;End-With&apos;">
									<xsl:value-of select="$Pos3" />
									<xsl:value-of select="//creatorInvoiceOwnerId" />
									<xsl:value-of select="$Pos1" />
								</xsl:when>
								<xsl:when
									test="//creatorInvoiceOwnerIdCondition=&apos;Contains&apos;">
									<xsl:value-of select="$Pos4" />
									<xsl:value-of select="//creatorInvoiceOwnerId" />
									<xsl:value-of select="$Pos7" />
								</xsl:when>
								<xsl:otherwise>
									<xsl:value-of select="$Pos4" />
									<xsl:value-of select="//creatorInvoiceOwnerId" />
									<xsl:value-of select="$Pos7" />
								</xsl:otherwise>
							</xsl:choose>
							<xsl:text> AND</xsl:text>
						</xsl:if>
						<xsl:if test="string-length(//customDateAttribute1)!=0">
							<xsl:value-of select="$CustomDateAttribute1" />
							<xsl:choose>
								<xsl:when test="//customDateAttribute1Condition=&apos;Before&apos;">
									<xsl:value-of select="$Pos5" />
									<xsl:value-of select="//customDateAttribute1" />
									<xsl:value-of select="$Pos7" />
								</xsl:when>
								<xsl:when test="//customDateAttribute1Condition=&apos;After&apos;">
									<xsl:value-of select="$Pos6" />
									<xsl:value-of select="//customDateAttribute1" />
									<xsl:value-of select="$Pos7" />
								</xsl:when>
								<xsl:otherwise>
									<xsl:value-of select="$Pos4" />
									<xsl:value-of select="//customDateAttribute1" />
									<xsl:value-of select="$Pos7" />
								</xsl:otherwise>
							</xsl:choose>
							<xsl:text> AND</xsl:text>
						</xsl:if>
						<xsl:if test="string-length(//customerPaymentReference)!=0">
							<xsl:value-of select="$CustomerPaymentReference" />
							<xsl:choose>
								<xsl:when
									test="//customerPaymentReferenceCondition=&apos;Start-With&apos;">
									<xsl:value-of select="$Pos2" />
									<xsl:value-of select="//customerPaymentReference" />
									<xsl:value-of select="$Pos" />
								</xsl:when>
								<xsl:when test="//customerPaymentReferenceCondition=&apos;End-With&apos;">
									<xsl:value-of select="$Pos3" />
									<xsl:value-of select="//customerPaymentReference" />
									<xsl:value-of select="$Pos1" />
								</xsl:when>
								<xsl:when test="//customerPaymentReferenceCondition=&apos;Contains&apos;">
									<xsl:value-of select="$Pos4" />
									<xsl:value-of select="//customerPaymentReference" />
									<xsl:value-of select="$Pos7" />
								</xsl:when>
								<xsl:otherwise>
									<xsl:value-of select="$Pos4" />
									<xsl:value-of select="//customerPaymentReference" />
									<xsl:value-of select="$Pos7" />
								</xsl:otherwise>
							</xsl:choose>
							<xsl:text> AND</xsl:text>
						</xsl:if>
						<xsl:if test="string-length(//customTextAttribute1)!=0">
							<xsl:value-of select="$CustomTextAttribute1" />
							<xsl:choose>
								<xsl:when test="//customTextAttribute1Condition=&apos;Start-With&apos;">
									<xsl:value-of select="$Pos2" />
									<xsl:value-of select="//customTextAttribute1" />
									<xsl:value-of select="$Pos" />
								</xsl:when>
								<xsl:when test="//customTextAttribute1Condition=&apos;End-With&apos;">
									<xsl:value-of select="$Pos3" />
									<xsl:value-of select="//customTextAttribute1" />
									<xsl:value-of select="$Pos1" />
								</xsl:when>
								<xsl:when test="//customTextAttribute1Condition=&apos;Contains&apos;">
									<xsl:value-of select="$Pos4" />
									<xsl:value-of select="//customTextAttribute1" />
									<xsl:value-of select="$Pos7" />
								</xsl:when>
								<xsl:otherwise>
									<xsl:value-of select="$Pos4" />
									<xsl:value-of select="//customTextAttribute1" />
									<xsl:value-of select="$Pos7" />
								</xsl:otherwise>
							</xsl:choose>
							<xsl:text> AND</xsl:text>
						</xsl:if>
						<xsl:if test="string-length(//customTextAttribute2)!=0">
							<xsl:value-of select="$CustomTextAttribute2" />
							<xsl:choose>
								<xsl:when test="//customTextAttribute2Condition=&apos;Start-With&apos;">
									<xsl:value-of select="$Pos2" />
									<xsl:value-of select="//customTextAttribute2" />
									<xsl:value-of select="$Pos" />
									<xsl:text>&amp;</xsl:text>
								</xsl:when>
								<xsl:when test="//customTextAttribute2Condition=&apos;End-With&apos;">
									<xsl:value-of select="$Pos3" />
									<xsl:value-of select="//customTextAttribute2" />
									<xsl:value-of select="$Pos1" />
								</xsl:when>
								<xsl:when test="//customTextAttribute2Condition=&apos;Contains&apos;">
									<xsl:value-of select="$Pos4" />
									<xsl:value-of select="//customTextAttribute2" />
									<xsl:value-of select="$Pos7" />
								</xsl:when>
								<xsl:otherwise>
									<xsl:value-of select="$Pos4" />
									<xsl:value-of select="//customTextAttribute2" />
									<xsl:value-of select="$Pos7" />
								</xsl:otherwise>
							</xsl:choose>
							<xsl:text> AND</xsl:text>
						</xsl:if>
						<xsl:if test="string-length(//entity)!=0">
							<xsl:value-of select="$Entity" />
							<xsl:choose>
								<xsl:when test="//entityCondition=&apos;Start-With&apos;">
									<xsl:value-of select="$Pos2" />
									<xsl:value-of select="//entity" />
									<xsl:value-of select="$Pos" />
								</xsl:when>
								<xsl:when test="//entityCondition=&apos;End-With&apos;">
									<xsl:value-of select="$Pos3" />
									<xsl:value-of select="//entity" />
									<xsl:value-of select="$Pos1" />
								</xsl:when>
								<xsl:when test="//entityCondition=&apos;Contains&apos;">
									<xsl:value-of select="$Pos4" />
									<xsl:value-of select="//entity" />
									<xsl:value-of select="$Pos7" />
								</xsl:when>
								<xsl:otherwise>
									<xsl:value-of select="$Pos4" />
									<xsl:value-of select="//entity" />
									<xsl:value-of select="$Pos7" />
								</xsl:otherwise>
							</xsl:choose>
							<xsl:text> AND</xsl:text>
						</xsl:if>
						<xsl:if test="string-length(//initialTerm)!=0">
							<xsl:value-of select="$InitialTerm" />
							<xsl:choose>
								<xsl:when test="//initialTermCondition=&apos;Start-With&apos;">
									<xsl:value-of select="$Pos2" />
									<xsl:value-of select="//initialTerm" />
									<xsl:value-of select="$Pos" />
								</xsl:when>
								<xsl:when test="//initialTermCondition=&apos;End-With&apos;">
									<xsl:value-of select="$Pos3" />
									<xsl:value-of select="//initialTerm" />
									<xsl:value-of select="$Pos1" />
								</xsl:when>
								<xsl:when test="//initialTermCondition=&apos;Contains&apos;">
									<xsl:value-of select="$Pos4" />
									<xsl:value-of select="//initialTerm" />
									<xsl:value-of select="$Pos7" />
								</xsl:when>
								<xsl:otherwise>
									<xsl:value-of select="$Pos4" />
									<xsl:value-of select="//initialTerm" />
									<xsl:value-of select="$Pos7" />
								</xsl:otherwise>
							</xsl:choose>
							<xsl:text> AND</xsl:text>
						</xsl:if>
						<xsl:if test="string-length(//installerEmail)!=0">
							<xsl:value-of select="$Installeremail" />
							<xsl:choose>
								<xsl:when test="//installerEmailCondition=&apos;Start-With&apos;">
									<xsl:value-of select="$Pos2" />
									<xsl:value-of select="//installerEmail" />
									<xsl:value-of select="$Pos" />
								</xsl:when>
								<xsl:when test="//installerEmailCondition=&apos;End-With&apos;">
									<xsl:value-of select="$Pos3" />
									<xsl:value-of select="//installerEmail" />
									<xsl:value-of select="$Pos1" />
								</xsl:when>
								<xsl:when test="//installerEmailCondition=&apos;Contains&apos;">
									<xsl:value-of select="$Pos4" />
									<xsl:value-of select="//installerEmail" />
									<xsl:value-of select="$Pos7" />
								</xsl:when>
								<xsl:otherwise>
									<xsl:value-of select="$Pos4" />
									<xsl:value-of select="//installerEmail" />
									<xsl:value-of select="$Pos7" />
								</xsl:otherwise>
							</xsl:choose>
							<xsl:text> AND</xsl:text>
						</xsl:if>
						<xsl:if test="string-length(//invoiceOwnerId)!=0">
							<xsl:value-of select="$InvoiceOwnerId" />
							<xsl:choose>
								<xsl:when
									test="//invoiceOwnerIdCondition=&apos;Start-With&apos;">
									<xsl:value-of select="$Pos2" />
									<xsl:value-of select="//invoiceOwnerId" />
									<xsl:value-of select="$Pos" />
								</xsl:when>
								<xsl:when
									test="//invoiceOwnerIdCondition=&apos;End-With&apos;">
									<xsl:value-of select="$Pos3" />
									<xsl:value-of select="//invoiceOwnerId" />
									<xsl:value-of select="$Pos1" />
								</xsl:when>
								<xsl:when
									test="//invoiceOwnerIdCondition=&apos;Contains&apos;">
									<xsl:value-of select="$Pos4" />
									<xsl:value-of select="//invoiceOwnerId" />
									<xsl:value-of select="$Pos7" />
								</xsl:when>
								<xsl:otherwise>
									<xsl:value-of select="$Pos4" />
									<xsl:value-of select="//invoiceOwnerId" />
									<xsl:value-of select="$Pos7" />
								</xsl:otherwise>
							</xsl:choose>
							<xsl:text> AND</xsl:text>
						</xsl:if>
						<xsl:if test="string-length(//isInvoiceSeparate)!=0">
							<xsl:value-of select="$IsInvoiceSeparate" />
							<xsl:choose>
								<xsl:when test="//isInvoiceSeparateCondition=&apos;Contains&apos;">
									<xsl:text>=</xsl:text>
									<xsl:value-of select="//isInvoiceSeparate" />
								</xsl:when>
								<xsl:otherwise>
									<xsl:text>=</xsl:text>
									<xsl:value-of select="//isInvoiceSeparate" />
								</xsl:otherwise>
							</xsl:choose>
							<xsl:text> AND</xsl:text>
						</xsl:if>
						<xsl:if test="string-length(//name)!=0">
							<xsl:value-of select="$Name" />
							<xsl:choose>
								<xsl:when
									test="//nameCondition=&apos;Start-With&apos;">
									<xsl:value-of select="$Pos2" />
									<xsl:value-of select="//name" />
									<xsl:value-of select="$Pos" />
								</xsl:when>
								<xsl:when test="//nameCondition=&apos;End-With&apos;">
									<xsl:value-of select="$Pos3" />
									<xsl:value-of select="//name" />
									<xsl:value-of select="$Pos1" />
								</xsl:when>
								<xsl:when test="//nameCondition=&apos;Contains&apos;">
									<xsl:value-of select="$Pos4" />
									<xsl:value-of select="//name" />
									<xsl:value-of select="$Pos7" />
								</xsl:when>
								<xsl:otherwise>
									<xsl:value-of select="$Pos4" />
									<xsl:value-of select="//name" />
									<xsl:value-of select="$Pos7" />
								</xsl:otherwise>
							</xsl:choose>
							<xsl:text> AND</xsl:text>
						</xsl:if>
						<xsl:if test="string-length(//notes)!=0">
							<xsl:value-of select="$Notes" />
							<xsl:choose>
								<xsl:when test="//notesCondition=&apos;Start-With&apos;">
									<xsl:value-of select="$Pos2" />
									<xsl:value-of select="//notes" />
									<xsl:value-of select="$Pos" />
									<xsl:text>&amp;</xsl:text>
								</xsl:when>
								<xsl:when test="//notesCondition=&apos;End-With&apos;">
									<xsl:value-of select="$Pos3" />
									<xsl:value-of select="//notes" />
									<xsl:value-of select="$Pos1" />
								</xsl:when>
								<xsl:when test="//notesCondition=&apos;Contains&apos;">
									<xsl:value-of select="$Pos4" />
									<xsl:value-of select="//notes" />
									<xsl:value-of select="$Pos7" />
								</xsl:when>
								<xsl:otherwise>
									<xsl:value-of select="$Pos4" />
									<xsl:value-of select="//notes" />
									<xsl:value-of select="$Pos7" />
								</xsl:otherwise>
							</xsl:choose>
							<xsl:text> AND</xsl:text>
						</xsl:if>
						<xsl:if test="string-length(//opportunity)!=0">
							<xsl:value-of select="$opportunity" />
							<xsl:choose>
								<xsl:when test="//opportunityCondition=&apos;Start-With&apos;">
									<xsl:value-of select="$Pos2" />
									<xsl:value-of select="//opportunity" />
									<xsl:value-of select="$Pos" />
								</xsl:when>
								<xsl:when test="//opportunityCondition=&apos;End-With&apos;">
									<xsl:value-of select="$Pos3" />
									<xsl:value-of select="//opportunity" />
									<xsl:value-of select="$Pos1" />
								</xsl:when>
								<xsl:when test="//opportunityCondition=&apos;Contains&apos;">
									<xsl:value-of select="$Pos4" />
									<xsl:value-of select="//opportunity" />
									<xsl:value-of select="$Pos7" />
								</xsl:when>
								<xsl:otherwise>
									<xsl:value-of select="$Pos4" />
									<xsl:value-of select="//opportunity" />
									<xsl:value-of select="$Pos7" />
								</xsl:otherwise>
							</xsl:choose>
							<xsl:text> AND</xsl:text>
						</xsl:if>
						<xsl:if test="string-length(//opportunityCloseDate)!=0">
							<xsl:value-of select="$OpportunityCloseDate" />
							<xsl:choose>
								<xsl:when test="//opportunityCloseDateCondition=&apos;Before&apos;">
									<xsl:value-of select="$Pos5" />
									<xsl:value-of select="//opportunityCloseDate" />
									<xsl:value-of select="$Pos7" />
								</xsl:when>
								<xsl:when test="//opportunityCloseDateCondition=&apos;After&apos;">
									<xsl:value-of select="$Pos6" />
									<xsl:value-of select="//opportunityCloseDate" />
									<xsl:value-of select="$Pos7" />
								</xsl:when>
								<xsl:otherwise>
									<xsl:value-of select="$Pos4" />
									<xsl:value-of select="//opportunityCloseDate" />
									<xsl:value-of select="$Pos7" />
								</xsl:otherwise>
							</xsl:choose>
							<xsl:text> AND</xsl:text>
						</xsl:if>
						<xsl:if test="string-length(//opportunityName)!=0">
							<xsl:value-of select="$OpportunityName" />
							<xsl:choose>
								<xsl:when test="//opportunityNameCondition=&apos;Start-With&apos;">
									<xsl:value-of select="$Pos2" />
									<xsl:value-of select="//opportunityName" />
									<xsl:value-of select="$Pos" />
								</xsl:when>
								<xsl:when test="//opportunityNameCondition=&apos;End-With&apos;">
									<xsl:value-of select="$Pos3" />
									<xsl:value-of select="//opportunityName" />
									<xsl:value-of select="$Pos1" />
								</xsl:when>
								<xsl:when test="//opportunityNameCondition=&apos;Contains&apos;">
									<xsl:value-of select="$Pos4" />
									<xsl:value-of select="//opportunityName" />
									<xsl:value-of select="$Pos7" />
								</xsl:when>
								<xsl:otherwise>
									<xsl:value-of select="$Pos4" />
									<xsl:value-of select="//opportunityName" />
									<xsl:value-of select="$Pos7" />
								</xsl:otherwise>
							</xsl:choose>
							<xsl:text> AND</xsl:text>
						</xsl:if>
						<xsl:if test="string-length(//orderCreatedBy)!=0">
							<xsl:value-of select="$OrderCreatedBy" />
							<xsl:choose>
								<xsl:when
									test="//orderCreatedByCondition=&apos;Start-With&apos;">
									<xsl:value-of select="$Pos2" />
									<xsl:value-of select="//orderCreatedBy" />
									<xsl:value-of select="$Pos" />
								</xsl:when>
								<xsl:when
									test="//orderCreatedByCondition=&apos;End-With&apos;">
									<xsl:value-of select="$Pos3" />
									<xsl:value-of select="//orderCreatedBy" />
									<xsl:value-of select="$Pos1" />
								</xsl:when>
								<xsl:when
									test="//orderCreatedByCondition=&apos;Contains&apos;">
									<xsl:value-of select="$Pos4" />
									<xsl:value-of select="//orderCreatedBy" />
									<xsl:value-of select="$Pos7" />
								</xsl:when>
								<xsl:otherwise>
									<xsl:value-of select="$Pos4" />
									<xsl:value-of select="//orderCreatedBy" />
									<xsl:value-of select="$Pos7" />
								</xsl:otherwise>
							</xsl:choose>
							<xsl:text> AND</xsl:text>
						</xsl:if>
						<xsl:if test="string-length(//orderModifiedBy)!=0">
							<xsl:value-of select="$OrderModifiedBy" />
							<xsl:choose>
								<xsl:when test="//orderModifiedByCondition=&apos;Start-With&apos;">
									<xsl:value-of select="$Pos2" />
									<xsl:value-of select="//orderModifiedBy" />
									<xsl:value-of select="$Pos" />
								</xsl:when>
								<xsl:when test="//orderModifiedByCondition=&apos;End-With&apos;">
									<xsl:value-of select="$Pos3" />
									<xsl:value-of select="//orderModifiedBy" />
									<xsl:value-of select="$Pos1" />
								</xsl:when>
								<xsl:when test="//orderModifiedByCondition=&apos;Contains&apos;">
									<xsl:value-of select="$Pos4" />
									<xsl:value-of select="//orderModifiedBy" />
									<xsl:value-of select="$Pos7" />
								</xsl:when>
								<xsl:otherwise>
									<xsl:value-of select="$Pos4" />
									<xsl:value-of select="//orderModifiedBy" />
									<xsl:value-of select="$Pos7" />
								</xsl:otherwise>
							</xsl:choose>
							<xsl:text> AND</xsl:text>
						</xsl:if>
						<xsl:if test="string-length(//originalCreatedDate)!=0">
							<xsl:value-of select="$OriginalCreatedDate" />
							<xsl:choose>
								<xsl:when
									test="//originalCreatedDateCondition=&apos;Before&apos;">
									<xsl:value-of select="$Pos5" />
									<xsl:value-of select="//originalCreatedDate" />
									<xsl:value-of select="$Pos7" />
								</xsl:when>
								<xsl:when test="//originalCreatedDateCondition=&apos;After&apos;">
									<xsl:value-of select="$Pos6" />
									<xsl:value-of select="//originalCreatedDate" />
									<xsl:value-of select="$Pos7" />
								</xsl:when>
								<xsl:otherwise>
									<xsl:value-of select="$Pos4" />
									<xsl:value-of select="//originalCreatedDate" />
									<xsl:value-of select="$Pos7" />
								</xsl:otherwise>
							</xsl:choose>
							<xsl:text> AND</xsl:text>
						</xsl:if>
						<xsl:if test="string-length(//originalId)!=0">
							<xsl:value-of select="$OriginalId" />
							<xsl:choose>
								<xsl:when test="//originalIdCondition=&apos;Start-With&apos;">
									<xsl:value-of select="$Pos2" />
									<xsl:value-of select="//originalId" />
									<xsl:value-of select="$Pos" />
								</xsl:when>
								<xsl:when test="//originalIdCondition=&apos;End-With&apos;">
									<xsl:value-of select="$Pos3" />
									<xsl:value-of select="//originalId" />
									<xsl:value-of select="$Pos1" />
								</xsl:when>
								<xsl:when test="//originalIdCondition=&apos;Contains&apos;">
									<xsl:value-of select="$Pos4" />
									<xsl:value-of select="//originalId" />
									<xsl:value-of select="$Pos7" />
								</xsl:when>
								<xsl:otherwise>
									<xsl:value-of select="$Pos4" />
									<xsl:value-of select="//originalId" />
									<xsl:value-of select="$Pos7" />
								</xsl:otherwise>
							</xsl:choose>
							<xsl:text> AND</xsl:text>
						</xsl:if>
						<xsl:if test="string-length(//previousSubscriptionId)!=0">
							<xsl:value-of select="$PreviousSubscriptionId" />
							<xsl:choose>
								<xsl:when test="//previousSubscriptionIdCondition=&apos;Start-With&apos;">
									<xsl:value-of select="$Pos2" />
									<xsl:value-of select="//previousSubscriptionId" />
									<xsl:value-of select="$Pos" />
								</xsl:when>
								<xsl:when test="//previousSubscriptionIdCondition=&apos;End-With&apos;">
									<xsl:value-of select="$Pos3" />
									<xsl:value-of select="//previousSubscriptionId" />
									<xsl:value-of select="$Pos1" />
								</xsl:when>
								<xsl:when test="//previousSubscriptionIdCondition=&apos;Contains&apos;">
									<xsl:value-of select="$Pos4" />
									<xsl:value-of select="//previousSubscriptionId" />
									<xsl:value-of select="$Pos7" />
								</xsl:when>
								<xsl:otherwise>
									<xsl:value-of select="$Pos4" />
									<xsl:value-of select="//previousSubscriptionId" />
									<xsl:value-of select="$Pos7" />
								</xsl:otherwise>
							</xsl:choose>
							<xsl:text> AND</xsl:text>
						</xsl:if>
						<xsl:if test="string-length(//provisioningLastId)!=0">
							<xsl:value-of select="$PROVISIONINGLASTID" />
							<xsl:choose>
								<xsl:when test="//provisioningLastIdCondition=&apos;Start-With&apos;">
									<xsl:value-of select="$Pos2" />
									<xsl:value-of select="//provisioningLastId" />
									<xsl:value-of select="$Pos" />
									<xsl:text>&amp;</xsl:text>
								</xsl:when>
								<xsl:when test="//provisioningLastIdCondition=&apos;End-With&apos;">
									<xsl:value-of select="$Pos3" />
									<xsl:value-of select="//provisioningLastId" />
									<xsl:value-of select="$Pos1" />
								</xsl:when>
								<xsl:when test="//provisioningLastIdCondition=&apos;Contains&apos;">
									<xsl:value-of select="$Pos4" />
									<xsl:value-of select="//provisioningLastId" />
									<xsl:value-of select="$Pos7" />
								</xsl:when>
								<xsl:otherwise>
									<xsl:value-of select="$Pos4" />
									<xsl:value-of select="//provisioningLastId" />
									<xsl:value-of select="$Pos7" />
								</xsl:otherwise>
							</xsl:choose>
							<xsl:text> AND</xsl:text>
						</xsl:if>
						<xsl:if test="string-length(//provisioningLastResult)!=0">
							<xsl:value-of select="$PROVISIONINGLASTRESULT" />
							<xsl:choose>
								<xsl:when test="//provisioningLastResultCondition=&apos;Start-With&apos;">
									<xsl:value-of select="$Pos2" />
									<xsl:value-of select="//provisioningLastResult" />
									<xsl:value-of select="$Pos" />
								</xsl:when>
								<xsl:when test="//provisioningLastResultCondition=&apos;End-With&apos;">
									<xsl:value-of select="$Pos3" />
									<xsl:value-of select="//provisioningLastResult" />
									<xsl:value-of select="$Pos1" />
								</xsl:when>
								<xsl:when test="//provisioningLastResultCondition=&apos;Contains&apos;">
									<xsl:value-of select="$Pos4" />
									<xsl:value-of select="//provisioningLastResult" />
									<xsl:value-of select="$Pos7" />
								</xsl:when>
								<xsl:otherwise>
									<xsl:value-of select="$Pos4" />
									<xsl:value-of select="//provisioningLastResult" />
									<xsl:value-of select="$Pos7" />
								</xsl:otherwise>
							</xsl:choose>
							<xsl:text> AND</xsl:text>
						</xsl:if>
						<xsl:if test="string-length(//provisioningLastTimestamp)!=0">
							<xsl:value-of select="$PROVISIONINGLASTTIMESTAMP" />
							<xsl:choose>
								<xsl:when test="//provisioningLastTimestampCondition=&apos;Start-With&apos;">
									<xsl:value-of select="$Pos2" />
									<xsl:value-of select="//provisioningLastTimestamp" />
									<xsl:value-of select="$Pos" />
								</xsl:when>
								<xsl:when test="//provisioningLastTimestampCondition=&apos;End-With&apos;">
									<xsl:value-of select="$Pos3" />
									<xsl:value-of select="//provisioningLastTimestamp" />
									<xsl:value-of select="$Pos1" />
								</xsl:when>
								<xsl:when test="//provisioningLastTimestampCondition=&apos;Contains&apos;">
									<xsl:value-of select="$Pos4" />
									<xsl:value-of select="//provisioningLastTimestamp" />
									<xsl:value-of select="$Pos7" />
								</xsl:when>
								<xsl:otherwise>
									<xsl:value-of select="$Pos4" />
									<xsl:value-of select="//provisioningLastTimestamp" />
									<xsl:value-of select="$Pos7" />
								</xsl:otherwise>
							</xsl:choose>
							<xsl:text> AND</xsl:text>
						</xsl:if>
						<xsl:if test="string-length(//quoteBusinessType)!=0">
							<xsl:value-of select="$QuoteBusinessType" />
							<xsl:choose>
								<xsl:when test="//quoteBusinessTypeCondition=&apos;Start-With&apos;">
									<xsl:value-of select="$Pos2" />
									<xsl:value-of select="//quoteBusinessType" />
									<xsl:value-of select="$Pos" />
								</xsl:when>
								<xsl:when test="//quoteBusinessTypeCondition=&apos;End-With&apos;">
									<xsl:value-of select="$Pos3" />
									<xsl:value-of select="//quoteBusinessType" />
									<xsl:value-of select="$Pos1" />
								</xsl:when>
								<xsl:when test="//quoteBusinessTypeCondition=&apos;Contains&apos;">
									<xsl:value-of select="$Pos4" />
									<xsl:value-of select="//quoteBusinessType" />
									<xsl:value-of select="$Pos7" />
								</xsl:when>
								<xsl:otherwise>
									<xsl:value-of select="$Pos4" />
									<xsl:value-of select="//quoteBusinessType" />
									<xsl:value-of select="$Pos7" />
								</xsl:otherwise>
							</xsl:choose>
							<xsl:text> AND</xsl:text>
						</xsl:if>
						<xsl:if test="string-length(//quoteNumber)!=0">
							<xsl:value-of select="$QuoteNumber" />
							<xsl:choose>
								<xsl:when
									test="//quoteNumberCondition=&apos;Start-With&apos;">
									<xsl:value-of select="$Pos2" />
									<xsl:value-of select="//quoteNumber" />
									<xsl:value-of select="$Pos" />
								</xsl:when>
								<xsl:when
									test="//quoteNumberCondition=&apos;End-With&apos;">
									<xsl:value-of select="$Pos3" />
									<xsl:value-of select="//quoteNumber" />
									<xsl:value-of select="$Pos1" />
								</xsl:when>
								<xsl:when
									test="//quoteNumberCondition=&apos;Contains&apos;">
									<xsl:value-of select="$Pos4" />
									<xsl:value-of select="//quoteNumber" />
									<xsl:value-of select="$Pos7" />
								</xsl:when>
								<xsl:otherwise>
									<xsl:value-of select="$Pos4" />
									<xsl:value-of select="//quoteNumber" />
									<xsl:value-of select="$Pos7" />
								</xsl:otherwise>
							</xsl:choose>
							<xsl:text> AND</xsl:text>
						</xsl:if>
						<xsl:if test="string-length(//quoteType)!=0">
							<xsl:value-of select="$QuoteType" />
							<xsl:choose>
								<xsl:when test="//quoteTypeCondition=&apos;Start-With&apos;">
									<xsl:value-of select="$Pos2" />
									<xsl:value-of select="//quoteType" />
									<xsl:value-of select="$Pos" />
								</xsl:when>
								<xsl:when test="//quoteTypeCondition=&apos;End-With&apos;">
									<xsl:value-of select="$Pos3" />
									<xsl:value-of select="//quoteType" />
									<xsl:value-of select="$Pos1" />
								</xsl:when>
								<xsl:when test="//quoteTypeCondition=&apos;Contains&apos;">
									<xsl:value-of select="$Pos4" />
									<xsl:value-of select="//quoteType" />
									<xsl:value-of select="$Pos7" />
								</xsl:when>
								<xsl:otherwise>
									<xsl:value-of select="$Pos4" />
									<xsl:value-of select="//quoteType" />
									<xsl:value-of select="$Pos7" />
								</xsl:otherwise>
							</xsl:choose>
							<xsl:text> AND</xsl:text>
						</xsl:if>
						<xsl:if test="string-length(//renewalSetting)!=0">
							<xsl:value-of select="$RenewalSetting" />
							<xsl:choose>
								<xsl:when
									test="//renewalSettingCondition=&apos;Start-With&apos;">
									<xsl:value-of select="$Pos2" />
									<xsl:value-of select="//renewalSetting" />
									<xsl:value-of select="$Pos" />
								</xsl:when>
								<xsl:when test="//renewalSettingCondition=&apos;End-With&apos;">
									<xsl:value-of select="$Pos3" />
									<xsl:value-of select="//renewalSetting" />
									<xsl:value-of select="$Pos1" />
								</xsl:when>
								<xsl:when test="//renewalSettingCondition=&apos;Contains&apos;">
									<xsl:value-of select="$Pos4" />
									<xsl:value-of select="//renewalSetting" />
									<xsl:value-of select="$Pos7" />
								</xsl:when>
								<xsl:otherwise>
									<xsl:value-of select="$Pos4" />
									<xsl:value-of select="//renewalSetting" />
									<xsl:value-of select="$Pos7" />
								</xsl:otherwise>
							</xsl:choose>
							<xsl:text> AND</xsl:text>
						</xsl:if>
						<xsl:if test="string-length(//renewalTerm)!=0">
							<xsl:value-of select="$RenewalTerm" />
							<xsl:choose>
								<xsl:when test="//renewalTermCondition=&apos;Start-With&apos;">
									<xsl:value-of select="$Pos2" />
									<xsl:value-of select="//renewalTerm" />
									<xsl:value-of select="$Pos" />
								</xsl:when>
								<xsl:when test="//renewalTermCondition=&apos;End-With&apos;">
									<xsl:value-of select="$Pos3" />
									<xsl:value-of select="//renewalTerm" />
									<xsl:value-of select="$Pos1" />
								</xsl:when>
								<xsl:when test="//renewalTermCondition=&apos;Contains&apos;">
									<xsl:value-of select="$Pos4" />
									<xsl:value-of select="//renewalTerm" />
									<xsl:value-of select="$Pos7" />
								</xsl:when>
								<xsl:otherwise>
									<xsl:value-of select="$Pos4" />
									<xsl:value-of select="//renewalTerm" />
									<xsl:value-of select="$Pos7" />
								</xsl:otherwise>
							</xsl:choose>
							<xsl:text> AND</xsl:text>
						</xsl:if>
						<xsl:if test="string-length(//renewalTriggerInfo1)!=0">
							<xsl:value-of select="$RenewalTriggerInfo1" />
							<xsl:choose>
								<xsl:when test="//renewalTriggerInfo1Condition=&apos;Start-With&apos;">
									<xsl:value-of select="$Pos2" />
									<xsl:value-of select="//renewalTriggerInfo1" />
									<xsl:value-of select="$Pos" />
									<xsl:text>&amp;</xsl:text>
								</xsl:when>
								<xsl:when test="//renewalTriggerInfo1Condition=&apos;End-With&apos;">
									<xsl:value-of select="$Pos3" />
									<xsl:value-of select="//renewalTriggerInfo1" />
									<xsl:value-of select="$Pos1" />
								</xsl:when>
								<xsl:when test="//renewalTriggerInfo1Condition=&apos;Contains&apos;">
									<xsl:value-of select="$Pos4" />
									<xsl:value-of select="//renewalTriggerInfo1" />
									<xsl:value-of select="$Pos7" />
								</xsl:when>
								<xsl:otherwise>
									<xsl:value-of select="$Pos4" />
									<xsl:value-of select="//renewalTriggerInfo1" />
									<xsl:value-of select="$Pos7" />
								</xsl:otherwise>
							</xsl:choose>
							<xsl:text> AND</xsl:text>
						</xsl:if>
						<xsl:if test="string-length(//renewalTriggerInfo2)!=0">
							<xsl:value-of select="$RenewalTriggerInfo2" />
							<xsl:choose>
								<xsl:when test="//renewalTriggerInfo2Condition=&apos;Start-With&apos;">
									<xsl:value-of select="$Pos2" />
									<xsl:value-of select="//renewalTriggerInfo2" />
									<xsl:value-of select="$Pos" />
								</xsl:when>
								<xsl:when test="//renewalTriggerInfo2Condition=&apos;End-With&apos;">
									<xsl:value-of select="$Pos3" />
									<xsl:value-of select="//renewalTriggerInfo2" />
									<xsl:value-of select="$Pos1" />
								</xsl:when>
								<xsl:when test="//renewalTriggerInfo2Condition=&apos;Contains&apos;">
									<xsl:value-of select="$Pos4" />
									<xsl:value-of select="//renewalTriggerInfo2" />
									<xsl:value-of select="$Pos7" />
								</xsl:when>
								<xsl:otherwise>
									<xsl:value-of select="$Pos4" />
									<xsl:value-of select="//renewalTriggerInfo2" />
									<xsl:value-of select="$Pos7" />
								</xsl:otherwise>
							</xsl:choose>
							<xsl:text> AND</xsl:text>
						</xsl:if>
						<xsl:if test="string-length(//serviceActivationDate)!=0">
							<xsl:value-of select="$ServiceActivationDate" />
							<xsl:choose>
								<xsl:when test="//serviceActivationDateCondition=&apos;Before&apos;">
									<xsl:value-of select="$Pos5" />
									<xsl:value-of select="//serviceActivationDate" />
									<xsl:value-of select="$Pos7" />
								</xsl:when>
								<xsl:when test="//serviceActivationDateCondition=&apos;After&apos;">
									<xsl:value-of select="$Pos6" />
									<xsl:value-of select="//serviceActivationDate" />
									<xsl:value-of select="$Pos7" />
								</xsl:when>
								<xsl:otherwise>
									<xsl:value-of select="$Pos4" />
									<xsl:value-of select="//serviceActivationDate" />
									<xsl:value-of select="$Pos7" />
								</xsl:otherwise>
							</xsl:choose>
							<xsl:text> AND</xsl:text>
						</xsl:if>
						<xsl:if test="string-length(//shoppingCartLabel)!=0">
							<xsl:value-of select="$ShoppingCartLabel" />
							<xsl:choose>
								<xsl:when test="//shoppingCartLabelCondition=&apos;Start-With&apos;">
									<xsl:value-of select="$Pos2" />
									<xsl:value-of select="//shoppingCartLabel" />
									<xsl:value-of select="$Pos" />
								</xsl:when>
								<xsl:when test="//shoppingCartLabelCondition=&apos;End-With&apos;">
									<xsl:value-of select="$Pos3" />
									<xsl:value-of select="//shoppingCartLabel" />
									<xsl:value-of select="$Pos1" />
								</xsl:when>
								<xsl:when test="//shoppingCartLabelCondition=&apos;Contains&apos;">
									<xsl:value-of select="$Pos4" />
									<xsl:value-of select="//shoppingCartLabel" />
									<xsl:value-of select="$Pos7" />
								</xsl:when>
								<xsl:otherwise>
									<xsl:value-of select="$Pos4" />
									<xsl:value-of select="//shoppingCartLabel" />
									<xsl:value-of select="$Pos7" />
								</xsl:otherwise>
							</xsl:choose>
							<xsl:text> AND</xsl:text>
						</xsl:if>
						<xsl:if test="string-length(//sourcePurchase)!=0">
							<xsl:value-of select="$SourcePurchase" />
							<xsl:choose>
								<xsl:when
									test="//sourcePurchaseCondition=&apos;Start-With&apos;">
									<xsl:value-of select="$Pos2" />
									<xsl:value-of select="//sourcePurchase" />
									<xsl:value-of select="$Pos" />
								</xsl:when>
								<xsl:when
									test="//sourcePurchaseCondition=&apos;End-With&apos;">
									<xsl:value-of select="$Pos3" />
									<xsl:value-of select="//sourcePurchase" />
									<xsl:value-of select="$Pos1" />
								</xsl:when>
								<xsl:when
									test="//sourcePurchaseCondition=&apos;Contains&apos;">
									<xsl:value-of select="$Pos4" />
									<xsl:value-of select="//sourcePurchase" />
									<xsl:value-of select="$Pos7" />
								</xsl:when>
								<xsl:otherwise>
									<xsl:value-of select="$Pos4" />
									<xsl:value-of select="//sourcePurchase" />
									<xsl:value-of select="$Pos7" />
								</xsl:otherwise>
							</xsl:choose>
							<xsl:text> AND</xsl:text>
						</xsl:if>
						<xsl:if test="string-length(//status)!=0">
							<xsl:value-of select="$Status" />
							<xsl:choose>
								<xsl:when test="//statusCondition=&apos;Start-With&apos;">
									<xsl:value-of select="$Pos2" />
									<xsl:value-of select="//status" />
									<xsl:value-of select="$Pos" />
								</xsl:when>
								<xsl:when test="//statusCondition=&apos;End-With&apos;">
									<xsl:value-of select="$Pos3" />
									<xsl:value-of select="//status" />
									<xsl:value-of select="$Pos1" />
								</xsl:when>
								<xsl:when test="//statusCondition=&apos;Contains&apos;">
									<xsl:value-of select="$Pos4" />
									<xsl:value-of select="//status" />
									<xsl:value-of select="$Pos7" />
								</xsl:when>
								<xsl:otherwise>
									<xsl:value-of select="$Pos4" />
									<xsl:value-of select="//status" />
									<xsl:value-of select="$Pos7" />
								</xsl:otherwise>
							</xsl:choose>
							<xsl:text> AND</xsl:text>
						</xsl:if>
						<xsl:if test="string-length(//subscriptionEndDate)!=0">
							<xsl:value-of select="$SubscriptionEndDate" />
							<xsl:choose>
								<xsl:when
									test="//subscriptionEndDateCondition=&apos;Before&apos;">
									<xsl:value-of select="$Pos5" />
									<xsl:value-of select="//subscriptionEndDate" />
									<xsl:value-of select="$Pos7" />
								</xsl:when>
								<xsl:when test="//subscriptionEndDateCondition=&apos;After&apos;">
									<xsl:value-of select="$Pos6" />
									<xsl:value-of select="//subscriptionEndDate" />
									<xsl:value-of select="$Pos7" />
								</xsl:when>

								<xsl:otherwise>
									<xsl:value-of select="$Pos4" />
									<xsl:value-of select="//subscriptionEndDate" />
									<xsl:value-of select="$Pos7" />
								</xsl:otherwise>
							</xsl:choose>
							<xsl:text> AND</xsl:text>
						</xsl:if>
						<xsl:if test="string-length(//subscriptionStartDate)!=0">
							<xsl:value-of select="$SubscriptionStartDate" />
							<xsl:choose>
								<xsl:when test="//subscriptionStartDateCondition=&apos;Before&apos;">
									<xsl:value-of select="$Pos5" />
									<xsl:value-of select="//subscriptionStartDate" />
									<xsl:value-of select="$Pos7" />
								</xsl:when>
								<xsl:when test="//subscriptionStartDateCondition=&apos;After&apos;">
									<xsl:value-of select="$Pos6" />
									<xsl:value-of select="//subscriptionStartDate" />
									<xsl:value-of select="$Pos7" />
								</xsl:when>
								<xsl:otherwise>
									<xsl:value-of select="$Pos4" />
									<xsl:value-of select="//subscriptionStartDate" />
									<xsl:value-of select="$Pos7" />
								</xsl:otherwise>
							</xsl:choose>
							<xsl:text> AND</xsl:text>
						</xsl:if>
						<xsl:if test="string-length(//TECHReferenceQuote)!=0">
							<xsl:value-of select="$TECHReferenceQuote" />
							<xsl:choose>
								<xsl:when test="//TECHReferenceQuoteCondition=&apos;Start-With&apos;">
									<xsl:value-of select="$Pos2" />
									<xsl:value-of select="//TECHReferenceQuote" />
									<xsl:value-of select="$Pos" />
								</xsl:when>
								<xsl:when test="//TECHReferenceQuoteCondition=&apos;End-With&apos;">
									<xsl:value-of select="$Pos3" />
									<xsl:value-of select="//TECHReferenceQuote" />
									<xsl:value-of select="$Pos1" />
								</xsl:when>
								<xsl:when test="//TECHReferenceQuoteCondition=&apos;Contains&apos;">
									<xsl:value-of select="$Pos4" />
									<xsl:value-of select="//TECHReferenceQuote" />
									<xsl:value-of select="$Pos7" />
								</xsl:when>
								<xsl:otherwise>
									<xsl:value-of select="$Pos4" />
									<xsl:value-of select="//TECHReferenceQuote" />
									<xsl:value-of select="$Pos7" />
								</xsl:otherwise>
							</xsl:choose>
							<xsl:text> AND</xsl:text>
						</xsl:if>
						<xsl:if test="string-length(//termEndDate)!=0">
							<xsl:value-of select="$TermEndDate" />
							<xsl:choose>
								<xsl:when test="//termEndDateCondition=&apos;Before&apos;">
									<xsl:value-of select="$Pos5" />
									<xsl:value-of select="//termEndDate" />
									<xsl:value-of select="$Pos7" />
								</xsl:when>
								<xsl:when test="//termEndDateCondition=&apos;After&apos;">
									<xsl:value-of select="$Pos6" />
									<xsl:value-of select="//termEndDate" />
									<xsl:value-of select="$Pos7" />
								</xsl:when>
								<xsl:otherwise>
									<xsl:value-of select="$Pos4" />
									<xsl:value-of select="//termEndDate" />
									<xsl:value-of select="$Pos7" />
								</xsl:otherwise>
							</xsl:choose>
							<xsl:text> AND</xsl:text>
						</xsl:if>
						<xsl:if test="string-length(//termStartDate)!=0">
							<xsl:value-of select="$TermStartDate" />
							<xsl:choose>
								<xsl:when
									test="//termStartDateCondition=&apos;Before&apos;">
									<xsl:value-of select="$Pos5" />
									<xsl:value-of select="//termStartDate" />
									<xsl:value-of select="$Pos7" />
								</xsl:when>
								<xsl:when
									test="//termStartDateCondition=&apos;After&apos;">
									<xsl:value-of select="$Pos6" />
									<xsl:value-of select="//termStartDate" />
									<xsl:value-of select="$Pos7" />
								</xsl:when>
								<xsl:otherwise>
									<xsl:value-of select="$Pos4" />
									<xsl:value-of select="//termStartDate" />
									<xsl:value-of select="$Pos7" />
								</xsl:otherwise>
							</xsl:choose>
							<xsl:text> AND</xsl:text>
						</xsl:if>
						<xsl:if test="string-length(//termType)!=0">
							<xsl:value-of select="$TermType" />
							<xsl:choose>
								<xsl:when test="//termTypeCondition=&apos;Start-With&apos;">
									<xsl:value-of select="$Pos2" />
									<xsl:value-of select="//termType" />
									<xsl:value-of select="$Pos" />
								</xsl:when>
								<xsl:when test="//termTypeCondition=&apos;End-With&apos;">
									<xsl:value-of select="$Pos3" />
									<xsl:value-of select="//termType" />
									<xsl:value-of select="$Pos1" />
								</xsl:when>
								<xsl:when test="//termTypeCondition=&apos;Contains&apos;">
									<xsl:value-of select="$Pos4" />
									<xsl:value-of select="//termType" />
									<xsl:value-of select="$Pos7" />
								</xsl:when>
								<xsl:otherwise>
									<xsl:value-of select="$Pos4" />
									<xsl:value-of select="//termType" />
									<xsl:value-of select="$Pos7" />
								</xsl:otherwise>
							</xsl:choose>
							<xsl:text> AND</xsl:text>
						</xsl:if>
						<xsl:if test="string-length(//trial)!=0">
							<xsl:value-of select="$Trial" />
							<xsl:choose>
								<xsl:when test="//trialCondition=&apos;Contains&apos;">
									<xsl:text>=</xsl:text>
									<xsl:value-of select="//trial" />
								</xsl:when>
								<xsl:otherwise>
									<xsl:text>=</xsl:text>
									<xsl:value-of select="//trial" />
								</xsl:otherwise>
							</xsl:choose>
							<xsl:text> AND</xsl:text>
						</xsl:if>
						<xsl:if test="string-length(//updatedById)!=0">
							<xsl:value-of select="$UpdatedById" />
							<xsl:choose>
								<xsl:when test="//updatedByIdCondition=&apos;Start-With&apos;">
									<xsl:value-of select="$Pos2" />
									<xsl:value-of select="//updatedById" />
									<xsl:value-of select="$Pos" />
								</xsl:when>
								<xsl:when test="//updatedByIdCondition=&apos;End-With&apos;">
									<xsl:value-of select="$Pos3" />
									<xsl:value-of select="//updatedById" />
									<xsl:value-of select="$Pos1" />
								</xsl:when>
								<xsl:when test="//updatedByIdCondition=&apos;Contains&apos;">
									<xsl:value-of select="$Pos4" />
									<xsl:value-of select="//updatedById" />
									<xsl:value-of select="$Pos7" />
								</xsl:when>
								<xsl:otherwise>
									<xsl:value-of select="$Pos4" />
									<xsl:value-of select="//updatedById" />
									<xsl:value-of select="$Pos7" />
								</xsl:otherwise>
							</xsl:choose>
							<xsl:text> AND</xsl:text>
						</xsl:if>
						<xsl:if test="string-length(//updatedDate)!=0">
							<xsl:value-of select="$UpdatedDate" />
							<xsl:choose>
								<xsl:when test="//updatedDateCondition=&apos;Before&apos;">
									<xsl:value-of select="$Pos5" />
									<xsl:value-of select="//updatedDate" />
									<xsl:value-of select="$Pos7" />
								</xsl:when>
								<xsl:when test="//updatedDateCondition=&apos;After&apos;">
									<xsl:value-of select="$Pos6" />
									<xsl:value-of select="//updatedDate" />
									<xsl:value-of select="$Pos7" />
								</xsl:when>
								<xsl:otherwise>
									<xsl:value-of select="$Pos4" />
									<xsl:value-of select="//updatedDate" />
									<xsl:value-of select="$Pos7" />
								</xsl:otherwise>
							</xsl:choose>
							<xsl:text> AND</xsl:text>
						</xsl:if>
						<xsl:if test="string-length(//version)!=0">
							<xsl:value-of select="$version" />
							<xsl:choose>
								<xsl:when test="//versionCondition=&apos;Contains&apos;">
									<xsl:text>=</xsl:text>
									<xsl:value-of select="//version" />
								</xsl:when>
								<xsl:otherwise>
									<xsl:text>=</xsl:text>
									<xsl:value-of select="//version" />
								</xsl:otherwise>
							</xsl:choose>
							<xsl:text> AND</xsl:text>
						</xsl:if>
						<xsl:if test="string-length(//provisioningDate)!=0">
							<xsl:value-of select="$ProvisionDate" />
							<xsl:choose>
								<xsl:when test="//provisioningDateCondition=&apos;Before&apos;">
									<xsl:value-of select="$Pos5" />
									<xsl:value-of select="//provisioningDate" />
									<xsl:value-of select="$Pos7" />
								</xsl:when>
								<xsl:when test="//provisioningDateCondition=&apos;After&apos;">
									<xsl:value-of select="$Pos6" />
									<xsl:value-of select="//provisioningDate" />
									<xsl:value-of select="$Pos7" />
								</xsl:when>
								<xsl:otherwise>
									<xsl:value-of select="$Pos4" />
									<xsl:value-of select="//provisioningDate" />
									<xsl:value-of select="$Pos7" />
								</xsl:otherwise>
							</xsl:choose>
							<xsl:text> AND</xsl:text>
						</xsl:if>
						<xsl:if test="string-length(//zHMIGateManagerId)!=0">
							<xsl:value-of select="$ZHMIGateManagerID" />
							<xsl:choose>
								<xsl:when test="//zHMIGateManagerIdCondition=&apos;Start-With&apos;">
									<xsl:value-of select="$Pos2" />
									<xsl:value-of select="//zHMIGateManagerId" />
									<xsl:value-of select="$Pos" />
								</xsl:when>
								<xsl:when test="//zHMIGateManagerIdCondition=&apos;End-With&apos;">
									<xsl:value-of select="$Pos3" />
									<xsl:value-of select="//zHMIGateManagerId" />
									<xsl:value-of select="$Pos1" />
								</xsl:when>
								<xsl:when test="//zHMIGateManagerIdCondition=&apos;Contains&apos;">
									<xsl:value-of select="$Pos4" />
									<xsl:value-of select="//zHMIGateManagerId" />
									<xsl:value-of select="$Pos7" />
								</xsl:when>
								<xsl:otherwise>
									<xsl:value-of select="$Pos4" />
									<xsl:value-of select="//zHMIGateManagerId" />
									<xsl:value-of select="$Pos7" />
								</xsl:otherwise>
							</xsl:choose>
							<xsl:text> AND</xsl:text>
						</xsl:if>
						<xsl:if test="string-length(//zuoraContactId1)!=0">
							<xsl:value-of select="$ZuoraContactId1" />
							<xsl:choose>
								<xsl:when
									test="//zuoraContactId1Condition=&apos;Start-With&apos;">
									<xsl:value-of select="$Pos2" />
									<xsl:value-of select="//zuoraContactId1" />
									<xsl:value-of select="$Pos" />
								</xsl:when>
								<xsl:when
									test="//zuoraContactId1Condition=&apos;End-With&apos;">
									<xsl:value-of select="$Pos3" />
									<xsl:value-of select="//zuoraContactId1" />
									<xsl:value-of select="$Pos1" />
								</xsl:when>
								<xsl:when
									test="//zuoraContactId1Condition=&apos;Contains&apos;">
									<xsl:value-of select="$Pos4" />
									<xsl:value-of select="//zuoraContactId1" />
									<xsl:value-of select="$Pos7" />
								</xsl:when>
								<xsl:otherwise>
									<xsl:value-of select="$Pos4" />
									<xsl:value-of select="//zuoraContactId1" />
									<xsl:value-of select="$Pos7" />
								</xsl:otherwise>
							</xsl:choose>
							<xsl:text> AND</xsl:text>
						</xsl:if>
						<xsl:if test="string-length(//zuoraContactId2)!=0">
							<xsl:value-of select="$ZuoraContactId2" />
							<xsl:choose>
								<xsl:when test="//zuoraContactId2Condition=&apos;Start-With&apos;">
									<xsl:value-of select="$Pos2" />
									<xsl:value-of select="//zuoraContactId2" />
									<xsl:value-of select="$Pos" />
								</xsl:when>
								<xsl:when test="//zuoraContactId2Condition=&apos;End-With&apos;">
									<xsl:value-of select="$Pos3" />
									<xsl:value-of select="//zuoraContactId2" />
									<xsl:value-of select="$Pos1" />
								</xsl:when>
								<xsl:when test="//zuoraContactId2Condition=&apos;Contains&apos;">
									<xsl:value-of select="$Pos4" />
									<xsl:value-of select="//zuoraContactId2" />
									<xsl:value-of select="$Pos7" />
								</xsl:when>
								<xsl:otherwise>
									<xsl:value-of select="$Pos4" />
									<xsl:value-of select="//zuoraContactId2" />
									<xsl:value-of select="$Pos7" />
								</xsl:otherwise>
							</xsl:choose>
							<xsl:text> AND</xsl:text>
						</xsl:if>
						<xsl:if test="string-length(//solarSite)!=0">
							<xsl:value-of select="$SolarSite" />
							<xsl:choose>
								<xsl:when
									test="//solarSiteCondition=&apos;Start-With&apos;">
									<xsl:value-of select="$Pos2" />
									<xsl:value-of select="//solarSite" />
									<xsl:value-of select="$Pos" />
								</xsl:when>
								<xsl:when test="//solarSiteCondition=&apos;End-With&apos;">
									<xsl:value-of select="$Pos3" />
									<xsl:value-of select="//solarSite" />
									<xsl:value-of select="$Pos1" />
								</xsl:when>
								<xsl:when test="//solarSiteCondition=&apos;Contains&apos;">
									<xsl:value-of select="$Pos4" />
									<xsl:value-of select="//solarSite" />
									<xsl:value-of select="$Pos7" />
								</xsl:when>
								<xsl:otherwise>
									<xsl:value-of select="$Pos4" />
									<xsl:value-of select="//solarSite" />
									<xsl:value-of select="$Pos7" />
								</xsl:otherwise>
							</xsl:choose>
							<xsl:text> AND</xsl:text>
						</xsl:if>
			</api:queryString>
		</api:query>
	</xsl:template>
</xsl:stylesheet>
<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:v1="http://www.schneider-electric.com/ifw/common/message/SoapHeader/v1"
xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/" xmlns:api="http://api.zuora.com/">
<xsl:output method="xml" version="1.0" encoding="UTF-8" /> 
<xsl:param name="date"/>
<xsl:template match="//getSubscriptions">
<api:query>
<api:queryString>select Id,
Name,
AccountId,
Trial__c,CustomerPaymentReference__c,
Entity__c,
Opportunity__c,
Order_Created_By__c,
Shopping_Cart_Label__c,
Order_Modified_By__c,
AutoRenew,
InvoiceOwnerId,
InitialTerm,
RenewalTerm,
CancelledDate,
ContractAcceptanceDate,
ContractEffectiveDate,
CreatedDate,
ServiceActivationDate,
SubscriptionEndDate,
SubscriptionStartDate,
OriginalCreatedDate,
TermStartDate,
TermEndDate,
Status,
TermType,
CoolOff__c,
Version,
Notes,
OriginalId,
PROVISIONING_LAST_ID__c,
PROVISIONING_LAST_TIMESTAMP__c,
PROVISIONING_LAST_RESULT__c,
Z_ProvisionDate__c,
Asset_SKU__c,
Asset_SN__c,
ZuoraContactId_1__c,
ZHMIGateManagerID__c,
ZuoraContactId_2__c,
CurrentTermPeriodType,
InitialTermPeriodType,
RenewalTermPeriodType,
CustomTextAttribute1__c,
CustomTextAttribute2__c,
CustomDateAttribute1__c,
Solar_Site__c,
CostType__c,
CostTypeValue__c,
TECH_ReferenceQuote__c 
from Subscription where <xsl:choose><xsl:when test="string-length(//accountIdentifier/eBillAccountIds/status)!=0"><xsl:for-each select="//accountIdentifier/eBillAccountIds"><xsl:if test="string-length(./status)!=0"><xsl:for-each select="./status">AccountId='<xsl:value-of select="./../eBillAccountId"/>' and status='<xsl:value-of select="."/>' or </xsl:for-each></xsl:if><xsl:if test="string-length(./status) =0">AccountId='<xsl:value-of select="./eBillAccountId"/>' or </xsl:if></xsl:for-each></xsl:when><xsl:otherwise><xsl:for-each select="//accountIdentifier/eBillAccountIds">AccountId='<xsl:value-of select="./eBillAccountId"/>' or </xsl:for-each></xsl:otherwise></xsl:choose><xsl:choose><xsl:when test="string-length(//accountIdentifier/eBillInvoiceOwnerAccountIds/status)!=0"><xsl:for-each select="//accountIdentifier/eBillInvoiceOwnerAccountIds"><xsl:if test="string-length(./status)!=0"><xsl:for-each select="./status">InvoiceOwnerId='<xsl:value-of select="./../eBillinvoiceOwnerAccountId"/>' and status='<xsl:value-of select="."/>' or </xsl:for-each></xsl:if><xsl:if test="string-length(./status) =0">InvoiceOwnerId='<xsl:value-of select="./eBillinvoiceOwnerAccountId"/>' or </xsl:if></xsl:for-each></xsl:when><xsl:otherwise><xsl:for-each select="//accountIdentifier/eBillInvoiceOwnerAccountIds">InvoiceOwnerId='<xsl:value-of select="./eBillinvoiceOwnerAccountId"/>' or </xsl:for-each></xsl:otherwise></xsl:choose><xsl:choose><xsl:when test="string-length(//accountIdentifier/subscription/subscriptionNames/status)!=0"><xsl:for-each select="//accountIdentifier/subscription/subscriptionNames"><xsl:if test="string-length(./status)!=0"><xsl:for-each select="./status">Name='<xsl:value-of select="./../subscriptionName"/>' and status='<xsl:value-of select="."/>' or </xsl:for-each></xsl:if><xsl:if test="string-length(./status) =0">Name='<xsl:value-of select="./subscriptionName"/>' or </xsl:if></xsl:for-each></xsl:when><xsl:otherwise><xsl:for-each select="//accountIdentifier/subscription/subscriptionNames">Name='<xsl:value-of select="./subscriptionName"/>' or </xsl:for-each></xsl:otherwise></xsl:choose><xsl:choose><xsl:when test="string-length(//accountIdentifier/subscription/subscriptionIds/status)!=0"><xsl:for-each select="//accountIdentifier/subscription/subscriptionIds"><xsl:if test="string-length(./status)!=0"><xsl:for-each select="./status">Id='<xsl:value-of select="./../subscriptionId"/>' and status='<xsl:value-of select="."/>' or </xsl:for-each></xsl:if><xsl:if test="string-length(./status) =0">Id='<xsl:value-of select="./subscriptionId"/>' or </xsl:if></xsl:for-each></xsl:when><xsl:otherwise><xsl:for-each select="//accountIdentifier/subscription/subscriptionIds">Id='<xsl:value-of select="./subscriptionId"/>' or </xsl:for-each></xsl:otherwise></xsl:choose>
</api:queryString>
</api:query>
</xsl:template>
<xsl:template match="//listAccountsResponse">
<api:query>
<api:queryString>select Id,
Name,
AccountId,
Trial__c,CustomerPaymentReference__c,
Entity__c,
Opportunity__c,
Order_Created_By__c,
Shopping_Cart_Label__c,
Order_Modified_By__c,
AutoRenew,
InvoiceOwnerId,
InitialTerm,
RenewalTerm,
CancelledDate,
ContractAcceptanceDate,
ContractEffectiveDate,
CreatedDate,
ServiceActivationDate,
SubscriptionEndDate,
SubscriptionStartDate,
OriginalCreatedDate,
TermStartDate,
TermEndDate,
Status,
TermType,
CoolOff__c,
Version,
Notes,
OriginalId,
PROVISIONING_LAST_ID__c,
PROVISIONING_LAST_TIMESTAMP__c,
PROVISIONING_LAST_RESULT__c,
Z_ProvisionDate__c,
Asset_SKU__c,
Asset_SN__c,
ZuoraContactId_1__c,
ZHMIGateManagerID__c,
ZuoraContactId_2__c,
CurrentTermPeriodType,
InitialTermPeriodType,
RenewalTermPeriodType,
CustomTextAttribute1__c,
CustomTextAttribute2__c,
CustomDateAttribute1__c,
Solar_Site__c,
CostType__c,
CostTypeValue__c,
TECH_ReferenceQuote__c 
from Subscription where <xsl:choose>
<xsl:when test="string-length(//bFOAccount/status)!=0">
<xsl:for-each select="//bFOAccount/status">
<xsl:variable name="status" select="./text()" />
<xsl:for-each select="//account/id">AccountId='<xsl:value-of select="."/>' and status='<xsl:value-of select="$status"/>' or </xsl:for-each>
</xsl:for-each>
</xsl:when>
<xsl:otherwise>
<xsl:for-each select="//account/id">AccountId='<xsl:value-of select="."/>' or </xsl:for-each>
</xsl:otherwise>
</xsl:choose>
</api:queryString>
</api:query>
</xsl:template>
</xsl:stylesheet>

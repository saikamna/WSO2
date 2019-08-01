<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/" version="1.0"
	xmlns:v1="http://www.schneider-electric.com/ifw/common/message/SoapHeader/v1" >
	

	<xsl:output method="xml" version="1.0" encoding="UTF-8" />
	<xsl:param name="currentDate" />

	<xsl:template match="/">

		<getSubscriptionDetailsResponse>

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
			</subscriptionDetails>
		</getSubscriptionDetailsResponse>

	</xsl:template>
</xsl:stylesheet>
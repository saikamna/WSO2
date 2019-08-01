<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<getInvoiceItemsResponse>
			<xsl:for-each select="//*[local-name()='queryResponse']/*[local-name()='result']/*[local-name()='records']">
				<invoiceItemDetails>
					<xsl:if test="string-length(./*[local-name()='SKU']/text())!=0">
						<sku>
							<xsl:value-of select="./*[local-name()='SKU']/text()" />
						</sku>
					</xsl:if>
					<xsl:if test="string-length(./*[local-name()='RatePlanChargeId']/text())!=0">
						<ratePlanChargeId>
							<xsl:value-of select="./*[local-name()='RatePlanChargeId']/text()" />
						</ratePlanChargeId>
					</xsl:if>
					<xsl:if test="string-length(./*[local-name()='Quantity']/text())!=0">
						<quantity>
							<xsl:value-of select="./*[local-name()='Quantity']/text()" />
						</quantity>
					</xsl:if>
					<xsl:if test="string-length(./*[local-name()='ProductName']/text())!=0">
						<productName>
							<xsl:value-of select="./*[local-name()='ProductName']/text()" />
						</productName>
					</xsl:if>
					<xsl:if test="string-length(./*[local-name()='ProductId']/text())!=0">
						<productId>
							<xsl:value-of select="./*[local-name()='ProductId']/text()" />
						</productId>
					</xsl:if>
					<xsl:if test="string-length(./*[local-name()='ProductDescription']/text())!=0">
						<productDescription>
							<xsl:value-of select="./*[local-name()='ProductDescription']/text()" />
						</productDescription>
					</xsl:if>
					<xsl:if test="string-length(./*[local-name()='InvoiceId']/text())!=0">
						<invoiceId>
							<xsl:value-of select="./*[local-name()='InvoiceId']/text()" />
						</invoiceId>
					</xsl:if>
					<xsl:if test="string-length(./*[local-name()='ChargeAmount']/text())!=0">
						<chargeAmount>
							<xsl:value-of select="./*[local-name()='ChargeAmount']/text()" />
						</chargeAmount>
					</xsl:if>
					<xsl:if test="string-length(./*[local-name()='ChargeDate']/text())!=0">
						<chargeDate>
							<xsl:value-of select="./*[local-name()='ChargeDate']/text()" />
						</chargeDate>
					</xsl:if>
					<xsl:if test="string-length(./*[local-name()='ChargeDescription']/text())!=0">
						<chargeDescription>
							<xsl:value-of select="./*[local-name()='ChargeDescription']/text()" />
						</chargeDescription>
					</xsl:if>
				</invoiceItemDetails>
			</xsl:for-each>
		</getInvoiceItemsResponse>
	</xsl:template>
</xsl:stylesheet>
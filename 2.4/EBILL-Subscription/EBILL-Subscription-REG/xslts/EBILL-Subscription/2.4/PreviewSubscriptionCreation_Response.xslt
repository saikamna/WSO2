<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:api="http://api.zuora.com/"
 xmlns:fns="http://fault.api.zuora.com" xmlns:ns1="http://api.zuora.com/" 
 xmlns:ns2="http://object.api.zuora.com/" xmlns:obj="http://object.api.zuora.com/" 
 xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/" 
 xmlns:v1="http://www.schneider-electric.com/ifw/common/message/SoapHeader/v1" 
   version="1.0">
   <xsl:output method="xml" version="1.0" encoding="UTF-8" />
   
   <xsl:template match="/">
     
            <previewSubscriptionCreationResponse>
               <xsl:for-each select="//ns1:subscribeResponse/ns1:result">
                  <subscribeResponse>
                     <xsl:if test="string-length(./ns1:AcccountId)!=0">
                        <subscriptionOwnerAccountId>
                           <xsl:value-of select="./ns1:AcccountId" />
                        </subscriptionOwnerAccountId>
                     </xsl:if>
                     <xsl:if test="string-length(./ns1:AccountNumber)!=0">
                        <accountNumber>
                           <xsl:value-of select="./ns1:AccountNumber" />
                        </accountNumber>
                     </xsl:if>
                     <xsl:if test="count(./ns1:ChargeMetricsData/ns1:ChargeMetrics)!=0">
                        <chargeMetricsData>
                           <xsl:for-each select="./ns1:ChargeMetricsData/ns1:ChargeMetrics">
                              <chargeMetrics>
                                 <xsl:if test="string-length(./ns1:ChargeNumber)!=0">
                                    <chargeNumber>
                                       <xsl:value-of select="./ns1:ChargeNumber" />
                                    </chargeNumber>
                                 </xsl:if>
                                 <xsl:if test="string-length(./ns1:DMRR)!=0">
                                    <deltaMonthlyRecurringRevenue>
                                       <xsl:value-of select="./ns1:DMRR" />
                                    </deltaMonthlyRecurringRevenue>
                                 </xsl:if>
                                 <xsl:if test="string-length(./ns1:DTCV)!=0">
                                    <deltaTotalContractValue>
                                       <xsl:value-of select="./ns1:DTCV" />
                                    </deltaTotalContractValue>
                                 </xsl:if>
                                 <xsl:if test="string-length(./ns1:MRR)!=0">
                                    <monthlyRecurringRevenue>
                                       <xsl:value-of select="./ns1:MRR" />
                                    </monthlyRecurringRevenue>
                                 </xsl:if>
                                 <xsl:if test="string-length(./ns1:ProductRatePlanChargeId)!=0">
                                    <productRatePlanChargeId>
                                       <xsl:value-of select="./ns1:ProductRatePlanChargeId" />
                                    </productRatePlanChargeId>
                                 </xsl:if>
                                 <xsl:if test="string-length(./ns1:ProductRatePlanId)!=0">
                                    <productRatePlanId>
                                       <xsl:value-of select="./ns1:ProductRatePlanId" />
                                    </productRatePlanId>
                                 </xsl:if>
                                 <xsl:if test="string-length(./ns1:TCV)!=0">
                                    <totalContractValue>
                                       <xsl:value-of select="./ns1:TCV" />
                                    </totalContractValue>
                                 </xsl:if>
                              </chargeMetrics>
                           </xsl:for-each>
                        </chargeMetricsData>
                     </xsl:if>
                     <xsl:if test="string-length(./ns1:Errors)!=0">
                        <xsl:for-each select="//ns1:subscribeResponse/ns1:result/ns1:Errors">
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
                     <xsl:if test="string-length(./ns1:GatewayResponse)!=0">
                        <gatewayResponse>
                           <xsl:value-of select="./ns1:GatewayResponse" />
                        </gatewayResponse>
                     </xsl:if>
                     <xsl:if test="string-length(./ns1:GatewayResponseCode)!=0">
                        <gatewayResponseCode>
                           <xsl:value-of select="./ns1:GatewayResponseCode" />
                        </gatewayResponseCode>
                     </xsl:if>
                     <xsl:if test="string-length(./ns1:InvoiceData)!=0">
                        <invoiceData>
                           <xsl:for-each select="./ns1:InvoiceData">
                              <xsl:if test="string-length(./ns1:Invoice)!=0">
                                 <invoice>
                                    <xsl:if test="string-length(./ns1:Invoice/ns1:Id)!=0">
                                       <id>
                                          <xsl:value-of select="./ns1:Invoice/ns1:Id" />
                                       </id>
                                    </xsl:if>
                                    <xsl:if test="string-length(./ns1:Invoice/ns2:AccountId)!=0">
                                       <accountId>
                                          <xsl:value-of select="./ns1:Invoice/ns2:AccountId" />
                                       </accountId>
                                    </xsl:if>
                                    <xsl:if test="string-length(./ns1:Invoice/ns2:AdjustmentAmount)!=0">
                                       <adjustmentAmount>
                                          <xsl:value-of select="./ns1:Invoice/ns2:AdjustmentAmount" />
                                       </adjustmentAmount>
                                    </xsl:if>
                                    <xsl:if test="string-length(./ns1:Invoice/ns2:Amount)!=0">
                                       <amount>
                                          <xsl:value-of select="./ns1:Invoice/ns2:Amount" />
                                       </amount>
                                    </xsl:if>
                                    <xsl:if test="string-length(./ns1:Invoice/ns2:AmountWithoutTax)!=0">
                                       <amountWithoutTax>
                                          <xsl:value-of select="./ns1:Invoice/ns2:AmountWithoutTax" />
                                       </amountWithoutTax>
                                    </xsl:if>
                                    <xsl:if test="string-length(./ns1:Invoice/ns2:Balance)!=0">
                                       <balance>
                                          <xsl:value-of select="./ns1:Invoice/ns2:Balance" />
                                       </balance>
                                    </xsl:if>
                                    <xsl:if test="string-length(./ns1:Invoice/ns2:Comments)!=0">
                                       <comments>
                                          <xsl:value-of select="./ns1:Invoice/ns2:Comments" />
                                       </comments>
                                    </xsl:if>
                                    <xsl:if test="string-length(./ns1:Invoice/ns2:CreditBalanceAdjustmentAmount)!=0">
                                       <creditBalanceAdjustmentAmount>
                                          <xsl:value-of select="./ns1:Invoice/ns2:CreditBalanceAdjustmentAmount" />
                                       </creditBalanceAdjustmentAmount>
                                    </xsl:if>
                                    <xsl:if test="string-length(./ns1:Invoice/ns2:DueDate)!=0">
                                       <dueDate>
                                          <xsl:value-of select="./ns1:Invoice/ns2:DueDate" />
                                       </dueDate>
                                    </xsl:if>
                                    <xsl:if test="string-length(./ns1:Invoice/ns2:InvoiceDate)!=0">
                                       <invoiceDate>
                                          <xsl:value-of select="./ns1:Invoice/ns2:InvoiceDate" />
                                       </invoiceDate>
                                    </xsl:if>
                                    <xsl:if test="string-length(./ns1:Invoice/ns2:InvoiceNumber)!=0">
                                       <invoiceNumber>
                                          <xsl:value-of select="./ns1:Invoice/ns2:InvoiceNumber" />
                                       </invoiceNumber>
                                    </xsl:if>
                                    <xsl:if test="string-length(./ns1:Invoice/ns2:LastEmailSentDate)!=0">
                                       <lastEmailSentDate>
                                          <xsl:value-of select="./ns1:Invoice/ns2:LastEmailSentDate" />
                                       </lastEmailSentDate>
                                    </xsl:if>
                                    <xsl:if test="string-length(./ns1:Invoice/ns2:PaymentAmount)!=0">
                                       <paymentAmount>
                                          <xsl:value-of select="./ns1:Invoice/ns2:PaymentAmount" />
                                       </paymentAmount>
                                    </xsl:if>
                                    <xsl:if test="string-length(./ns1:Invoice/ns2:PostedBy)!=0">
                                       <postedBy>
                                          <xsl:value-of select="./ns1:Invoice/ns2:PostedBy" />
                                       </postedBy>
                                    </xsl:if>
                                    <xsl:if test="string-length(./ns1:Invoice/ns2:PostedDate)!=0">
                                       <postedDate>
                                          <xsl:value-of select="./ns1:Invoice/ns2:PostedDate" />
                                       </postedDate>
                                    </xsl:if>
                                    <xsl:if test="string-length(./ns1:Invoice/ns2:RefundAmount)!=0">
                                       <refundAmount>
                                          <xsl:value-of select="./ns1:Invoice/ns2:RefundAmount" />
                                       </refundAmount>
                                    </xsl:if>
                                    <xsl:if test="string-length(./ns1:Invoice/ns2:Status)!=0">
                                       <status>
                                          <xsl:value-of select="./ns1:Invoice/ns2:Status" />
                                       </status>
                                    </xsl:if>
                                    <xsl:if test="string-length(./ns1:Invoice/ns2:TargetDate)!=0">
                                       <targetDate>
                                          <xsl:value-of select="./ns1:Invoice/ns2:TargetDate" />
                                       </targetDate>
                                    </xsl:if>
                                    <xsl:if test="string-length(./ns1:Invoice/ns2:TaxAmount)!=0">
                                       <taxAmount>
                                          <xsl:value-of select="./ns1:Invoice/ns2:TaxAmount" />
                                       </taxAmount>
                                    </xsl:if>
                                    <xsl:if test="string-length(./ns1:Invoice/ns2:TaxExemptAmount)!=0">
                                       <taxExemptAmount>
                                          <xsl:value-of select="./ns1:Invoice/ns2:TaxExemptAmount" />
                                       </taxExemptAmount>
                                    </xsl:if>
                                    <xsl:if test="string-length(./ns1:Invoice/ns2:TransferredToAccounting)!=0">
                                       <transferredToAccounting>
                                          <xsl:value-of select="./ns1:Invoice/ns2:TransferredToAccounting" />
                                       </transferredToAccounting>
                                    </xsl:if>
                                 </invoice>
                              </xsl:if>
                              <xsl:for-each select="./ns1:InvoiceItem">
                                 <invoiceItem>
                                    <xsl:if test="string-length(./ns2:Id)!=0">
                                       <id>
                                          <xsl:value-of select="./ns2:Id" />
                                       </id>
                                    </xsl:if>
                                    <xsl:if test="string-length(./ns2:AccountingCode)!=0">
                                       <accountingCode>
                                          <xsl:value-of select="./ns2:AccountingCode" />
                                       </accountingCode>
                                    </xsl:if>
                                    <xsl:if test="string-length(./ns2:AppliedToInvoiceItemId)!=0">
                                       <AppliedToInvoiceItemId>
                                          <xsl:value-of select="./ns2:AppliedToInvoiceItemId" />
                                       </AppliedToInvoiceItemId>
                                    </xsl:if>
                                    <xsl:if test="string-length(./ns2:ChargeAmount)!=0">
                                       <chargeAmount>
                                          <xsl:value-of select="./ns2:ChargeAmount" />
                                       </chargeAmount>
                                    </xsl:if>
                                    <xsl:if test="string-length(./ns2:ChargeDate)!=0">
                                       <chargeDate>
                                          <xsl:value-of select="./ns2:ChargeDate" />
                                       </chargeDate>
                                    </xsl:if>
                                    <xsl:if test="string-length(./ns2:ChargeDescription)!=0">
                                       <chargeDescription>
                                          <xsl:value-of select="./ns2:ChargeDescription" />
                                       </chargeDescription>
                                    </xsl:if>
                                    <xsl:if test="string-length(./ns2:ChargeId)!=0">
                                       <chargeId>
                                          <xsl:value-of select="./ns2:ChargeId" />
                                       </chargeId>
                                    </xsl:if>
                                    <xsl:if test="string-length(./ns2:ChargeName)!=0">
                                       <chargeName>
                                          <xsl:value-of select="./ns2:ChargeName" />
                                       </chargeName>
                                    </xsl:if>
                                    <xsl:if test="string-length(./ns2:ChargeNumber)!=0">
                                       <chargeNumber>
                                          <xsl:value-of select="./ns2:ChargeNumber" />
                                       </chargeNumber>
                                    </xsl:if>
                                    <xsl:if test="string-length(./ns2:ChargeType)!=0">
                                       <chargeType>
                                          <xsl:value-of select="./ns2:ChargeType" />
                                       </chargeType>
                                    </xsl:if>
                                    <xsl:if test="string-length(./ns2:InvoiceId)!=0">
                                       <InvoiceId>
                                          <xsl:value-of select="./ns2:InvoiceId" />
                                       </InvoiceId>
                                    </xsl:if>
                                    <xsl:if test="string-length(./ns2:ProcessingType)!=0">
                                       <processingType>
                                          <xsl:value-of select="./ns2:ProcessingType" />
                                       </processingType>
                                    </xsl:if>
                                    <xsl:if test="string-length(./ns2:ProductDescription)!=0">
                                       <productDescription>
                                          <xsl:value-of select="./ns2:ProductDescription" />
                                       </productDescription>
                                    </xsl:if>
                                    <xsl:if test="string-length(./ns2:ProductId)!=0">
                                       <productId>
                                          <xsl:value-of select="./ns2:ProductId" />
                                       </productId>
                                    </xsl:if>
                                    <xsl:if test="string-length(./ns2:ProductName)!=0">
                                       <productName>
                                          <xsl:value-of select="./ns2:ProductName" />
                                       </productName>
                                    </xsl:if>
                                    <xsl:if test="string-length(./ns2:ProductRatePlanChargeId)!=0">
                                       <productRatePlanChargeId>
                                          <xsl:value-of select="./ns2:ProductRatePlanChargeId" />
                                       </productRatePlanChargeId>
                                    </xsl:if>
                                    <xsl:if test="string-length(./ns2:Quantity)!=0">
                                       <quantity>
                                          <xsl:value-of select="./ns2:Quantity" />
                                       </quantity>
                                    </xsl:if>
                                    <xsl:if test="string-length(./ns2:RatePlanChargeId)!=0">
                                       <ratePlanChargeId>
                                          <xsl:value-of select="./ns2:RatePlanChargeId" />
                                       </ratePlanChargeId>
                                    </xsl:if>
                                    <xsl:if test="string-length(./ns2:RevRecCode)!=0">
                                       <revRecCode>
                                          <xsl:value-of select="./ns2:RevRecCode" />
                                       </revRecCode>
                                    </xsl:if>
                                    <xsl:if test="string-length(./ns2:RevRecStartDate)!=0">
                                       <revRecStartDate>
                                          <xsl:value-of select="./ns2:RevRecStartDate" />
                                       </revRecStartDate>
                                    </xsl:if>
                                    <xsl:if test="string-length(./ns2:RevRecTriggerCondition)!=0">
                                       <revRecTriggerCondition>
                                          <xsl:value-of select="./ns2:RevRecTriggerCondition" />
                                       </revRecTriggerCondition>
                                    </xsl:if>
                                    <xsl:if test="string-length(./ns2:ServiceEndDate)!=0">
                                       <serviceEndDate>
                                          <xsl:value-of select="./ns2:ServiceEndDate" />
                                       </serviceEndDate>
                                    </xsl:if>
                                    <xsl:if test="string-length(./ns2:ServiceStartDate)!=0">
                                       <serviceStartDate>
                                          <xsl:value-of select="./ns2:ServiceStartDate" />
                                       </serviceStartDate>
                                    </xsl:if>
                                    <xsl:if test="string-length(./ns2:SKU)!=0">
                                       <stockKeepingUnit>
                                          <xsl:value-of select="./ns2:SKU" />
                                       </stockKeepingUnit>
                                    </xsl:if>
                                    <xsl:if test="string-length(./ns2:SubscriptionId)!=0">
                                       <subscriptionId>
                                          <xsl:value-of select="./ns2:SubscriptionId" />
                                       </subscriptionId>
                                    </xsl:if>
                                    <xsl:if test="string-length(./ns2:SubscriptionNumber)!=0">
                                       <subscriptionNumber>
                                          <xsl:value-of select="./ns2:SubscriptionNumber" />
                                       </subscriptionNumber>
                                    </xsl:if>
                                    <xsl:if test="string-length(./ns2:TaxAmount)!=0">
                                       <taxAmount>
                                          <xsl:value-of select="./ns2:TaxAmount" />
                                       </taxAmount>
                                    </xsl:if>
                                    <xsl:if test="string-length(./ns2:TaxCode)!=0">
                                       <taxCode>
                                          <xsl:value-of select="./ns2:TaxCode" />
                                       </taxCode>
                                    </xsl:if>
                                    <xsl:if test="string-length(./ns2:TaxExemptAmount)!=0">
                                       <taxExemptAmount>
                                          <xsl:value-of select="./ns2:TaxExemptAmount" />
                                       </taxExemptAmount>
                                    </xsl:if>
                                    <xsl:if test="string-length(./ns2:TaxMode)!=0">
                                       <taxMode>
                                          <xsl:value-of select="./ns2:TaxMode" />
                                       </taxMode>
                                    </xsl:if>
                                    <xsl:if test="string-length(./ns2:UnitPrice)!=0">
                                       <unitPrice>
                                          <xsl:value-of select="./ns2:UnitPrice" />
                                       </unitPrice>
                                    </xsl:if>
                                    <xsl:if test="string-length(./ns2:UOM)!=0">
                                       <unitOfMeasure>
                                          <xsl:value-of select="./ns2:UOM" />
                                       </unitOfMeasure>
                                    </xsl:if>
                                 </invoiceItem>
                              </xsl:for-each>
                           </xsl:for-each>
                        </invoiceData>
                     </xsl:if>
                     <xsl:if test="string-length(./ns1:InvoiceId)!=0">
                        <invoiceId>
                           <xsl:value-of select="./ns1:InvoiceId" />
                        </invoiceId>
                     </xsl:if>
                     <xsl:if test="string-length(./ns1:InvoiceNumber)!=0">
                        <invoiceNumber>
                           <xsl:value-of select="./ns1:InvoiceNumber" />
                        </invoiceNumber>
                     </xsl:if>
                     <xsl:if test="count(./ns1:InvoiceResult/ns1:Invoice)!=0">
                        <invoiceResult>
                           <xsl:for-each select="./ns1:InvoiceResult/ns1:Invoice">
                              <invoice>
                                 <xsl:if test="string-length(./ns2:Id)!=0">
                                    <id>
                                       <xsl:value-of select="./ns2:Id" />
                                    </id>
                                 </xsl:if>
                                 <xsl:if test="string-length(./ns2:Number)!=0">
                                    <number>
                                       <xsl:value-of select="./ns2:Number" />
                                    </number>
                                 </xsl:if>
                              </invoice>
                           </xsl:for-each>
                        </invoiceResult>
                     </xsl:if>
                     <xsl:if test="string-length(./ns1:PaymentId)!=0">
                        <paymentId>
                           <xsl:value-of select="./ns1:PaymentId" />
                        </paymentId>
                     </xsl:if>
                     <xsl:if test="string-length(./ns1:PaymentTransactionNumber)!=0">
                        <paymentTransactionNumber>
                           <xsl:value-of select="./ns1:PaymentTransactionNumber" />
                        </paymentTransactionNumber>
                     </xsl:if>
                     <xsl:if test="string-length(./ns1:SubscriptionId)!=0">
                        <subscriptionId>
                           <xsl:value-of select="./ns1:SubscriptionId" />
                        </subscriptionId>
                     </xsl:if>
                     <xsl:if test="string-length(./ns1:SubscriptionNumber)!=0">
                        <subscriptionNumber>
                           <xsl:value-of select="./ns1:SubscriptionNumber" />
                        </subscriptionNumber>
                     </xsl:if>
                     <success>
                        <xsl:value-of select="./ns1:Success" />
                     </success>
                     <xsl:if test="string-length(./ns1:TotalMrr)!=0">
                        <totalMRR>
                           <xsl:value-of select="./ns1:TotalMrr" />
                        </totalMRR>
                     </xsl:if>
                     <xsl:if test="string-length(./ns1:TotalTcv)!=0">
                        <totalTCV>
                           <xsl:value-of select="./ns1:TotalTcv" />
                        </totalTCV>
                     </xsl:if>
                  </subscribeResponse>
               </xsl:for-each>
            </previewSubscriptionCreationResponse>
         </xsl:template>
      </xsl:stylesheet>
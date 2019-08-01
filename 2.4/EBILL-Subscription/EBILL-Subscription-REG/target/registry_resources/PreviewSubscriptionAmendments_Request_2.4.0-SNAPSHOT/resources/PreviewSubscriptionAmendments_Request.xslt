<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:api="http://api.zuora.com/" xmlns:obj="http://object.api.zuora.com/" xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/"  version="1.0">
   <xsl:output method="xml" version="1.0" encoding="UTF-8" />
   <xsl:template match="/">
            <api:amend>
               <!--Zero or more repetitions:-->
               <api:requests>
                  <!--Zero or more repetitions:-->
                  <xsl:if test="count(//previewSubscriptionAmendments/amend/amendments)!=0">
                     <xsl:for-each select="//previewSubscriptionAmendments/amend/amendments">
                        <api:Amendments>
                           <!--Optional:-->
                           <xsl:if test="count(./autoRenew)!=0">
                              <obj:AutoRenew>
                                 <xsl:value-of select="./autoRenew" />
                              </obj:AutoRenew>
                           </xsl:if>
                           <!--Optional:-->
                           <xsl:if test="count(./contractEffectiveDate)!=0">
                              <obj:ContractEffectiveDate>
                                 <xsl:value-of select="./contractEffectiveDate" />
                              </obj:ContractEffectiveDate>
                           </xsl:if>
                           <!--Optional:-->
                           <xsl:if test="count(./customerAcceptanceDate)!=0">
                              <obj:CustomerAcceptanceDate>
                                 <xsl:value-of select="./customerAcceptanceDate" />
                              </obj:CustomerAcceptanceDate>
                           </xsl:if>
                           <!--Optional:-->
                           <xsl:if test="count(./description)!=0">
                              <obj:Description>
                                 <xsl:value-of select="./description" />
                              </obj:Description>
                           </xsl:if>
                           <!--Optional:-->
                           <xsl:if test="count(./destinationAccountId)!=0">
                              <obj:DestinationAccountId>
                                 <xsl:value-of select="./destinationAccountId" />
                              </obj:DestinationAccountId>
                           </xsl:if>
                           <!--Optional:-->
                           <xsl:if test="count(./destinationInvoiceOwnerId)!=0">
                              <obj:DestinationInvoiceOwnerId>
                                 <xsl:value-of select="./destinationInvoiceOwnerId" />
                              </obj:DestinationInvoiceOwnerId>
                           </xsl:if>
                           <!--Optional:-->
                           <xsl:if test="count(./effectiveDate)!=0">
                              <obj:EffectiveDate>
                                 <xsl:value-of select="./effectiveDate" />
                              </obj:EffectiveDate>
                           </xsl:if>
                           <!--Optional:-->
                           <xsl:if test="count(./initialTerm)!=0">
                              <obj:InitialTerm>
                                 <xsl:value-of select="./initialTerm" />
                              </obj:InitialTerm>
                           </xsl:if>
                           <!--Optional:-->
                           <xsl:if test="count(./name)!=0">
                              <obj:Name>
                                 <xsl:value-of select="./name" />
                              </obj:Name>
                           </xsl:if>
                           <!--Optional:-->
                              <obj:RatePlanData>
                                 <!--Optional:-->
                                    <api:RatePlan>
                                       <!--Optional:-->
                                       <xsl:if test="count(./ratePlanData/ratePlan/amendmentSubscriptionRatePlanId)!=0">
                                          <obj:AmendmentSubscriptionRatePlanId>
                                             <xsl:value-of select="./ratePlanData/ratePlan/amendmentSubscriptionRatePlanId" />
                                          </obj:AmendmentSubscriptionRatePlanId>
                                       </xsl:if>
                                       <!--Optional:-->
                                       <xsl:if test="count(./ratePlanData/ratePlan/amendmentType)!=0">
                                          <obj:AmendmentType>
                                             <xsl:value-of select="./ratePlanData/ratePlan/amendmentType" />
                                          </obj:AmendmentType>
                                       </xsl:if>
                                
                                      
                                       <!--Optional:-->
                                       <xsl:if test="count(./ratePlanData/ratePlan/productRatePlanId)!=0">
                                          <obj:ProductRatePlanId>
                                             <xsl:value-of select="./ratePlanData/ratePlan/productRatePlanId" />
                                          </obj:ProductRatePlanId>
                                       </xsl:if>
                                       <!--Optional:-->
                                       <xsl:if test="count(./ratePlanData/ratePlan/subscriptionId)!=0">
                                          <obj:SubscriptionId>
                                             <xsl:value-of select="./ratePlanData/ratePlan/subscriptionId" />
                                          </obj:SubscriptionId>
                                       </xsl:if>
                                       <!--Optional:-->
                                    </api:RatePlan>
                                 <!--Zero or more repetitions:-->
                                    <xsl:for-each select="./ratePlanData/ratePlanChargeData">
                                       <api:RatePlanChargeData>
                                          <!--Optional:-->
                                          <xsl:if test="count(./ratePlanCharge)!=0">
                                             <api:RatePlanCharge>
                                                <!--Optional:-->
                                                <xsl:if test="count(./ratePlanCharge/discountAmount)!=0">
                                                   <obj:DiscountAmount>
                                                      <xsl:value-of select="./ratePlanCharge/discountAmount" />
                                                   </obj:DiscountAmount>
                                                </xsl:if>
                                                <!--Optional:-->
                                                <xsl:if test="count(./ratePlanCharge/discountPercentage)!=0">
                                                   <obj:DiscountPercentage>
                                                      <xsl:value-of select="./ratePlanCharge/discountPercentage" />
                                                   </obj:DiscountPercentage>
                                                </xsl:if>
                                                <!--Optional:-->
                                                <xsl:if test="count(./ratePlanCharge/listPriceBase)!=0">
                                                   <obj:ListPriceBase>
                                                      <xsl:value-of select="./ratePlanCharge/listPriceBase" />
                                                   </obj:ListPriceBase>
                                                </xsl:if>
                                                <!--Optional:-->
                                                <xsl:if test="count(./ratePlanCharge/price)!=0">
                                                   <obj:Price>
                                                      <xsl:value-of select="./ratePlanCharge/price" />
                                                   </obj:Price>
                                                </xsl:if>
                                                <!--Optional:-->
                                                <xsl:if test="count(./ratePlanCharge/priceChangeOption)!=0">
                                                   <obj:PriceChangeOption>
                                                      <xsl:value-of select="./ratePlanCharge/priceChangeOption" />
                                                   </obj:PriceChangeOption>
                                                </xsl:if>
                                                <!--Optional:-->
                                                <xsl:if test="count(./ratePlanCharge/priceIncreasePercentage)!=0">
                                                   <obj:PriceIncreasePercentage>
                                                      <xsl:value-of select="./ratePlanCharge/priceIncreasePercentage" />
                                                   </obj:PriceIncreasePercentage>
                                                </xsl:if>
                                                <!--Optional:-->
                                                <xsl:if test="count(./ratePlanCharge/productRatePlanChargeId)!=0">
                                                   <obj:ProductRatePlanChargeId>
                                                      <xsl:value-of select="./ratePlanCharge/productRatePlanChargeId" />
                                                   </obj:ProductRatePlanChargeId>
                                                </xsl:if>
                                                <!--Optional:-->
                                                <xsl:if test="count(./ratePlanCharge/quantity)!=0">
                                                   <obj:Quantity>
                                                      <xsl:value-of select="./ratePlanCharge/quantity" />
                                                   </obj:Quantity>
                                                </xsl:if>
                                                <!--Optional:-->
                                                <xsl:if test="count(./ratePlanCharge/specificBillingPeriod)!=0">
                                                   <obj:SpecificBillingPeriod>
                                                      <xsl:value-of select="./ratePlanCharge/specificBillingPeriod" />
                                                   </obj:SpecificBillingPeriod>
                                                </xsl:if>
                                                <!--Optional:-->
                                                <xsl:if test="count(./ratePlanCharge/triggerDate)!=0">
                                                   <obj:TriggerDate>
                                                      <xsl:value-of select="./ratePlanCharge/triggerDate" />
                                                   </obj:TriggerDate>
                                                </xsl:if>
                                                <!--Optional:-->
                                                <xsl:if test="count(./ratePlanCharge/triggerEvent)!=0">
                                                   <obj:TriggerEvent>
                                                      <xsl:value-of select="./ratePlanCharge/triggerEvent" />
                                                   </obj:TriggerEvent>
                                                </xsl:if>
                                                <!--Optional:-->
                                                <xsl:if test="count(./ratePlanCharge/unusedUnitsCreditRates)!=0">
                                                   <obj:UnusedUnitsCreditRates>
                                                      <xsl:value-of select="./ratePlanCharge/unusedUnitsCreditRates" />
                                                   </obj:UnusedUnitsCreditRates>
                                                </xsl:if>
                                                <!--Optional:-->
                                                <xsl:if test="count(./ratePlanCharge/upToPeriods)!=0">
                                                   <obj:UpToPeriods>
                                                      <xsl:value-of select="./ratePlanCharge/upToPeriods" />
                                                   </obj:UpToPeriods>
                                                </xsl:if>
                                                <!--Optional:-->
                                             </api:RatePlanCharge>
                                          </xsl:if>
                                       </api:RatePlanChargeData>
                                    </xsl:for-each>
                              </obj:RatePlanData>

                           <!--Optional:-->
                           <xsl:if test="count(./renewalSetting)!=0">
                              <obj:RenewalSetting>
                                 <xsl:value-of select="./renewalSetting" />
                              </obj:RenewalSetting>
                           </xsl:if>
                           <!--Optional:-->
                           <xsl:if test="count(./renewalTerm)!=0">
                              <obj:RenewalTerm>
                                 <xsl:value-of select="./renewalTerm" />
                              </obj:RenewalTerm>
                           </xsl:if>
                           <!--Optional:-->
                           <xsl:if test="count(./renewalTermPeriodType)!=0">
                              <obj:RenewalTermPeriodType>
                                 <xsl:value-of select="./renewalTermPeriodType" />
                              </obj:RenewalTermPeriodType>
                           </xsl:if>
                           <!--Optional:-->
                           <xsl:if test="count(./serviceActivationDate)!=0">
                              <obj:ServiceActivationDate>
                                 <xsl:value-of select="./serviceActivationDate" />
                              </obj:ServiceActivationDate>
                           </xsl:if>
                           <!--Optional:-->
                           <xsl:if test="count(./status)!=0">
                              <obj:Status>
                                 <xsl:value-of select="./status" />
                              </obj:Status>
                           </xsl:if>
                           <!--Optional:-->
                           <xsl:if test="count(./subscriptionId)!=0">
                              <obj:SubscriptionId>
                                 <xsl:value-of select="./subscriptionId" />
                              </obj:SubscriptionId>
                           </xsl:if>
                           <!--Optional:-->
                           <xsl:if test="count(./termStartDate)!=0">
                              <obj:TermStartDate>
                                 <xsl:value-of select="./termStartDate" />
                              </obj:TermStartDate>
                           </xsl:if>
                           <!--Optional:-->
                           <xsl:if test="count(./termType)!=0">
                              <obj:TermType>
                                 <xsl:value-of select="./termType" />
                              </obj:TermType>
                           </xsl:if>
                           <!--Optional:-->
                           <xsl:if test="count(./type)!=0">
                              <obj:Type>
                                 <xsl:value-of select="./type" />
                              </obj:Type>
                           </xsl:if>
						   <!-- Optional -->
					<xsl:if test="count(./resumeDate)!=0">
						<obj:ResumeDate>
							<xsl:value-of select="./resumeDate" />
						</obj:ResumeDate>
					</xsl:if>
					<!-- Optional -->
					<xsl:if test="count(./suspendDate)!=0">
						<obj:SuspendDate>
							<xsl:value-of select="./suspendDate" />
						</obj:SuspendDate>
					</xsl:if>
                           <!--Optional:-->
                        </api:Amendments>
                     </xsl:for-each>
                  </xsl:if>
                  <!--Optional:-->
                     <api:AmendOptions>
                        <!--Optional:-->
                        <xsl:if test="count(//previewSubscriptionAmendments/amend/amendOptions/applyCreditBalance)!=0">
                           <api:ApplyCreditBalance>
                              <xsl:value-of select="//previewSubscriptionAmendments/amend/amendOptions/applyCreditBalance" />
                           </api:ApplyCreditBalance>
                        </xsl:if>
                        <!--Optional:-->
                        <xsl:if test="count(//previewSubscriptionAmendments/amend/amendOptions/externalPaymentOptions)!=0">
                           <api:ExternalPaymentOptions>
                              <!--Optional:-->
                              <xsl:if test="count(//previewSubscriptionAmendments/amend/amendOptions/externalPaymentOptions/amount)!=0">
                                 <api:Amount>
                                    <xsl:value-of select="//previewSubscriptionAmendments/amend/amendOptions/externalPaymentOptions/amount" />
                                 </api:Amount>
                              </xsl:if>
                              <!--Optional:-->
                              <xsl:if test="count(//previewSubscriptionAmendments/amend/amendOptions/externalPaymentOptions/effectiveDate)!=0">
                                 <api:EffectiveDate>
                                    <xsl:value-of select="//previewSubscriptionAmendments/amend/amendOptions/externalPaymentOptions/effectiveDate" />
                                 </api:EffectiveDate>
                              </xsl:if>
                              <!--Optional:-->
                              <xsl:if test="count(//previewSubscriptionAmendments/amend/amendOptions/externalPaymentOptions/gatewayOrderId)!=0">
                                 <api:GatewayOrderId>
                                    <xsl:value-of select="//previewSubscriptionAmendments/amend/amendOptions/externalPaymentOptions/gatewayOrderId" />
                                 </api:GatewayOrderId>
                              </xsl:if>
                              <!--Optional:-->
                              <xsl:if test="count(//previewSubscriptionAmendments/amend/amendOptions/externalPaymentOptions/paymentMethodId)!=0">
                                 <api:PaymentMethodId>
                                    <xsl:value-of select="//previewSubscriptionAmendments/amend/amendOptions/externalPaymentOptions/paymentMethodId" />
                                 </api:PaymentMethodId>
                              </xsl:if>
                              <!--Optional:-->
                              <xsl:if test="count(//previewSubscriptionAmendments/amend/amendOptions/externalPaymentOptions/referenceId)!=0">
                                 <api:ReferenceId>
                                    <xsl:value-of select="//previewSubscriptionAmendments/amend/amendOptions/externalPaymentOptions/referenceId" />
                                 </api:ReferenceId>
                              </xsl:if>
                           </api:ExternalPaymentOptions>
                        </xsl:if>
                        <!--Optional:-->
                        <xsl:if test="count(//previewSubscriptionAmendments/amend/amendOptions/generateInvoice)!=0">
                           <api:GenerateInvoice>
                              <xsl:value-of select="//previewSubscriptionAmendments/amend/amendOptions/generateInvoice" />
                           </api:GenerateInvoice>
                        </xsl:if>
                        <!--Optional:-->
                        <xsl:if test="count(//previewSubscriptionAmendments/amend/amendOptions/invoiceProcessingOptions)!=0">
                           <api:InvoiceProcessingOptions>
                              <!--Optional:-->
                              <xsl:if test="count(//previewSubscriptionAmendments/amend/amendOptions/invoiceProcessingOptions/invoiceDate)!=0">
                                 <api:InvoiceDate>
                                    <xsl:value-of select="//previewSubscriptionAmendments/amend/amendOptions/invoiceProcessingOptions/invoiceDate" />
                                 </api:InvoiceDate>
                              </xsl:if>
                              <!--Optional:-->
                              <xsl:if test="count(//previewSubscriptionAmendments/amend/amendOptions/invoiceProcessingOptions/invoiceTargetDate)!=0">
                                 <api:InvoiceTargetDate>
                                    <xsl:value-of select="//previewSubscriptionAmendments/amend/amendOptions/invoiceProcessingOptions/invoiceTargetDate" />
                                 </api:InvoiceTargetDate>
                              </xsl:if>
                           </api:InvoiceProcessingOptions>
                        </xsl:if>
                        <!--Optional:-->
                        <xsl:if test="count(//previewSubscriptionAmendments/amend/amendOptions/processPayments)!=0">
                           <api:ProcessPayments>
                              <xsl:value-of select="//previewSubscriptionAmendments/amend/amendOptions/processPayments" />
                           </api:ProcessPayments>
                        </xsl:if>
                     </api:AmendOptions>

                  <!--Optional:-->
                     <api:PreviewOptions>
                        <!--Optional:-->
                        <api:EnablePreviewMode>true</api:EnablePreviewMode>
                        <!--Optional:-->
                        <xsl:if test="count(//previewSubscriptionAmendments/amend/previewOptions/numberOfPeriods)!=0">
                           <api:NumberOfPeriods>
                              <xsl:value-of select="//previewSubscriptionAmendments/amend/previewOptions/numberOfPeriods" />
                           </api:NumberOfPeriods>
                        </xsl:if>
                        <!--Optional:-->
							<xsl:if test="count(//previewSubscriptionAmendments/amend/previewOptions/previewThroughTermEnd)!=0">
                           <api:PreviewThroughTermEnd>
                              <xsl:value-of select="//previewSubscriptionAmendments/amend/previewOptions/previewThroughTermEnd" />
                           </api:PreviewThroughTermEnd>
                        </xsl:if>
                        <!--Optional:-->
                        <xsl:if test="count(//previewSubscriptionAmendments/amend/previewOptions/previewType)!=0">
                           <api:PreviewType>
                              <xsl:value-of select="//previewSubscriptionAmendments/amend/previewOptions/previewType" />
                           </api:PreviewType>
                        </xsl:if>
                     </api:PreviewOptions>

               </api:requests>
            </api:amend>
   </xsl:template>
</xsl:stylesheet>
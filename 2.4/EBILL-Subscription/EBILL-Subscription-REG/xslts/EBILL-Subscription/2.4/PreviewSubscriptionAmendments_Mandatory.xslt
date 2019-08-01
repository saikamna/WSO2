<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/" xmlns:api="http://api.zuora.com/" xmlns:ns1="http://api.zuora.com/" xmlns:ns2="http://object.api.zuora.com/">
   <xsl:output method="xml" version="1.0" encoding="UTF-8"/>
   <xsl:template match="/">
      <previewSubscriptionAmendments>
         <xsl:choose>
            <xsl:when test="//previewSubscriptionAmendments/amend">
               <amend>
                  <xsl:if test="//previewSubscriptionAmendments/amend/amendments">
                     <xsl:for-each select="//previewSubscriptionAmendments/amend/amendments">
                        <amendments>
                           <xsl:if test="./autoRenew">
                              <xsl:copy-of select="./autoRenew"/>
                           </xsl:if>
                           <xsl:if test="./contractEffectiveDate">
                              <xsl:copy-of select="./contractEffectiveDate"/>
                           </xsl:if>
                           <xsl:if test="./customerAcceptanceDate">
                              <xsl:copy-of select="./customerAcceptanceDate"/>
                           </xsl:if>
                           <xsl:if test="./description">
                              <xsl:choose>
                                 <xsl:when test="string-length(./description/text()) >= 0 and string-length(./description/text()) &lt; 501">
                                    <xsl:copy-of select="./description"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <faultdescription>
                                       <xsl:value-of select="concat('length should be 0 to 500',' - ','[description]',' , ')"/>
                                    </faultdescription>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:if>
                           <xsl:if test="./destinationAccountId">
                              <xsl:choose>
                                 <xsl:when test="string-length(./destinationAccountId/text()) >= 0 and string-length(./destinationAccountId/text()) &lt; 33">
                                    <xsl:copy-of select="./destinationAccountId"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <faultdescription>
                                       <xsl:value-of select="concat('length should be 0 to 32',' - ','[destinationAccountId]',' , ')"/>
                                    </faultdescription>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:if>
                           <xsl:if test="./destinationInvoiceOwnerId">
                              <xsl:choose>
                                 <xsl:when test="string-length(./destinationInvoiceOwnerId/text()) >= 0 and string-length(./destinationInvoiceOwnerId/text()) &lt; 33">
                                    <xsl:copy-of select="./destinationInvoiceOwnerId"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <faultdescription>
                                       <xsl:value-of select="concat('length should be 0 to 32',' - ','[destinationInvoiceOwnerId]',' , ')"/>
                                    </faultdescription>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:if>
                           <xsl:if test="./effectiveDate">
                              <xsl:copy-of select="./effectiveDate"/>
                           </xsl:if>
                           <xsl:if test="./initialTerm">
                              <xsl:copy-of select="./initialTerm"/>
                           </xsl:if>
                           <xsl:if test="./name">
                              <xsl:choose>
                                 <xsl:when test="string-length(./name/text()) >= 0 and string-length(./name/text()) &lt; 101">
                                    <xsl:copy-of select="./name"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <faultdescription>
                                       <xsl:value-of select="concat('length should be 0 to 100',' - ','[name]',' , ')"/>
                                    </faultdescription>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:if>
                           <xsl:if test="./ratePlanData">
                              <ratePlanData>
                                 <xsl:if test="./ratePlanData/ratePlan">
                                    <ratePlan>
                                       <xsl:if test="./ratePlanData/ratePlan/amendmentSubscriptionRatePlanId">
                                          <xsl:choose>
                                             <xsl:when test="string-length(./ratePlanData/ratePlan/amendmentSubscriptionRatePlanId/text()) >= 0 and string-length(./ratePlanData/ratePlan/amendmentSubscriptionRatePlanId/text()) &lt; 33">
                                                <xsl:copy-of select="./ratePlanData/ratePlan/amendmentSubscriptionRatePlanId"/>
                                             </xsl:when>
                                             <xsl:otherwise>
                                                <faultdescription>
                                                   <xsl:value-of select="concat('length should be 0 to 32',' - ','[amendmentSubscriptionRatePlanId]',' , ')"/>
                                                </faultdescription>
                                             </xsl:otherwise>
                                          </xsl:choose>
                                       </xsl:if>
                                       <xsl:if test="./ratePlanData/ratePlan/amendmentType">
                                          <xsl:choose>
                                             <xsl:when test="string-length(./ratePlanData/ratePlan/amendmentType/text()) >= 0 and string-length(./ratePlanData/ratePlan/amendmentType/text()) &lt; 19">
                                                <xsl:copy-of select="./ratePlanData/ratePlan/amendmentType"/>
                                             </xsl:when>
                                             <xsl:otherwise>
                                                <faultdescription>
                                                   <xsl:value-of select="concat('length should be 0 to 18',' - ','[amendmentType]',' , ')"/>
                                                </faultdescription>
                                             </xsl:otherwise>
                                          </xsl:choose>
                                       </xsl:if>
                                       <xsl:if test="./ratePlanData/ratePlan/productRatePlanId">
                                          <xsl:choose>
                                             <xsl:when test="string-length(./ratePlanData/ratePlan/productRatePlanId/text()) >= 0 and string-length(./ratePlanData/ratePlan/productRatePlanId/text()) &lt; 33">
                                                <xsl:copy-of select="./ratePlanData/ratePlan/productRatePlanId"/>
                                             </xsl:when>
                                             <xsl:otherwise>
                                                <faultdescription>
                                                   <xsl:value-of select="concat('length should be 0 to 32',' - ','[productRatePlanId]',' , ')"/>
                                                </faultdescription>
                                             </xsl:otherwise>
                                          </xsl:choose>
                                       </xsl:if>
                                       <xsl:if test="./ratePlanData/ratePlan/subscriptionId">
                                          <xsl:choose>
                                             <xsl:when test="string-length(./ratePlanData/ratePlan/subscriptionId/text()) >= 0 and string-length(./ratePlanData/ratePlan/subscriptionId/text()) &lt; 33">
                                                <xsl:copy-of select="./ratePlanData/ratePlan/subscriptionId"/>
                                             </xsl:when>
                                             <xsl:otherwise>
                                                <faultdescription>
                                                   <xsl:value-of select="concat('length should be 0 to 32',' - ','[subscriptionId]',' , ')"/>
                                                </faultdescription>
                                             </xsl:otherwise>
                                          </xsl:choose>
                                       </xsl:if>
                                    </ratePlan>
                                 </xsl:if>
                                 <xsl:if test="./ratePlanData/ratePlanChargeData">
                                    <xsl:for-each select="./ratePlanData/ratePlanChargeData">
                                       <ratePlanChargeData>
                                          <xsl:if test="./ratePlanCharge">
                                             <ratePlanCharge>
                                                <xsl:if test="./ratePlanCharge/discountAmount">
                                                   <xsl:copy-of select="./ratePlanCharge/discountAmount"/>
                                                </xsl:if>
                                                <xsl:if test="./ratePlanCharge/discountPercentage">
                                                   <xsl:copy-of select="./ratePlanCharge/discountPercentage"/>
                                                </xsl:if>
                                                <xsl:if test="./ratePlanCharge/listPriceBase">
                                                   <xsl:choose>
                                                      <xsl:when test="./ratePlanCharge/listPriceBase/text()='Per Month' or ./ratePlanCharge/listPriceBase/text() =  'Per Billing Period'">
                                                         <xsl:copy-of select="./ratePlanCharge/listPriceBase"/>
                                                      </xsl:when>
                                                      <xsl:otherwise>
                                                         <faultdescription>
                                                            <xsl:value-of select="concat('listPriceBase should be',' - ','[Per Month, Per Billing Period]' , ' , ')"/>
                                                         </faultdescription>
                                                      </xsl:otherwise>
                                                   </xsl:choose>
                                                </xsl:if>
                                                <xsl:if test="./ratePlanCharge/price">
                                                   <xsl:copy-of select="./ratePlanCharge/price"/>
                                                </xsl:if>
                                                <xsl:if test="./ratePlanCharge/priceChangeOption">
                                                   <xsl:choose>
                                                      <xsl:when test="./ratePlanCharge/priceChangeOption/text()='NoChange' or ./ratePlanCharge/priceChangeOption/text() =  'SpecificPercentageValue' or ./ratePlanCharge/priceChangeOption/text() =  'UseLatestProductCatalogPricing'">
                                                         <xsl:copy-of select="./ratePlanCharge/priceChangeOption"/>
                                                      </xsl:when>
                                                      <xsl:otherwise>
                                                         <faultdescription>
                                                            <xsl:value-of select="concat('priceChangeOption should be',' - ','[NoChange, SpecificPercentageValue, UseLatestProductCatalogPricing]' , ' , ')"/>
                                                         </faultdescription>
                                                      </xsl:otherwise>
                                                   </xsl:choose>
                                                </xsl:if>
                                                <xsl:if test="./ratePlanCharge/priceIncreasePercentage">
                                                   <xsl:copy-of select="./ratePlanCharge/priceIncreasePercentage"/>
                                                </xsl:if>
                                                <xsl:if test="./ratePlanCharge/productRatePlanChargeId">
                                                   <xsl:choose>
                                                      <xsl:when test="string-length(./ratePlanCharge/productRatePlanChargeId/text()) >= 0 and string-length(./ratePlanCharge/productRatePlanChargeId/text()) &lt; 33">
                                                         <xsl:copy-of select="./ratePlanCharge/productRatePlanChargeId"/>
                                                      </xsl:when>
                                                      <xsl:otherwise>
                                                         <faultdescription>
                                                            <xsl:value-of select="concat('length should be 0 to 32',' - ','[productRatePlanChargeId]',' , ')"/>
                                                         </faultdescription>
                                                      </xsl:otherwise>
                                                   </xsl:choose>
                                                </xsl:if>
                                                <xsl:if test="./ratePlanCharge/quantity">
                                                   <xsl:copy-of select="./ratePlanCharge/quantity"/>
                                                </xsl:if>
                                                <xsl:if test="./ratePlanCharge/specificBillingPeriod">
                                                   <xsl:copy-of select="./ratePlanCharge/specificBillingPeriod"/>
                                                </xsl:if>
                                                <xsl:if test="./ratePlanCharge/triggerDate">
                                                   <xsl:copy-of select="./ratePlanCharge/triggerDate"/>
                                                </xsl:if>
                                                <xsl:if test="./ratePlanCharge/triggerEvent">
                                                   <xsl:choose>
                                                      <xsl:when test="./ratePlanCharge/triggerEvent/text()='ContractEffective' or ./ratePlanCharge/triggerEvent/text() =  'ServiceActivationDate' or ./ratePlanCharge/triggerEvent/text() =  'CustomerAcceptance' or ./ratePlanCharge/triggerEvent/text() =  'SpecificDate'">
                                                         <xsl:copy-of select="./ratePlanCharge/triggerEvent"/>
                                                      </xsl:when>
                                                      <xsl:otherwise>
                                                         <faultdescription>
                                                            <xsl:value-of select="concat('triggerEvent should be',' - ','[ContractEffective, SpecificPercentageValue, CustomerAcceptance, SpecificDate]' , ' , ')"/>
                                                         </faultdescription>
                                                      </xsl:otherwise>
                                                   </xsl:choose>
                                                </xsl:if>
                                                <xsl:if test="./ratePlanCharge/unusedUnitsCreditRates">
                                                   <xsl:copy-of select="./ratePlanCharge/unusedUnitsCreditRates"/>
                                                </xsl:if>
                                                <xsl:if test="./ratePlanCharge/upToPeriods">
                                                   <xsl:copy-of select="./ratePlanCharge/upToPeriods"/>
                                                </xsl:if>
                                             </ratePlanCharge>
                                          </xsl:if>
                                       </ratePlanChargeData>
                                    </xsl:for-each>
                                 </xsl:if>
                              </ratePlanData>
                           </xsl:if>
                           <xsl:if test="./renewalSetting">
                              <xsl:choose>
                                 <xsl:when test="./renewalSetting/text()='RENEW_WITH_SPECIFIC_TERM' or ./renewalSetting/text() =  'RENEW_TO_EVERGREEN'">
                                    <xsl:copy-of select="./renewalSetting"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <faultdescription>
                                       <xsl:value-of select="concat('renewalSetting should be',' - ','[RENEW_WITH_SPECIFIC_TERM, RENEW_TO_EVERGREEN]' , ' , ')"/>
                                    </faultdescription>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:if>
                           <xsl:if test="./renewalTerm">
                              <xsl:copy-of select="./renewalTerm"/>
                           </xsl:if>
                           <xsl:if test="./renewalTermPeriodType">
                              <xsl:copy-of select="./renewalTermPeriodType"/>
                           </xsl:if>
                           <xsl:if test="./serviceActivationDate">
                              <xsl:copy-of select="./serviceActivationDate"/>
                           </xsl:if>
                           <xsl:if test="./status">
                              <xsl:copy-of select="./status"/>
                           </xsl:if>
                           <xsl:if test="./subscriptionId">
                              <xsl:choose>
                                 <xsl:when test="string-length(./subscriptionId/text()) >= 0 and string-length(./subscriptionId/text()) &lt; 33">
                                    <xsl:copy-of select="./subscriptionId"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <faultdescription>
                                       <xsl:value-of select="concat('length should be 0 to 32',' - ','[subscriptionId]',' , ')"/>
                                    </faultdescription>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:if>
                           <xsl:if test="./termStartDate">
                              <xsl:copy-of select="./termStartDate"/>
                           </xsl:if>
                           <xsl:if test="./termType">
                              <xsl:choose>
                                 <xsl:when test="./termType/text()='TERMED' or ./termType/text() =  'EVERGREEN'">
                                    <xsl:copy-of select="./termType"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <faultdescription>
                                       <xsl:value-of select="concat('termType should be',' - ','[TERMED, EVERGREEN]' , ' , ')"/>
                                    </faultdescription>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:if>
                           <xsl:if test="./type">
                              <xsl:choose>
                                 <xsl:when test="./type/text()='NewProduct' or ./type/text() =  'OwnerTransfer' or ./type/text() =  'Cancellation' or ./type/text() =  'RemoveProduct' or ./type/text() =  'Renewal' or ./type/text() =  'UpdateProduct' or ./type/text() =  'TermsAndConditions' or ./type/text()='SuspendSubscription' or ./type/text()='ResumeSubscription'">
                                    <xsl:copy-of select="./type"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <faultdescription>
                                       <xsl:value-of select="concat('type should be',' - ','[NewProduct, OwnerTransfer, Cancellation, RemoveProduct, Renewal, UpdateProduct, TermsAndConditions, SuspendSubscription, ResumeSubscription]' , ' , ')"/>
                                    </faultdescription>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:if>
						   <xsl:if test="./resumeDate">
                              <xsl:copy-of select="./resumeDate"/>
                           </xsl:if>
						   <xsl:if test="./suspendDate">
                              <xsl:copy-of select="./suspendDate"/>
                           </xsl:if>
                        </amendments>
                     </xsl:for-each>
                  </xsl:if>
                  <xsl:if test="//previewSubscriptionAmendments/amend/amendOptions">
                     <amendOptions>
                        <xsl:if test="//previewSubscriptionAmendments/amend/amendOptions/applyCreditBalance">
                           <xsl:copy-of select="//previewSubscriptionAmendments/amend/amendOptions/applyCreditBalance"/>
                        </xsl:if>
                        <xsl:if test="//previewSubscriptionAmendments/amend/amendOptions/externalPaymentOptions">
                           <externalPaymentOptions>
                              <xsl:if test="//previewSubscriptionAmendments/amend/amendOptions/externalPaymentOptions/amount">
                                 <xsl:copy-of select="//previewSubscriptionAmendments/amend/amendOptions/externalPaymentOptions/amount"/>
                              </xsl:if>
                              <xsl:if test="//previewSubscriptionAmendments/amend/amendOptions/externalPaymentOptions/effectiveDate">
                                 <xsl:copy-of select="//previewSubscriptionAmendments/amend/amendOptions/externalPaymentOptions/effectiveDate"/>
                              </xsl:if>
                              <xsl:if test="//previewSubscriptionAmendments/amend/amendOptions/externalPaymentOptions/gatewayOrderId">
                                 <xsl:copy-of select="//previewSubscriptionAmendments/amend/amendOptions/externalPaymentOptions/gatewayOrderId"/>
                              </xsl:if>
                              <xsl:if test="//previewSubscriptionAmendments/amend/amendOptions/externalPaymentOptions/paymentMethodId">
                                 <xsl:copy-of select="//previewSubscriptionAmendments/amend/amendOptions/externalPaymentOptions/paymentMethodId"/>
                              </xsl:if>
                              <xsl:if test="//previewSubscriptionAmendments/amend/amendOptions/externalPaymentOptions/referenceId">
                                 <xsl:copy-of select="//previewSubscriptionAmendments/amend/amendOptions/externalPaymentOptions/referenceId"/>
                              </xsl:if>
                           </externalPaymentOptions>
                        </xsl:if>
                        <xsl:if test="//previewSubscriptionAmendments/amend/amendOptions/invoiceProcessingOptions">
                           <invoiceProcessingOptions>
                              <xsl:if test="//previewSubscriptionAmendments/amend/amendOptions/invoiceProcessingOptions/invoiceDate">
                                 <xsl:copy-of select="//previewSubscriptionAmendments/amend/amendOptions/invoiceProcessingOptions/invoiceDate"/>
                              </xsl:if>
                              <xsl:if test="//previewSubscriptionAmendments/amend/amendOptions/invoiceProcessingOptions/invoiceTargetDate">
                                 <xsl:copy-of select="//previewSubscriptionAmendments/amend/amendOptions/invoiceProcessingOptions/invoiceTargetDate"/>
                              </xsl:if>
                           </invoiceProcessingOptions>
                        </xsl:if>
                        <xsl:if test="//previewSubscriptionAmendments/amend/amendOptions/generateInvoice">
                           <xsl:copy-of select="//previewSubscriptionAmendments/amend/amendOptions/generateInvoice"/>
                        </xsl:if>
                        <xsl:if test="//previewSubscriptionAmendments/amend/amendOptions/processPayments">
                           <xsl:copy-of select="//previewSubscriptionAmendments/amend/amendOptions/processPayments"/>
                        </xsl:if>
                     </amendOptions>
                  </xsl:if>
                  <xsl:if test="//previewSubscriptionAmendments/amend/previewOptions">
                     <previewOptions>
                        <xsl:if test="//previewSubscriptionAmendments/amend/previewOptions/numberOfPeriods">
                           <xsl:copy-of select="//previewSubscriptionAmendments/amend/previewOptions/numberOfPeriods"/>
                        </xsl:if>
                        <xsl:if test="//previewSubscriptionAmendments/amend/previewOptions/previewThroughTermEnd">
                           <xsl:copy-of select="//previewSubscriptionAmendments/amend/previewOptions/previewThroughTermEnd"/>
                        </xsl:if>
                        <xsl:if test="//previewSubscriptionAmendments/amend/previewOptions/previewType">
                           <xsl:copy-of select="//previewSubscriptionAmendments/amend/previewOptions/previewType"/>
                        </xsl:if>
                     </previewOptions>
                  </xsl:if>
               </amend>
            </xsl:when>
            <xsl:otherwise>
               <faultdescription>
                  <xsl:value-of select="concat('Mandatory field cannot be empty',' - ','[amend]',' , ')"/>
               </faultdescription>
            </xsl:otherwise>
         </xsl:choose>
      </previewSubscriptionAmendments>
   </xsl:template>
</xsl:stylesheet>
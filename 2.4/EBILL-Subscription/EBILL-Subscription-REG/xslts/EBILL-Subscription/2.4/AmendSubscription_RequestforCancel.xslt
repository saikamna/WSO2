<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
   <xsl:param name="triggerEvent"/>
   <xsl:param name="callbackURL"/>
   <xsl:param name="amendType"/>
   <xsl:param name="accessToken"/>
   <xsl:template match="/">
      <amendSubscription>
         <!--Optional: -->
         <xsl:if test="string-length($accessToken)!=0">
            <accessToken>
               <xsl:value-of select="$accessToken" />
            </accessToken>
         </xsl:if>
         <xsl:if test="count(//subscription/sourceId)!=0">
            <sourceId>
               <xsl:value-of select="//subscription/sourceId" />
            </sourceId>
         </xsl:if>
         <amend>
            <!--Zero or more repetitions: -->
            <xsl:if test="count(//subscription/amendment)!=0">
               <xsl:for-each select="//subscription/amendment">
                  <amendments>
                     <!--Optional: -->
                     <xsl:if test="count(./autoRenew)!=0">
                        <autoRenew>
                           <xsl:value-of select="./autoRenew" />
                        </autoRenew>
                     </xsl:if>
                     <!--Optional: -->
                     <xsl:if test="count(./contractEffectiveDate)!=0">
                        <contractEffectiveDate>
                           <xsl:value-of select="./contractEffectiveDate" />
                        </contractEffectiveDate>
                     </xsl:if>
                     <!--Optional: -->
                     <xsl:if test="count(./customerAcceptanceDate)!=0">
                        <customerAcceptanceDate>
                           <xsl:value-of select="./customerAcceptanceDate" />
                        </customerAcceptanceDate>
                     </xsl:if>
                     <!--Optional: -->
                     <xsl:if test="count(./description)!=0">
                        <description>
                           <xsl:value-of select="./description" />
                        </description>
                     </xsl:if>
                     <!--Optional: -->
                     <xsl:if test="count(./destinationAccountId)!=0">
                        <destinationAccountId>
                           <xsl:value-of select="./destinationAccountId" />
                        </destinationAccountId>
                     </xsl:if>
                     <!--Optional: -->
                     <xsl:if test="count(./destinationInvoiceOwnerId)!=0">
                        <destinationInvoiceOwnerId>
                           <xsl:value-of select="./destinationInvoiceOwnerId" />
                        </destinationInvoiceOwnerId>
                     </xsl:if>
                     <!--Optional: -->
                     <xsl:if test="count(./effectiveDate)!=0">
                        <effectiveDate>
                           <xsl:value-of select="./effectiveDate" />
                        </effectiveDate>
                     </xsl:if>
                     <!--Optional: -->
                     <xsl:if test="count(./initialTerm)!=0">
                        <initialTerm>
                           <xsl:value-of select="./initialTerm" />
                        </initialTerm>
                     </xsl:if>
                     <!--Optional: -->
                     <xsl:if test="count(./name)!=0">
                        <name>
                           <xsl:value-of select="./name" />
                        </name>
                     </xsl:if>
                     <!--Optional: -->
                     <xsl:if test="count(./ratePlanData)!=0">
                        <ratePlanData>
                           <!--Optional: -->
                           <xsl:if test="count(./ratePlanData/ratePlan)!=0">
                              <ratePlan>
                                 <!--Optional: -->
                                 <xsl:if test="count(./ratePlanData/ratePlan/amendmentSubscriptionRatePlanId)!=0">
                                    <amendmentSubscriptionRatePlanId>
                                       <xsl:value-of select="./ratePlanData/ratePlan/amendmentSubscriptionRatePlanId" />
                                    </amendmentSubscriptionRatePlanId>
                                 </xsl:if>
                                 <!--Optional: -->
                                 <xsl:if test="count(./ratePlanData/ratePlan/amendmentType)!=0">
                                    <amendmentType>
                                       <xsl:value-of select="./ratePlanData/ratePlan/amendmentType" />
                                    </amendmentType>
                                 </xsl:if>
                                 <!--Optional: -->
                                 <xsl:if test="count(./ratePlanData/ratePlan/productRatePlanId)!=0">
                                    <productRatePlanId>
                                       <xsl:value-of select="./ratePlanData/ratePlan/productRatePlanId" />
                                    </productRatePlanId>
                                 </xsl:if>
                                 <!--Optional: -->
                                 <xsl:if test="count(./ratePlanData/ratePlan/subscriptionId)!=0">
                                    <subscriptionId>
                                       <xsl:value-of select="./ratePlanData/ratePlan/subscriptionId" />
                                    </subscriptionId>
                                 </xsl:if>
                              </ratePlan>
                           </xsl:if>
                           <!--Zero or more repetitions: -->
                           <xsl:if test="count(./ratePlanData/ratePlanChargeData)!=0">
                              <xsl:for-each select="./ratePlanData/ratePlanChargeData">
                                 <ratePlanChargeData>
                                    <!--Optional: -->
                                    <xsl:if test="count(./ratePlanCharge)!=0">
                                       <ratePlanCharge>
                                          <!--Optional: -->
                                          <xsl:if test="count(./ratePlanCharge/discountAmount)!=0">
                                             <discountAmount>
                                                <xsl:value-of select="./ratePlanCharge/discountAmount" />
                                             </discountAmount>
                                          </xsl:if>
                                          <!--Optional: -->
                                          <xsl:if test="count(./ratePlanCharge/discountPercentage)!=0">
                                             <discountPercentage>
                                                <xsl:value-of select="./ratePlanCharge/discountPercentage" />
                                             </discountPercentage>
                                          </xsl:if>
                                          <!--Optional: -->
                                          <xsl:if test="count(./ratePlanCharge/listPriceBase)!=0">
                                             <listPriceBase>
                                                <xsl:value-of select="./ratePlanCharge/listPriceBase" />
                                             </listPriceBase>
                                          </xsl:if>
                                          <!--Optional: -->
                                          <xsl:if test="count(./ratePlanCharge/price)!=0">
                                             <price>
                                                <xsl:value-of select="./ratePlanCharge/price" />
                                             </price>
                                          </xsl:if>
                                          <!--Optional: -->
                                          <xsl:if test="count(./ratePlanCharge/priceChangeOption)!=0">
                                             <priceChangeOption>
                                                <xsl:value-of select="./ratePlanCharge/priceChangeOption" />
                                             </priceChangeOption>
                                          </xsl:if>
                                          <!--Optional: -->
                                          <xsl:if test="count(./ratePlanCharge/priceIncreasePercentage)!=0">
                                             <priceIncreasePercentage>
                                                <xsl:value-of select="./ratePlanCharge/priceIncreasePercentage" />
                                             </priceIncreasePercentage>
                                          </xsl:if>
                                          <!--Optional: -->
                                          <xsl:if test="count(./ratePlanCharge/productRatePlanChargeId)!=0">
                                             <productRatePlanChargeId>
                                                <xsl:value-of select="./ratePlanCharge/productRatePlanChargeId" />
                                             </productRatePlanChargeId>
                                          </xsl:if>
                                          <!--Optional: -->
                                          <xsl:if test="count(./ratePlanCharge/quantity)!=0">
                                             <quantity>
                                                <xsl:value-of select="./ratePlanCharge/quantity" />
                                             </quantity>
                                          </xsl:if>
                                          <!--Optional: -->
                                          <xsl:if test="count(./ratePlanCharge/specificBillingPeriod)!=0">
                                             <specificBillingPeriod>
                                                <xsl:value-of select="./ratePlanCharge/specificBillingPeriod" />
                                             </specificBillingPeriod>
                                          </xsl:if>
                                          <!--Optional: -->
                                          <xsl:if test="count(./ratePlanCharge/triggerDate)!=0">
                                             <triggerDate>
                                                <xsl:value-of select="./ratePlanCharge/triggerDate" />
                                             </triggerDate>
                                          </xsl:if>
                                          <!--Optional: -->
                                          <xsl:if test="string-length($triggerEvent)!=0">
                                             <triggerEvent>
                                                <xsl:value-of select="$triggerEvent" />
                                             </triggerEvent>
                                          </xsl:if>
                                          <!--Optional: -->
                                          <xsl:if test="count(./ratePlanCharge/unusedUnitsCreditRates)!=0">
                                             <unusedUnitsCreditRates>
                                                <xsl:value-of select="./ratePlanCharge/unusedUnitsCreditRates" />
                                             </unusedUnitsCreditRates>
                                          </xsl:if>
                                          <!--Optional: -->
                                          <xsl:if test="count(./ratePlanCharge/upToPeriods)!=0">
                                             <upToPeriods>
                                                <xsl:value-of select="./ratePlanCharge/upToPeriods" />
                                             </upToPeriods>
                                          </xsl:if>
                                       </ratePlanCharge>
                                    </xsl:if>
                                 </ratePlanChargeData>
                              </xsl:for-each>
                           </xsl:if>
                        </ratePlanData>
                     </xsl:if>
                     <!--Optional: -->
                     <xsl:if test="count(./renewalSetting)!=0">
                        <renewalSetting>
                           <xsl:value-of select="./renewalSetting" />
                        </renewalSetting>
                     </xsl:if>
                     <!--Optional: -->
                     <xsl:if test="count(./renewalTerm)!=0">
                        <renewalTerm>
                           <xsl:value-of select="./renewalTerm" />
                        </renewalTerm>
                     </xsl:if>
                     <!--Optional: -->
                     <xsl:if test="count(./serviceActivationDate)!=0">
                        <serviceActivationDate>
                           <xsl:value-of select="./serviceActivationDate" />
                        </serviceActivationDate>
                     </xsl:if>
                     <!--Optional: -->
                     <xsl:if test="count(./status)!=0">
                        <status>
                           <xsl:value-of select="./status" />
                        </status>
                     </xsl:if>
                     <!--Optional: -->
                     <xsl:if test="count(//subscription/subscriptionId)!=0">
                        <subscriptionId>
                           <xsl:value-of select="//subscription/subscriptionId" />
                        </subscriptionId>
                     </xsl:if>
                     <!--Optional: -->
                     <xsl:if test="count(./termStartDate)!=0">
                        <termStartDate>
                           <xsl:value-of select="./termStartDate" />
                        </termStartDate>
                     </xsl:if>
                     <!--Optional: -->
                     <xsl:if test="count(./termType)!=0">
                        <termType>
                           <xsl:value-of select="./termType" />
                        </termType>
                     </xsl:if>
                     <!--Optional: -->
                     <xsl:if test="string-length($amendType)!=0">
                        <type>
                           <xsl:value-of select="$amendType" />
                        </type>
                     </xsl:if>
                     <xsl:if test="count(./renewalTermPeriodType)!=0">
                        <renewalTermPeriodType>
                           <xsl:value-of select="./renewalTermPeriodType" />
                        </renewalTermPeriodType>
                     </xsl:if>
                  </amendments>
               </xsl:for-each>
            </xsl:if>
            <!--Optional: -->
            <xsl:if test="count(//subscription/amendOptions)!=0">
               <amendOptions>
                  <!--Optional: -->
                  <xsl:if test="count(//subscription/amendOptions/applyCreditBalance)!=0">
                     <applyCreditBalance>
                        <xsl:value-of select="//subscription/amendOptions/applyCreditBalance" />
                     </applyCreditBalance>
                  </xsl:if>
                  <!--Optional: -->
                  <xsl:if test="count(//subscription/externalPaymentOptions)!=0">
                     <externalPaymentOptions>
                        <!--Optional: -->
                        <xsl:if test="count(//subscription/externalPaymentOptions/amount)!=0">
                           <amount>
                              <xsl:value-of select="//subscription/externalPaymentOptions/amount" />
                           </amount>
                        </xsl:if>
                        <!--Optional: -->
                        <xsl:if test="count(//subscription/externalPaymentOptions/effectiveDate)!=0">
                           <effectiveDate>
                              <xsl:value-of select="//subscription/externalPaymentOptions/effectiveDate" />
                           </effectiveDate>
                        </xsl:if>
                        <!--Optional: -->
                        <xsl:if test="count(//subscription//externalPaymentOptions/gatewayOrderId)!=0">
                           <gatewayOrderId>
                              <xsl:value-of select="//subscription/externalPaymentOptions/gatewayOrderId" />
                           </gatewayOrderId>
                        </xsl:if>
                        <!--Optional: -->
                        <xsl:if test="count(//subscription/externalPaymentOptions/paymentMethodId)!=0">
                           <paymentMethodId>
                              <xsl:value-of select="//subscription/externalPaymentOptions/paymentMethodId" />
                           </paymentMethodId>
                        </xsl:if>
                        <!--Optional: -->
                        <xsl:if test="count(//subscription/externalPaymentOptions/referenceId)!=0">
                           <referenceId>
                              <xsl:value-of select="//subscription/externalPaymentOptions/referenceId" />
                           </referenceId>
                        </xsl:if>
                     </externalPaymentOptions>
                  </xsl:if>
                  <!--Optional: -->
                  <xsl:if test="count(//subscription/amendOptions/generateInvoice)!=0">
                     <generateInvoice>
                        <xsl:value-of select="//subscription/amendOptions/generateInvoice" />
                     </generateInvoice>
                  </xsl:if>
                  <!--Optional: -->
                  <xsl:if test="count(//subscription/amendOptions/invoiceProcessingOptions)!=0">
                     <invoiceProcessingOptions>
                        <!--Optional: -->
                        <xsl:if test="count(//subscription/amendOptions/invoiceProcessingOptions/invoiceDate)!=0">
                           <invoiceDate>
                              <xsl:value-of select="//subscription/amendOptions/invoiceProcessingOptions/invoiceDate" />
                           </invoiceDate>
                        </xsl:if>
                        <!--Optional: -->
                        <xsl:if test="count(//subscription/amendOptions/invoiceProcessingOptions/invoiceTargetDate)!=0">
                           <invoiceTargetDate>
                              <xsl:value-of select="//subscription/amendOptions/invoiceProcessingOptions/invoiceTargetDate" />
                           </invoiceTargetDate>
                        </xsl:if>
                     </invoiceProcessingOptions>
                  </xsl:if>
                  <!--Optional: -->
                  <xsl:if test="count(//subscription/amendOptions/processPayments)!=0">
                     <processPayments>
                        <xsl:value-of select="//subscription/amendOptions/processPayments" />
                     </processPayments>
                  </xsl:if>
               </amendOptions>
            </xsl:if>
            <!--Optional: -->
            <previewOptions>
               <!--Optional: -->
               <xsl:if test="count(//subscription/previewOptions/numberOfPeriods)!=0">
                  <numberOfPeriods>
                     <xsl:value-of select="//subscription/previewOptions/numberOfPeriods" />
                  </numberOfPeriods>
               </xsl:if>
               <!--Optional: -->
               <xsl:if test="count(//subscription/previewOptions/previewThroughTermEnd)!=0">
                  <previewThroughTermEnd>
                     <xsl:value-of select="//subscription/previewOptions/previewThroughTermEnd" />
                  </previewThroughTermEnd>
               </xsl:if>
               <!--Optional: -->
               <xsl:if test="count(//subscription/previewOptions/previewType)!=0">
                  <previewType>
                     <xsl:value-of select="//subscription/previewOptions/previewType" />
                  </previewType>
               </xsl:if>
            </previewOptions>
         </amend>
         <xsl:if test="string-length($callbackURL)!=0">
            <callbackURL>
               <xsl:value-of select="$callbackURL" />
            </callbackURL>
         </xsl:if>
      </amendSubscription>
   </xsl:template>
</xsl:stylesheet>
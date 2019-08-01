<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/" xmlns:api="http://api.zuora.com/" xmlns:ns1="http://api.zuora.com/" xmlns:ns2="http://object.api.zuora.com/">
   <xsl:output method="xml" version="1.0" encoding="UTF-8"/>
   <xsl:template match="/">
      <createSubscriptions>
         <xsl:choose>
            <xsl:when test="//createSubscriptions/sourceId">
               <xsl:copy-of select="//createSubscriptions/sourceId"/>
            </xsl:when>
            <xsl:otherwise>
               <faultdescription>
                  <xsl:value-of select="concat('Mandatory field cannot be empty',' - ','[sourceId]',' , ')"/>
               </faultdescription>
            </xsl:otherwise>
         </xsl:choose>
         <xsl:choose>
            <xsl:when test="//createSubscriptions/subscribe">
			<xsl:for-each select="//createSubscriptions/subscribe">
               <subscribe>
                  <xsl:choose>
                     <xsl:when test="./subscriptionOwnerAccountId">
                        <xsl:choose>
                           <xsl:when test="string-length(./subscriptionOwnerAccountId/text()) >= 0 and string-length(./subscriptionOwnerAccountId/text()) &lt; 33">
                              <xsl:copy-of select="./subscriptionOwnerAccountId"/>
                           </xsl:when>
                           <xsl:otherwise>
                              <faultdescription>
                                 <xsl:value-of select="concat('length should be 0 to 32',' - ','[subscriptionOwnerAccountId]',' , ')"/>
                              </faultdescription>
                           </xsl:otherwise>
                        </xsl:choose>
                     </xsl:when>
                     <xsl:otherwise>
                        <faultdescription>
                           <xsl:value-of select="concat('Mandatory field cannot be empty',' - ','[subscriptionOwnerAccountId]',' , ')"/>
                        </faultdescription>
                     </xsl:otherwise>
                  </xsl:choose>
                  <xsl:if test="./previewOptions">
                     <previewOptions>
                        <xsl:if test="./previewOptions/numberOfPeriods">
                           <xsl:copy-of select="./previewOptions/numberOfPeriods"/>
                        </xsl:if>
                        <xsl:if test="./previewOptions/previewThroughTermEnd">
                           <xsl:copy-of select="./previewOptions/previewThroughTermEnd"/>
                        </xsl:if>
                        <xsl:if test="./previewOptions/previewType">
                           <xsl:copy-of select="./previewOptions/previewType"/>
                        </xsl:if>
                     </previewOptions>
                  </xsl:if>
                  <xsl:if test="./subscribeOptions">
                     <subscribeOptions>
                        <xsl:if test="./subscribeOptions/applyCreditBalance">
                           <xsl:copy-of select="./subscribeOptions/applyCreditBalance"/>
                        </xsl:if>
                        <xsl:if test="./subscribeOptions/externalPaymentOptions">
                           <externalPaymentOptions>
                              <xsl:if test="./subscribeOptions/externalPaymentOptions/amount">
                                 <xsl:copy-of select="./subscribeOptions/externalPaymentOptions/amount"/>
                              </xsl:if>
                              <xsl:if test="./subscribeOptions/externalPaymentOptions/effectiveDate">
                                 <xsl:copy-of select="./subscribeOptions/externalPaymentOptions/effectiveDate"/>
                              </xsl:if>
                              <xsl:if test="./subscribeOptions/externalPaymentOptions/gatewayOrderId">
                                 <xsl:copy-of select="./subscribeOptions/externalPaymentOptions/gatewayOrderId"/>
                              </xsl:if>
                              <xsl:if test="./subscribeOptions/externalPaymentOptions/paymentMethodId">
                                 <xsl:copy-of select="./subscribeOptions/externalPaymentOptions/paymentMethodId"/>
                              </xsl:if>
                              <xsl:if test="./subscribeOptions/externalPaymentOptions/referenceId">
                                 <xsl:copy-of select="./subscribeOptions/externalPaymentOptions/referenceId"/>
                              </xsl:if>
                           </externalPaymentOptions>
                        </xsl:if>
                        <xsl:if test="./subscribeOptions/generateInvoice">
                           <xsl:copy-of select="./subscribeOptions/generateInvoice"/>
                        </xsl:if>
                        <xsl:if test="./subscribeOptions/processPayments">
                           <xsl:copy-of select="./subscribeOptions/processPayments"/>
                        </xsl:if>
                        <xsl:if test="./subscribeOptions/subscribeInvoiceProcessingOptions">
                           <subscribeInvoiceProcessingOptions>
                              <xsl:if test="./subscribeOptions/subscribeInvoiceProcessingOptions/invoiceDate">
                                 <xsl:copy-of select="./subscribeOptions/subscribeInvoiceProcessingOptions/invoiceDate"/>
                              </xsl:if>
                              <xsl:if test="./subscribeOptions/subscribeInvoiceProcessingOptions/invoiceProcessingScope">
                                 <xsl:choose>
                                    <xsl:when test="./subscribeOptions/subscribeInvoiceProcessingOptions/invoiceProcessingScope/text()='Account' or ./subscribeOptions/subscribeInvoiceProcessingOptions/invoiceProcessingScope/text() =  'Subscription'">
                                       <xsl:copy-of select="./subscribeOptions/subscribeInvoiceProcessingOptions/invoiceProcessingScope"/>
                                    </xsl:when>
                                    <xsl:otherwise>
                                       <faultdescription>
                                          <xsl:value-of select="concat('invoiceProcessingScope should be',' - ','[Account, Subscription]' , ' , ')"/>
                                       </faultdescription>
                                    </xsl:otherwise>
                                 </xsl:choose>
                              </xsl:if>
                              <xsl:if test="./subscribeOptions/subscribeInvoiceProcessingOptions/invoiceTargetDate">
                                 <xsl:copy-of select="./subscribeOptions/subscribeInvoiceProcessingOptions/invoiceTargetDate"/>
                              </xsl:if>
                           </subscribeInvoiceProcessingOptions>
                        </xsl:if>
                     </subscribeOptions>
                  </xsl:if>
                  <xsl:choose>
                     <xsl:when test="./subscriptionData">
                        <subscriptionData>
                           <xsl:choose>
                              <xsl:when test="./subscriptionData/subscription">
                                 <subscription>
                                    <xsl:choose>
                     <xsl:when test="./subscriptionData/subscription/subscriptionOwnerAccountId">
                        <xsl:choose>
                           <xsl:when test="string-length(./subscriptionData/subscription/subscriptionOwnerAccountId/text()) >= 0 and string-length(./subscriptionData/subscription/subscriptionOwnerAccountId/text()) &lt; 33">
                              <xsl:copy-of select="./subscriptionData/subscription/subscriptionOwnerAccountId"/>
                           </xsl:when>
                           <xsl:otherwise>
                              <faultdescription>
                                 <xsl:value-of select="concat('length should be 0 to 32',' - ','[subscriptionOwnerAccountId]',' , ')"/>
                              </faultdescription>
                           </xsl:otherwise>
                        </xsl:choose>
                     </xsl:when>
                     <xsl:otherwise>
                        <faultdescription>
                           <xsl:value-of select="concat('Mandatory field cannot be empty',' - ','[subscriptionOwnerAccountId]',' , ')"/>
                        </faultdescription>
                     </xsl:otherwise>
                  </xsl:choose>
                                    <xsl:if test="./subscriptionData/subscription/assetSKU">
                                       <xsl:copy-of select="./subscriptionData/subscription/assetSKU"/>
                                    </xsl:if>
                                    <xsl:if test="./subscriptionData/subscription/assetSerialNumber">
                                       <xsl:copy-of select="./subscriptionData/subscription/assetSerialNumber"/>
                                    </xsl:if>
                                    <xsl:if test="./subscriptionData/subscription/autoRenew">
                                       <xsl:copy-of select="./subscriptionData/subscription/autoRenew"/>
                                    </xsl:if>
                                    <xsl:if test="./subscriptionData/subscription/contractAcceptanceDate">
                                       <xsl:copy-of select="./subscriptionData/subscription/contractAcceptanceDate"/>
                                    </xsl:if>
                                    <xsl:if test="./subscriptionData/subscription/contractEffectiveDate">
                                       <xsl:copy-of select="./subscriptionData/subscription/contractEffectiveDate"/>
                                    </xsl:if>
                                    <xsl:if test="./subscriptionData/subscription/coolOff">
                                       <xsl:copy-of select="./subscriptionData/subscription/coolOff"/>
                                    </xsl:if>
                                    <xsl:if test="./subscriptionData/subscription/customerPaymentReference">
                                       <xsl:copy-of select="./subscriptionData/subscription/customerPaymentReference"/>
                                    </xsl:if>
                                    <xsl:if test="./subscriptionData/subscription/entity">
                                       <xsl:copy-of select="./subscriptionData/subscription/entity"/>
                                    </xsl:if>
                                    <xsl:if test="./subscriptionData/subscription/initialTerm">
                                       <xsl:copy-of select="./subscriptionData/subscription/initialTerm"/>
                                    </xsl:if>
                                    <xsl:if test="./subscriptionData/subscription/initialTermPeriodType">
                                       <xsl:copy-of select="./subscriptionData/subscription/initialTermPeriodType"/>
                                    </xsl:if>
                                    <xsl:if test="./subscriptionData/subscription/invoiceOwnerId">
                                       <xsl:choose>
                                          <xsl:when test="string-length(./subscriptionData/subscription/invoiceOwnerId/text()) >= 0 and string-length(./subscriptionData/subscription/invoiceOwnerId/text()) &lt; 33">
                                             <xsl:copy-of select="./subscriptionData/subscription/invoiceOwnerId"/>
                                          </xsl:when>
                                          <xsl:otherwise>
                                             <faultdescription>
                                                <xsl:value-of select="concat('length should be 0 to 32',' - ','[invoiceOwnerId]',' , ')"/>
                                             </faultdescription>
                                          </xsl:otherwise>
                                       </xsl:choose>
                                    </xsl:if>
                                    <xsl:if test="./subscriptionData/subscription/isInvoiceSeparate">
                                       <xsl:copy-of select="./subscriptionData/subscription/isInvoiceSeparate"/>
                                    </xsl:if>
                                    <xsl:if test="./subscriptionData/subscription/name">
                                       <xsl:choose>
                                          <xsl:when test="string-length(./subscriptionData/subscription/name/text()) >= 0 and string-length(./subscriptionData/subscription/name/text()) &lt; 101">
                                             <xsl:copy-of select="./subscriptionData/subscription/name"/>
                                          </xsl:when>
                                          <xsl:otherwise>
                                             <faultdescription>
                                                <xsl:value-of select="concat('length should be 0 to 100',' - ','[name]',' , ')"/>
                                             </faultdescription>
                                          </xsl:otherwise>
                                       </xsl:choose>
                                    </xsl:if>
                                    <xsl:if test="./subscriptionData/subscription/notes">
                                       <xsl:choose>
                                          <xsl:when test="string-length(./subscriptionData/subscription/notes/text()) >= 0 and string-length(./subscriptionData/subscription/notes/text()) &lt; 501">
                                             <xsl:copy-of select="./subscriptionData/subscription/notes"/>
                                          </xsl:when>
                                          <xsl:otherwise>
                                             <faultdescription>
                                                <xsl:value-of select="concat('length should be 0 to 500',' - ','[notes]',' , ')"/>
                                             </faultdescription>
                                          </xsl:otherwise>
                                       </xsl:choose>
                                    </xsl:if>
                                    <xsl:if test="./subscriptionData/subscription/orderCreatedBy">
                                       <xsl:choose>
                                          <xsl:when test="string-length(./subscriptionData/subscription/orderCreatedBy/text()) >= 0 and string-length(./subscriptionData/subscription/orderCreatedBy/text()) &lt; 51">
                                             <xsl:copy-of select="./subscriptionData/subscription/orderCreatedBy"/>
                                          </xsl:when>
                                          <xsl:otherwise>
                                             <faultdescription>
                                                <xsl:value-of select="concat('length should be 0 to 50',' - ','[orderCreatedBy]',' , ')"/>
                                             </faultdescription>
                                          </xsl:otherwise>
                                       </xsl:choose>
                                    </xsl:if>
                                    <xsl:if test="./subscriptionData/subscription/orderModifiedBy">
                                       <xsl:choose>
                                          <xsl:when test="string-length(./subscriptionData/subscription/orderModifiedBy/text()) >= 0 and string-length(./subscriptionData/subscription/orderModifiedBy/text()) &lt; 51">
                                             <xsl:copy-of select="./subscriptionData/subscription/orderModifiedBy"/>
                                          </xsl:when>
                                          <xsl:otherwise>
                                             <faultdescription>
                                                <xsl:value-of select="concat('length should be 0 to 50',' - ','[orderModifiedBy]',' , ')"/>
                                             </faultdescription>
                                          </xsl:otherwise>
                                       </xsl:choose>
                                    </xsl:if>
                                    <xsl:if test="./subscriptionData/subscription/provisioningLastId">
                                       <xsl:choose>
                                          <xsl:when test="string-length(./subscriptionData/subscription/provisioningLastId/text()) >= 0 and string-length(./subscriptionData/subscription/provisioningLastId/text()) &lt; 37">
                                             <xsl:copy-of select="./subscriptionData/subscription/provisioningLastId"/>
                                          </xsl:when>
                                          <xsl:otherwise>
                                             <faultdescription>
                                                <xsl:value-of select="concat('length should be 0 to 36',' - ','[provisioningLastId]',' , ')"/>
                                             </faultdescription>
                                          </xsl:otherwise>
                                       </xsl:choose>
                                    </xsl:if>
                                    <xsl:if test="./subscriptionData/subscription/provisioningLastResult">
                                       <xsl:choose>
                                          <xsl:when test="string-length(./subscriptionData/subscription/provisioningLastResult/text()) >= 0 and string-length(./subscriptionData/subscription/provisioningLastResult/text()) &lt; 251">
                                             <xsl:copy-of select="./subscriptionData/subscription/provisioningLastResult"/>
                                          </xsl:when>
                                          <xsl:otherwise>
                                             <faultdescription>
                                                <xsl:value-of select="concat('length should be 0 to 250',' - ','[provisioningLastResult]',' , ')"/>
                                             </faultdescription>
                                          </xsl:otherwise>
                                       </xsl:choose>
                                    </xsl:if>
                                    <xsl:if test="./subscriptionData/subscription/provisioningLastTimestamp">
                                       <xsl:choose>
                                          <xsl:when test="string-length(./subscriptionData/subscription/provisioningLastTimestamp/text()) >= 0 and string-length(./subscriptionData/subscription/provisioningLastTimestamp/text()) &lt; 11">
                                             <xsl:copy-of select="./subscriptionData/subscription/provisioningLastTimestamp"/>
                                          </xsl:when>
                                          <xsl:otherwise>
                                             <faultdescription>
                                                <xsl:value-of select="concat('length should be 0 to 10',' - ','[provisioningLastTimestamp]',' , ')"/>
                                             </faultdescription>
                                          </xsl:otherwise>
                                       </xsl:choose>
                                    </xsl:if>
                                    <xsl:if test="./subscriptionData/subscription/renewalSetting">
                                       <xsl:choose>
                                          <xsl:when test="./subscriptionData/subscription/renewalSetting/text()='RENEW_WITH_SPECIFIC_TERM' or ./subscriptionData/subscription/renewalSetting/text()='RENEW_TO_EVERGREEN' ">
                                             <xsl:copy-of select="./subscriptionData/subscription/renewalSetting"/>
                                          </xsl:when>
                                          <xsl:otherwise>
                                             <faultdescription>
                                                <xsl:value-of select="concat('renewalSetting should be',' - ','[RENEW_WITH_SPECIFIC_TERM, RENEW_TO_EVERGREEN]' , ' , ')"/>
                                             </faultdescription>
                                          </xsl:otherwise>
                                       </xsl:choose>
                                    </xsl:if>
                                    <xsl:if test="./subscriptionData/subscription/renewalTerm">
                                       <xsl:copy-of select="./subscriptionData/subscription/renewalTerm"/>
                                    </xsl:if>
                                    <xsl:if test="./subscriptionData/subscription/renewalTermPeriodType">
                                       <xsl:copy-of select="./subscriptionData/subscription/renewalTermPeriodType"/>
                                    </xsl:if>
                                    <xsl:if test="./subscriptionData/subscription/serviceActivationDate">
                                       <xsl:copy-of select="./subscriptionData/subscription/serviceActivationDate"/>
                                    </xsl:if>
                                    <xsl:if test="./subscriptionData/subscription/shoppingCartLabel">
                                       <xsl:choose>
                                          <xsl:when test="string-length(./subscriptionData/subscription/shoppingCartLabel/text()) >= 0 and string-length(./subscriptionData/subscription/shoppingCartLabel/text()) &lt; 256">
                                             <xsl:copy-of select="./subscriptionData/subscription/shoppingCartLabel"/>
                                          </xsl:when>
                                          <xsl:otherwise>
                                             <faultdescription>
                                                <xsl:value-of select="concat('length should be 0 to 255',' - ','[shoppingCartLabel]',' , ')"/>
                                             </faultdescription>
                                          </xsl:otherwise>
                                       </xsl:choose>
                                    </xsl:if>
                                    <xsl:if test="./subscriptionData/subscription/status">
                                       <xsl:copy-of select="./subscriptionData/subscription/status"/>
                                    </xsl:if>
                                    <xsl:if test="./subscriptionData/subscription/termStartDate">
                                       <xsl:copy-of select="./subscriptionData/subscription/termStartDate"/>
                                    </xsl:if>
                                    <xsl:if test="./subscriptionData/subscription/termType">
                                       <xsl:choose>
                                          <xsl:when test="./subscriptionData/subscription/termType/text()='TERMED' or ./subscriptionData/subscription/termType/text()='EVERGREEN' ">
                                             <xsl:copy-of select="./subscriptionData/subscription/termType"/>
                                          </xsl:when>
                                          <xsl:otherwise>
                                             <faultdescription>
                                                <xsl:value-of select="concat('termType should be',' - ','[TERMED, EVERGREEN]' , ' , ')"/>
                                             </faultdescription>
                                          </xsl:otherwise>
                                       </xsl:choose>
                                    </xsl:if>
                                    <xsl:if test="./subscriptionData/subscription/trial">
                                       <xsl:choose>
                                          <xsl:when test="./subscriptionData/subscription/trial/text()='Y' or ./subscriptionData/subscription/trial/text()='N' ">
                                             <xsl:copy-of select="./subscriptionData/subscription/trial"/>
                                          </xsl:when>
                                          <xsl:otherwise>
                                             <faultdescription>
                                                <xsl:value-of select="concat('trial should be',' - ','[Y, N]' , ' , ')"/>
                                             </faultdescription>
                                          </xsl:otherwise>
                                       </xsl:choose>
                                    </xsl:if>
                                    <xsl:if test="./subscriptionData/subscription/provisionDate">
                                       <xsl:copy-of select="./subscriptionData/subscription/provisionDate"/>
                                    </xsl:if>
                                    <xsl:if test="./subscriptionData/subscription/zHMIGateManagerID">
                                       <xsl:copy-of select="./subscriptionData/subscription/zHMIGateManagerID"/>
                                    </xsl:if>
                                    <xsl:if test="./subscriptionData/subscription/eBillContactId">
                                       <xsl:copy-of select="./subscriptionData/subscription/eBillContactId"/>
                                    </xsl:if>
                                    <xsl:if test="./subscriptionData/subscription/zuoraContactId2">
                                       <xsl:copy-of select="./subscriptionData/subscription/zuoraContactId2"/>
                                    </xsl:if>
                                    <xsl:if test="./subscriptionData/subscription/customTextAttribute1">
                                       <xsl:copy-of select="./subscriptionData/subscription/customTextAttribute1"/>
                                    </xsl:if>
                                    <xsl:if test="./subscriptionData/subscription/customTextAttribute2">
                                       <xsl:copy-of select="./subscriptionData/subscription/customTextAttribute2"/>
                                    </xsl:if>
                                    <xsl:if test="./subscriptionData/subscription/customDateAttribute1">
                                       <xsl:copy-of select="./subscriptionData/subscription/customDateAttribute1"/>
                                    </xsl:if>
                                    <xsl:if test="./subscriptionData/subscription/solarSite">
                                       <xsl:copy-of select="./subscriptionData/subscription/solarSite"/>
                                    </xsl:if>
                                    <xsl:if test="./subscriptionData/subscription/sourcePurchase">
                                       <xsl:copy-of select="./subscriptionData/subscription/sourcePurchase"/>
                                    </xsl:if>
                                    <xsl:if test="./subscriptionData/subscription/costType">
                                       <xsl:copy-of select="./subscriptionData/subscription/costType"/>
                                    </xsl:if>
                                    <xsl:if test="./subscriptionData/subscription/costTypeValue">
                                       <xsl:copy-of select="./subscriptionData/subscription/costTypeValue"/>
                                    </xsl:if>
									
									<xsl:if test="./subscriptionData/subscription/referenceQuote">
                                       <xsl:choose>
                                          <xsl:when test="string-length(./subscriptionData/subscription/referenceQuote/text()) >= 0 and string-length(./subscriptionData/subscription/referenceQuote/text()) &lt; 19">
                                             <xsl:copy-of select="./subscriptionData/subscription/referenceQuote"/>
                                          </xsl:when>
                                          <xsl:otherwise>
                                             <faultdescription>
                                                <xsl:value-of select="concat('length should be 0 to 18',' - ','[referenceQuote]',' , ')"/>
                                             </faultdescription>
                                          </xsl:otherwise>
                                       </xsl:choose>
                                    </xsl:if>
									<xsl:if test="./subscriptionData/subscription/opportunityId">
                                       <xsl:choose>
                                          <xsl:when test="string-length(./subscriptionData/subscription/opportunityId/text()) >= 0 and string-length(./subscriptionData/subscription/opportunityId/text()) &lt; 51">
                                             <xsl:copy-of select="./subscriptionData/subscription/opportunityId"/>
                                          </xsl:when>
                                          <xsl:otherwise>
                                             <faultdescription>
                                                <xsl:value-of select="concat('length should be 0 to 50',' - ','[opportunityId]',' , ')"/>
                                             </faultdescription>
                                          </xsl:otherwise>
                                       </xsl:choose>
                                    </xsl:if>
                                 </subscription>
                              </xsl:when>
                              <xsl:otherwise>
                                 <faultdescription>
                                    <xsl:value-of select="concat('Mandatory field cannot be empty',' - ','[subscription]',' , ')"/>
                                 </faultdescription>
                              </xsl:otherwise>
                           </xsl:choose>
                            <xsl:if test="./subscriptionData/ratePlanData">
						   <xsl:for-each select="./subscriptionData/ratePlanData">
                              <ratePlanData>
                                 <xsl:choose>
                                    <xsl:when test="./ratePlan">
                                       <ratePlan>
                                          <xsl:choose>
                                             <xsl:when test="./ratePlan/productRatePlanId">
                                                <xsl:choose>
                                                   <xsl:when test="string-length(./ratePlan/productRatePlanId/text()) >= 0 and string-length(./ratePlan/productRatePlanId/text()) &lt; 33">
                                                      <xsl:copy-of select="./ratePlan/productRatePlanId"/>
                                                   </xsl:when>
                                                   <xsl:otherwise>
                                                      <faultdescription>
                                                         <xsl:value-of select="concat('length should be 0 to 32',' - ','[productRatePlanId]',' , ')"/>
                                                      </faultdescription>
                                                   </xsl:otherwise>
                                                </xsl:choose>
                                             </xsl:when>
                                             <xsl:otherwise>
                                                <faultdescription>
                                                   <xsl:value-of select="concat('Mandatory field cannot be empty',' - ','[productRatePlanId]',' , ')"/>
                                                </faultdescription>
                                             </xsl:otherwise>
                                          </xsl:choose>
                                          <xsl:if test="count(./ratePlan/provisioningEffectiveStartDate)!=0">
											<provisioningEffectiveStartDate>
												<xsl:value-of select="./ratePlan/provisioningEffectiveStartDate" />
											</provisioningEffectiveStartDate>
										</xsl:if>
                                       </ratePlan>
                                    </xsl:when>
                                    <xsl:otherwise>
                                       <faultdescription>
                                          <xsl:value-of select="concat('Mandatory field cannot be empty',' - ','[ratePlan]',' , ')"/>
                                       </faultdescription>
                                    </xsl:otherwise>
                                 </xsl:choose>
                             
                             
							  <xsl:if test="./ratePlanCharge">
                                  <xsl:for-each select="./ratePlanCharge">
								 <ratePlanCharge>
                                    <xsl:if test="./discountPercentage">
                                       <xsl:copy-of select="./discountPercentage"/>
                                    </xsl:if>
                                    <xsl:choose>
                                       <xsl:when test="./productRatePlanChargeId">
                                          <xsl:choose>
                                             <xsl:when test="string-length(./productRatePlanChargeId/text()) >= 0 and string-length(./productRatePlanChargeId/text()) &lt; 33">
                                                <xsl:copy-of select="./productRatePlanChargeId"/>
                                             </xsl:when>
                                             <xsl:otherwise>
                                                <faultdescription>
                                                   <xsl:value-of select="concat('length should be 0 to 32',' - ','[productRatePlanChargeId]',' , ')"/>
                                                </faultdescription>
                                             </xsl:otherwise>
                                          </xsl:choose>
                                       </xsl:when>
                                       <xsl:otherwise>
                                          <faultdescription>
                                             <xsl:value-of select="concat('Mandatory field cannot be empty',' - ','[productRatePlanChargeId]',' , ')"/>
                                          </faultdescription>
                                       </xsl:otherwise>
                                    </xsl:choose>
                                    <xsl:if test="./quantity">
                                       <xsl:copy-of select="./quantity"/>
                                    </xsl:if>
									<xsl:if test="./price">
                                       <xsl:copy-of select="./price"/>
                                    </xsl:if>
                                 </ratePlanCharge>
                               </xsl:for-each>
							  </xsl:if>
							  </ratePlanData>
							  </xsl:for-each>
                           </xsl:if>
                        </subscriptionData>
                     </xsl:when>
                     <xsl:otherwise>
                        <faultdescription>
                           <xsl:value-of select="concat('Mandatory field cannot be empty',' - ','[subscriptionData]',' , ')"/>
                        </faultdescription>
                     </xsl:otherwise>
                  </xsl:choose>
               </subscribe>
			  </xsl:for-each>
            </xsl:when>
            <xsl:otherwise>
               <faultdescription>
                  <xsl:value-of select="concat('Mandatory field cannot be empty',' - ','[subscribe]',' , ')"/>
               </faultdescription>
            </xsl:otherwise>
         </xsl:choose>
         <xsl:choose>
            <xsl:when test="//createSubscriptions/callbackURL">
               <xsl:copy-of select="//createSubscriptions/callbackURL"/>
            </xsl:when>
            <xsl:otherwise>
               <faultdescription>
                  <xsl:value-of select="concat('Mandatory field cannot be empty',' - ','[callbackURL]',' , ')"/>
               </faultdescription>
            </xsl:otherwise>
         </xsl:choose>
      </createSubscriptions>
   </xsl:template>
</xsl:stylesheet>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/" xmlns:api="http://api.zuora.com/" xmlns:ns1="http://api.zuora.com/" xmlns:ns2="http://object.api.zuora.com/">
   <xsl:output method="xml" version="1.0" encoding="UTF-8"/>
   <xsl:template match="/">
      <getSubscriptions>
         <xsl:choose>
            <xsl:when test="//accountIdentifier">
               <accountIdentifier>
                  <xsl:choose>
                     <xsl:when test="//accountIdentifier/bFOAccount and //accountIdentifier/eBillAccountIds and //accountIdentifier/eBillInvoiceOwnerAccountIds and //accountIdentifier/subscription/subscriptionNames and //accountIdentifier/subscription/subscriptionIds">
                        <faultdescription>
                           <xsl:value-of select="concat('Either should be present',' - ','[bFOAccount,eBillAccountIds,eBillInvoiceOwnerAccountIds,subscriptionNames,subscriptionIds]',' , ')"/>
                        </faultdescription>
                     </xsl:when>
                     <xsl:otherwise>
                        <xsl:choose>
                           <xsl:when test="//accountIdentifier/bFOAccount">
                              <bFOAccount>
                                 <xsl:choose>
                                    <xsl:when test="//accountIdentifier/bFOAccount/bFOAccountId">
                                       <xsl:choose>
                                          <xsl:when test="string-length(//accountIdentifier/bFOAccount/bFOAccountId/text()) >= 1 and string-length(//accountIdentifier/bFOAccount/bFOAccountId/text()) &lt; 19">
                                             <xsl:copy-of select="//accountIdentifier/bFOAccount/bFOAccountId"/>
                                          </xsl:when>
                                          <xsl:otherwise>
                                             <faultdescription>
                                                <xsl:value-of select="concat('length should be 1 to 18',' - ','[bFOAccountId]',' , ')"/>
                                             </faultdescription>
                                          </xsl:otherwise>
                                       </xsl:choose>
                                    </xsl:when>
                                    <xsl:otherwise>
                                       <faultdescription>
                                          <xsl:value-of select="concat('Mandatory field cannot be empty',' - ','[bFOAccountId]',' , ')"/>
                                       </faultdescription>
                                    </xsl:otherwise>
                                 </xsl:choose>
                                 <xsl:if test="//accountIdentifier/bFOAccount/status">
                                    <xsl:for-each select="//accountIdentifier/bFOAccount/status">
                                       <xsl:copy-of select="."/>
                                    </xsl:for-each>
                                 </xsl:if>
                              </bFOAccount>
                           </xsl:when>
                           <xsl:otherwise>
                              <xsl:choose>
                                 <xsl:when test="//accountIdentifier/eBillAccountIds">
                                    <xsl:for-each select="//accountIdentifier/eBillAccountIds">
                                       <eBillAccountIds>
                                          <xsl:choose>
                                             <xsl:when test="./eBillAccountId">
                                                <xsl:choose>
                                                   <xsl:when test="string-length(./eBillAccountId/text()) >= 1 and string-length(./eBillAccountId/text()) &lt; 33">
                                                      <xsl:copy-of select="./eBillAccountId"/>
                                                   </xsl:when>
                                                   <xsl:otherwise>
                                                      <faultdescription>
                                                         <xsl:value-of select="concat('length should be 1 to 32',' - ','[eBillAccountId]',' , ')"/>
                                                      </faultdescription>
                                                   </xsl:otherwise>
                                                </xsl:choose>
                                             </xsl:when>
                                             <xsl:otherwise>
                                                <faultdescription>
                                                   <xsl:value-of select="concat('Mandatory field cannot be empty',' - ','[eBillAccountId]',' , ')"/>
                                                </faultdescription>
                                             </xsl:otherwise>
                                          </xsl:choose>
                                          <xsl:if test="./status">
                                             <xsl:for-each select="./status">
                                                <xsl:copy-of select="."/>
                                             </xsl:for-each>
                                          </xsl:if>
                                       </eBillAccountIds>
                                    </xsl:for-each>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:choose>
                                       <xsl:when test="//accountIdentifier/eBillInvoiceOwnerAccountIds">
                                          <xsl:for-each select="//accountIdentifier/eBillInvoiceOwnerAccountIds">
                                             <eBillInvoiceOwnerAccountIds>
                                                <xsl:choose>
                                                   <xsl:when test="./eBillinvoiceOwnerAccountId">
                                                      <xsl:choose>
                                                         <xsl:when test="string-length(./eBillinvoiceOwnerAccountId/text()) >= 1 and string-length(./eBillinvoiceOwnerAccountId/text()) &lt; 33">
                                                            <xsl:copy-of select="./eBillinvoiceOwnerAccountId"/>
                                                         </xsl:when>
                                                         <xsl:otherwise>
                                                            <faultdescription>
                                                               <xsl:value-of select="concat('length should be 1 to 32',' - ','[eBillinvoiceOwnerAccountId]',' , ')"/>
                                                            </faultdescription>
                                                         </xsl:otherwise>
                                                      </xsl:choose>
                                                   </xsl:when>
                                                   <xsl:otherwise>
                                                      <faultdescription>
                                                         <xsl:value-of select="concat('Mandatory field cannot be empty',' - ','[eBillinvoiceOwnerAccountId]',' , ')"/>
                                                      </faultdescription>
                                                   </xsl:otherwise>
                                                </xsl:choose>
                                                <xsl:if test="./status">
                                                   <xsl:for-each select="./status">
                                                      <xsl:copy-of select="."/>
                                                   </xsl:for-each>
                                                </xsl:if>
                                             </eBillInvoiceOwnerAccountIds>
                                          </xsl:for-each>
                                       </xsl:when>
                                       <xsl:otherwise>
									   
									   <xsl:choose>
									    <xsl:when test="//accountIdentifier/subscription/subscriptionNames">
                                          <xsl:for-each select="//accountIdentifier/subscription/subscriptionNames">
                                          <subscription>
                                             <subscriptionNames>
                                                <xsl:choose>
                                                   <xsl:when test="./subscriptionName">
                                                      <xsl:choose>
                                                         <xsl:when test="string-length(./subscriptionName/text()) >= 1 and string-length(./subscriptionName/text()) &lt; 12">
                                                            <xsl:copy-of select="./subscriptionName"/>
                                                         </xsl:when>
                                                         <xsl:otherwise>
                                                            <faultdescription>
                                                               <xsl:value-of select="concat('length should be 1 to 11',' - ','[subscriptionNames]',' , ')"/>
                                                            </faultdescription>
                                                         </xsl:otherwise>
                                                      </xsl:choose>
                                                   </xsl:when>
                                                   <xsl:otherwise>
                                                      <faultdescription>
                                                         <xsl:value-of select="concat('Mandatory field cannot be empty',' - ','[subscriptionNames]',' , ')"/>
                                                      </faultdescription>
                                                   </xsl:otherwise>
                                                </xsl:choose>
                                                <xsl:if test="./status">
                                                   <xsl:for-each select="./status">
                                                      <xsl:copy-of select="."/>
                                                   </xsl:for-each>
                                                </xsl:if>
                                             </subscriptionNames>
                                             </subscription>
                                          </xsl:for-each>
                                       </xsl:when>
									   
									    <xsl:otherwise>
										
										<xsl:choose>
									    <xsl:when test="//accountIdentifier/subscription/subscriptionIds">
                                          <xsl:for-each select="//accountIdentifier/subscription/subscriptionIds">
                                          <subscription>
                                             <subscriptionIds>
                                                <xsl:choose>
                                                   <xsl:when test="./subscriptionId">
                                                      <xsl:choose>
                                                         <xsl:when test="string-length(./subscriptionId/text()) >= 1 and string-length(./subscriptionId/text()) &lt; 33">
                                                            <xsl:copy-of select="./subscriptionId"/>
                                                         </xsl:when>
                                                         <xsl:otherwise>
                                                            <faultdescription>
                                                               <xsl:value-of select="concat('length should be 1 to 32',' - ','[subscriptionIds]',' , ')"/>
                                                            </faultdescription>
                                                         </xsl:otherwise>
                                                      </xsl:choose>
                                                   </xsl:when>
                                                   <xsl:otherwise>
                                                      <faultdescription>
                                                         <xsl:value-of select="concat('Mandatory field cannot be empty',' - ','[subscriptionIds]',' , ')"/>
                                                      </faultdescription>
                                                   </xsl:otherwise>
                                                </xsl:choose>
                                                <xsl:if test="./status">
                                                   <xsl:for-each select="./status">
                                                      <xsl:copy-of select="."/>
                                                   </xsl:for-each>
                                                </xsl:if>
                                             </subscriptionIds>
                                             </subscription>
                                          </xsl:for-each>
                                       </xsl:when>
									    <xsl:otherwise>
										 <faultdescription>
                                             <xsl:value-of select="concat('Mandatory field cannot be empty',' - ','[bFOAccount,eBillAccountIds,eBillInvoiceOwnerAccountIds,subscriptionNames,subscriptionIds]',' , ')"/>
                                          </faultdescription>
										</xsl:otherwise>
										</xsl:choose>
										</xsl:otherwise>
										</xsl:choose>
                                       </xsl:otherwise>
                                    </xsl:choose>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:otherwise>
                        </xsl:choose>
                     </xsl:otherwise>
                  </xsl:choose>
               </accountIdentifier>
            </xsl:when>
            <xsl:otherwise>
               <faultdescription>
                  <xsl:value-of select="concat('Mandatory field cannot be empty',' - ','[accountIdentifier]',' , ')"/>
               </faultdescription>
            </xsl:otherwise>
         </xsl:choose>
      </getSubscriptions>
   </xsl:template>
</xsl:stylesheet>
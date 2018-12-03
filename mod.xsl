<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:oxm="https://www.openxsl.com">

    <xsl:template match="/root" name="wurui.products">
        <!--
        <xsl:param name="detailLink" oxm:comment=""/>-->
        <!-- className 'J_OXMod' required  -->
        <div class="J_OXMod oxmod-products" ox-mod="products">
            <ul>
                <xsl:for-each select="data/ecom-products/i">
                    <li>
                        <a href="{LINK/detail}">
                            <span class="img" style="background-image:url({media/i[type='image']/src}@!w240)"></span>
                        </a>
                        <h4 class="title">
                            <xsl:value-of select="title"/>
                        </h4>
                        <p class="brief">
                            <xsl:value-of select="brief"/>
                        </p>
                        <p class="price">
                            <em>
                                <xsl:value-of select="price"/>
                            </em>
                            &#160;&#160;
                            <xsl:if test="orig_price &gt; 0">
                                <del><xsl:value-of select="orig_price"/></del>
                            </xsl:if>
                        </p>

                    </li>
                </xsl:for-each>
            </ul>
        </div>
    </xsl:template>

</xsl:stylesheet>

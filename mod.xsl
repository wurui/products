<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:oxm="https://www.openxsl.com">

    <xsl:template match="/root" name="wurui.products">
        <!-- className 'J_OXMod' required  -->
        <div class="J_OXMod oxmod-products" ox-mod="products">
            <ul>
                <xsl:for-each select="data/product-list/i">
                    <li>
                        <span class="img" style="background-image:url({img}@!w240)"></span>
                        <h4 class="title">
                            <xsl:value-of select="title"/>
                        </h4>
                        <p class="tags">
                            <xsl:for-each select="tags/i">
                                <em class="tag {.}">
                                    <xsl:value-of select="."/>
                                </em>
                            </xsl:for-each>
                        </p>
                        <p class="price">
                            <span class="brief">
                                <xsl:value-of select="brief"/>
                            </span>
                            <sub class="symbol">&#165;</sub><em class="num"><xsl:value-of select="price"/></em>
                        </p>

                    </li>
                </xsl:for-each>
            </ul>
        </div>
    </xsl:template>

</xsl:stylesheet>

<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
                <table id="shopTable" class="indent">
                    <thead>
                        <tr>
                            <th colspan="3">Isaac's Computer Store</th>
                        </tr>
                        <tr>
                            <th>company</th>
                            <th>price</th>
                        </tr>
                    </thead>
                    <tbody>
                        <xsl:for-each select="/shop/items">
                            <tr>
                                <td colspan="3">
                                    <xsl:value-of select="@name" />
                                </td>
                            </tr>
                            <xsl:for-each select="device">
                            <tr id="{position()}">
                                <td>
                                    <xsl:value-of select="company" />
                                </td>
                                <td align="right">
                                    <xsl:value-of select="price" />
                                </td>
                            </tr>
                            </xsl:for-each>
                        </xsl:for-each>
                    </tbody>
                </table><br/>
    </xsl:template>
</xsl:stylesheet>
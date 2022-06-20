<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>书本信息</title>
            </head>
            <body>
                <h2 align="center">学生成绩单</h2>
                <xsl:apply-templates match="books"/>
                <!-- 这个books为根目录 -->
            </body>
        </html>
    </xsl:template>
    <xsl:template match="books">
        <table border="1" align="center">
            <xsl:for-each select="book">
            <!-- 这个book为子元素 -->
                <tr>
                    <td><xsl:value-of select="ID"/></td>
                    <td><xsl:value-of select="name"/></td>
                    <td><xsl:value-of select="author"/></td>
                    <td><xsl:value-of select="translator"/></td>
                </tr>
            </xsl:for-each>
        </table>
    </xsl:template>


</xsl:stylesheet>
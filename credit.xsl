<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0">
    <xsl:template match="/">
        <html>
            <body>
                <h2> Liste des operations credit</h2>
                <table width="90%" border="1">
                    <tr>
                        <td>RIB: <xsl:value-of select="releve/@RIB"/></td>
                        <td>Solde: <xsl:value-of select="releve/solde"/></td>
                        <td>Date releve: <xsl:value-of select="releve/dateReleve"/></td>
                    </tr>
                </table>
                <br/>
                <table width="90%" border="1">
                    <tr>
                        <td>Date debut: <xsl:value-of select="releve/operations/@dateDebut"/></td>
                        <td>Date fin: <xsl:value-of select="releve/operations/@dateFin"/></td>
                    </tr>
                </table>
                <br/>
                <table width="90%" border="1">
                    <tr>
                        <th>date</th>
                        <th>montant</th>
                        <th>description</th>
                    </tr>
                    
                    <xsl:for-each select="releve/operations/operation[type='credit']">
                        <tr>
                            <td><xsl:value-of select="date"/></td>
                            <td><xsl:value-of select="montant"/></td>
                            <td><xsl:value-of select="description"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
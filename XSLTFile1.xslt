<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
    <xsl:output method="xml" indent="yes"/>

    <xsl:template match="/">
      <html>
        <body>
          <h3>Osobe i Kompanije sa vise od jedne E-mail adrese:</h3>
          <xsl:apply-templates/>
        </body>
      </html>
    </xsl:template>

  <xsl:template match="Adresar">
    <p>Osobe</p>
    <table border="1">
      <tr>
        <td>Puno Ime</td>
        <td>Datum Rodjenja</td>
        <td>Adresa</td>
        <td>Telefon</td>
        <td>E-mail</td>
      </tr>
      <xsl:for-each select="Osoba">
        <xsl:if test="count(Email[3]) ">
          <tr>
            <td>
              <xsl:value-of select="PunoIme"/></td>
            <td>
              <xsl:value-of select="DatumRodjenja"/></td>
            <td>
              <xsl:value-of select="Adresa"/></td>
            <td>
              <xsl:value-of select="Telefon"/></td>
            <td>
              <xsl:value-of select="Email"/></td>
          </tr>
        </xsl:if>
      </xsl:for-each>

      <xsl:for-each select="Kompanija">
        <xsl:if test="count(Email[3]) ">
          <tr>
            <td>
              <xsl:value-of select="Naziv"/>
            </td>
            <td>
              <xsl:value-of select="Adresa"/>
            </td>
            <td>
              <xsl:value-of select="Telefon"/>
            </td>
            <td>
              <xsl:value-of select="Email"/>
            </td>
          </tr>
        </xsl:if>
      </xsl:for-each>
      
    </table>
  </xsl:template>
  

</xsl:stylesheet>

<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
  <xsl:output method="xml" indent="yes"/>
  <xsl:template match="/">
    <AdreseOsoba>
      <xsl:for-each select="Adresar/Osoba/Adresa">
        <Adresa>

          <xsl:attribute name="ulica">
            <xsl:value-of select="Ulica"/>
          </xsl:attribute>
          <xsl:attribute name="broj">
            <xsl:value-of select="Broj"/>
          </xsl:attribute>
          <xsl:attribute name="grad">
            <xsl:value-of select="Grad"/>
          </xsl:attribute>
          
        </Adresa>
      </xsl:for-each>

    </AdreseOsoba>

      <AdreseKompanija>
        <xsl:for-each select="Adresar/Kompanija/Adresa">
          <Adresa>
            <xsl:attribute name="ulica">
              <xsl:value-of select="Ulica"/>
            </xsl:attribute>
            <xsl:attribute name="broj">
              <xsl:value-of select="Broj"/>
            </xsl:attribute>
            <xsl:attribute name="grad">
              <xsl:value-of select="Grad"/>
            </xsl:attribute>
          </Adresa>
        </xsl:for-each>
      </AdreseKompanija>

  </xsl:template>






</xsl:stylesheet>

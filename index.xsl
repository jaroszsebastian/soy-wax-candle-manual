<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="html" encoding="UTF-8" indent="yes"/>

<!-- Szablon główny, który pasuje do korzenia dokumentu XML -->
<xsl:template match="/">
  <html>
  <head>
    <title>Katalog książek</title>
  </head>
  <body>
    <h1>Katalog książek</h1>
    <ul>
      <!-- Dla każdego elementu <ksiazka> w dokumencie XML -->
      <xsl:for-each select="katalog/ksiazka">
        <li>
          <strong><xsl:value-of select="tytul"/></strong> -
          <em><xsl:value-of select="autor"/></em>,
          Cena: <xsl:value-of select="cena"/> <xsl:value-of select="cena/@waluta"/>
        </li>
      </xsl:for-each>
    </ul>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>

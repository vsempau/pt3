<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
        <title>Recetas de San Valentín</title>
        <style>
          h1 {
            font-size: 24px;
            font-weight: bold;
            text-align: center;
          }
          h2 {
            font-size: 20px;
            font-weight: bold;
          }
          p {
            font-size: 16px;
            margin: 10px 0px;
          }
          ul {
            margin-left: 30px;
            padding-left: 0px;
            list-style: none;
          }
          li:before {
            content: "• ";
            font-size: 20px;
            margin-right: 10px;
          }
          table {
            border-collapse: collapse;
            width: 100%;
            margin: 10px 0px;
          }
          th {
            font-size: 18px;
            font-weight: bold;
            text-align: left;
            padding: 5px;
            background-color: #f2f2f2;
          }
          td {
            font-size: 16px;
            text-align: left;
            padding: 5px;
          }
        </style>
      </head>
      <body>
        <xsl:apply-templates select="recetas/receta[position()=1]"/>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="recetas">
    <h1>Recetas de San Valentín</h1>
    <xsl:apply-templates/>
  </xsl:template>

  <xsl:template match="receta">
    <h2><xsl:value-of select="nombre" /></h2>
    <xsl:apply-templates select="descripciones" />
    <xsl:apply-templates select="instrucciones" />
    <xsl:apply-templates select="ingredientes" />
    <xsl:apply-templates select="pasos" />
  </xsl:template>

  <xsl:template match="descripcion">
    <p><xsl:value-of select="." /></p>
  </xsl:template>

  <xsl:template match="definicion">
    <h2>Definición</h2>
    <p><xsl:value-of select="." /></p>
  </xsl:template>

  <xsl:template match="preparacion">
    <h2>Tiempo de Preparación</h2>
    <p><xsl:value-of select="." /></p>
  </xsl:template>

  <xsl:template match="tiempo_total">
    <h2>Tiempo Total</h2>
    <p><xsl:value-of select="." /></p>
  </xsl:template>

  <xsl:template match="coccion">
    <h2>Tiempo de Cocción</h2>
    <p><xsl:value-of select="." /></p>
  </xsl:template>

  <xsl:template match="raciones">
    <h2>Raciones</h2>
    <p><xsl:value-of select="." /></p>
  </xsl:template>

  <xsl:template match="ingredientes">
    <h2>Ingredientes</h2>
    <ol><xsl:for-each select="ingrediente">    
    <li><p><xsl:value-of select="." /></p></li>
    </xsl:for-each></ol>  
  </xsl:template>

  <xsl:template match="pasos">
    <h2>Pasos</h2>
    <ol><xsl:for-each select="paso">    
    <li><p><xsl:value-of select="." /></p></li>
    </xsl:for-each></ol>  
  </xsl:template>

  <xsl:template match="notas">
    <h2>Notas</h2>
    <p><xsl:value-of select="." /></p>
  </xsl:template>
</xsl:stylesheet>

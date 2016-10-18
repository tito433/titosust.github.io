<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" />
<xsl:template match="channel">
<html>
	<head>
		<title><xsl:value-of select="title"/></title>
	</head>
	<body>
		<xsl:if test="item">
			<ul>
				<xsl:for-each select="item">
					<xsl:variable name="link"><xsl:value-of select="link" /></xsl:variable>
					<xsl:variable name="description"><xsl:value-of select="description" /></xsl:variable>
					<li><a href="{$link}" target="_blank" alt="{$description}"><xsl:value-of select="title" /></a></li>
				</xsl:for-each>
			</ul>
		</xsl:if>
	</body>
</html>
</xsl:template>
</xsl:stylesheet>
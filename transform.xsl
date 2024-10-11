<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
    <xsl:output method="html"/>
	<xsl:template match="/">


		<html>

			<head>

				<title>SigmodRecord</title>
				
			</head>
			<body>

				<h1> CA TEST</h1>

				
				
				<xsl:if test="//issue[volume >= 25]">
					<xsl:apply-templates select="//title"/>
				</xsl:if>
				
				
			</body>
			
			
		</html>
		
		
	</xsl:template>
	<xsl:template match="title">
		<h3>
			<xsl:value-of select="text()"/>
		</h3>
	</xsl:template>
	
	
	
</xsl:stylesheet>

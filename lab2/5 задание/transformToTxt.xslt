<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="text"/>
	<xsl:template match="/">
		<xsl:for-each select="schedule/week/day">
			<xsl:variable name="day" select="@name"/>
			<xsl:value-of select="$day"/>
			<xsl:text>&#10;</xsl:text>
			<xsl:for-each select="lesson">
				<xsl:text> (</xsl:text>
				<xsl:value-of select="start_time"/>
				<xsl:text> - </xsl:text>
				<xsl:value-of select="end_time"/>
				<xsl:text>)</xsl:text>
				<xsl:text>&#160;</xsl:text>
				<xsl:value-of select="subject"/>
				<xsl:text>&#160;</xsl:text>
				<xsl:value-of select="type"/>
				<xsl:text>&#160;</xsl:text>
				<xsl:value-of select="teacher"/>
				<xsl:text>&#160;</xsl:text>
				<xsl:value-of select="classroom"/>
				<xsl:text>&#10;</xsl:text>
			</xsl:for-each>
			<xsl:text>&#10;</xsl:text>
		</xsl:for-each>
	</xsl:template>
</xsl:stylesheet>



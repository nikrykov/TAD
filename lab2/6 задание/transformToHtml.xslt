<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
			<head>
				<title>Schedule</title>
				<style>
					table {
					border-collapse: collapse;
					width: 100%;
					}
					th, td {
					border: 1px solid black;
					padding: 8px;
					text-align: left;
					}
					.day {
					text-align: center;
					}
				</style>
			</head>
			<body>
				<table>
					<tr>
						<th>Предмет</th>
						<th>Аудитория</th>
						<th>Преподаватель</th>
						<th>Время начала</th>
						<th>Время окончания</th>
						<th>Тип занятия</th>
					</tr>
					<xsl:for-each select="schedule/week/day">
						<xsl:variable name="day" select="@name"/>
						<tr>
							<td class="day" colspan="6">
								<xsl:value-of select="$day"/>
							</td>
						</tr>
						<xsl:for-each select="lesson">
							<tr>
								<td>
									<xsl:value-of select="subject"/>
								</td>
								<td>
									<xsl:value-of select="classroom"/>
								</td>
								<td>
									<xsl:value-of select="teacher"/>
								</td>
								<td>
									<xsl:value-of select="start_time"/>
								</td>
								<td>
									<xsl:value-of select="end_time"/>
								</td>
								<td>
									<xsl:value-of select="type"/>
								</td>
							</tr>
						</xsl:for-each>
					</xsl:for-each>
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
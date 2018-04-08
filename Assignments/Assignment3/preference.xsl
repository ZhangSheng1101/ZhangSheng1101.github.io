<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.w3.org/1999/xhtml">
<xsl:output method="xml" />
<xsl:param name="movieid">jp0002</xsl:param>
<xsl:key name="movies" match="/movielist/movie" use="@id" />

<xsl:template match="/">
	<html>
		<head>
			<title>《<xsl:value-of select="/movielist/movie[@id=$movieid]/productinformation/name"/>》 - Team FF</title>
		</head>
		<body>
			<xsl:call-template name="title"/>
			<xsl:apply-templates/>
		</body>
	</html>
</xsl:template>

<xsl:template name="title">
	<div style="text-align:center;">
		<h1>《<xsl:value-of select="/movielist/movie[@id=$movieid]/productinformation/name"/>》 - Team FF</h1>
	</div>
</xsl:template>

<xsl:template match="/movielist">
	<xsl:apply-templates select="movie[@id=$movieid]"/>
</xsl:template>

<xsl:template match="/movielist/movie">
	<div style="background-color:#F5F5F5; position:relative; width:800px; height:520px; left:50%; margin-left:-400px; margin-top:60px;">
		<div style="float:left; left:0px; width:550px; height:520px;">			
			<div style="float:left; width:250px; height:80px;">
				<h2 style="margin-left:50px; width:200px;"><xsl:value-of select="/movielist/movie[@id=$movieid]/productinformation/name"/></h2>
			</div>
			<div style="float:left; height:80px;">
				<h2 style="margin-left:10px;"><xsl:value-of select="/movielist/movie[@id=$movieid]/productinformation/makingregion"/></h2>
			</div>				
			<div style="float:right; height:80px;">
				<h2 style="margin-right:30px;"><xsl:value-of select="/movielist/movie[@id=$movieid]/productinformation/score"/></h2>
			</div>
			<div style="position:absolute; top:80px; margin-left:30px; width:270px;">
				<img src="{/movielist/movie[@id=$movieid]/productinformation/image/@src}"/>
			</div>
			<div style="position:absolute; top:80px; margin-left:330px; width:205px;">
				<p><xsl:value-of select="/movielist/movie[@id=$movieid]/productinformation/description"/></p>
			</div>
		</div>
		<div style="position:absolute; left:580px; top:30px; width:220px; height:200px;">
			<xsl:for-each select="key('movies',$movieid)/contributor/director/person">
				导演：<xsl:value-of select="."/><br/>
			</xsl:for-each>
			<xsl:for-each select="key('movies',$movieid)/contributor/screenwriter/person">
				编剧：<xsl:value-of select="."/><br/>
			</xsl:for-each>
			<xsl:for-each select="key('movies',$movieid)/contributor/stars/person">
				主演：<xsl:value-of select="."/><br/>
			</xsl:for-each>
		</div>
		<div style="position:absolute; left:580px; top:260px; width:220px; height:260px;">
			<xsl:for-each select="key('movies',$movieid)/screeningversion/type">
				类型：<xsl:value-of select="."/><br/>
			</xsl:for-each>
			<xsl:for-each select="key('movies',$movieid)/screeningversion/language">
				语言：<xsl:value-of select="."/><br/>
			</xsl:for-each>
			<xsl:for-each select="key('movies',$movieid)/screeningversion/releasetime/date">
				上映日期：(<xsl:value-of select="@area"/>)<xsl:value-of select="."/><br/>
			</xsl:for-each>
			<xsl:for-each select="key('movies',$movieid)/screeningversion/length">
				时长：(<xsl:value-of select="@area"/>)<xsl:value-of select="."/><br/>
			</xsl:for-each>
		</div>
	</div>
</xsl:template>

</xsl:stylesheet>

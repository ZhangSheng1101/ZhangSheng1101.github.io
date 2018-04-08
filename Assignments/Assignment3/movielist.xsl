<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.w3.org/1999/xhtml">
<xsl:output method="xml" />

<xsl:template match="/">
	<html>
		<head>
			<title>Movielist - Team FF</title>
		</head>
		<body>
			<xsl:call-template name="title"/>
			<xsl:apply-templates/>
		</body>
	</html>
</xsl:template>

<xsl:template name="title">
	<div style="text-align:center;">
		<h1>Movielist - Team FF</h1>
	</div>
</xsl:template>

<xsl:template match="/movielist/movie">
		<div style="background-color:#F5F5F5; position:relative; width:800px; height:520px; left:50%; margin-left:-400px; margin-top:60px;">
			<xsl:apply-templates/>
		</div>
</xsl:template>

<xsl:template match="/movielist/movie/productinformation">
	<div style="float:left; left:0px; width:550px; height:520px;">
		<xsl:apply-templates/>
	</div>
</xsl:template>

<xsl:template match="/movielist/movie/contributor">
	<div style="position:absolute; left:580px; top:30px; width:220px; height:200px;">
		<xsl:apply-templates/>
	</div>
</xsl:template>

<xsl:template match="/movielist/movie/screeningversion">
	<div style="position:absolute; left:580px; top:260px; width:220px; height:260px;">
		<xsl:apply-templates/>
	</div>
</xsl:template>

<xsl:template match="/movielist/movie/productinformation/name">
	<div style="float:left; width:250px; height:80px;">
	<h2 style="margin-left:50px; width:200px;"><xsl:value-of select="."/></h2>
	</div>
</xsl:template>

<xsl:template match="/movielist/movie/productinformation/makingregion">
	<div style="float:left; height:80px;">
	<h2 style="margin-left:10px;"><xsl:value-of select="."/></h2>
	</div>
</xsl:template>

<xsl:template match="/movielist/movie/productinformation/score">
	<div style="float:right; height:80px;">
	<h2 style="margin-right:30px;"><xsl:value-of select="."/></h2>
	</div>
</xsl:template>

<xsl:template match="/movielist/movie/productinformation/image">
	<div style="position:absolute; top:80px; margin-left:30px; width:270px;">
		<img src="{@src}"/>
	</div>
</xsl:template>

<xsl:template match="/movielist/movie/productinformation/description">
	<div style="position:absolute; top:80px; margin-left:330px; width:205px;">
		<p><xsl:value-of select="."/></p>
	</div>
</xsl:template>

<xsl:template match="/movielist/movie/contributor/director/person">
	导演：<xsl:value-of select="."/><br/>
</xsl:template>

<xsl:template match="/movielist/movie/contributor/screenwriter/person">
	编剧：<xsl:value-of select="."/><br/>
</xsl:template>

<xsl:template match="/movielist/movie/contributor/stars/person">
	主演：<xsl:value-of select="."/><br/>
</xsl:template>

<xsl:template match="/movielist/movie/screeningversion/type">
	类型：<xsl:value-of select="."/><br/>
</xsl:template>

<xsl:template match="/movielist/movie/screeningversion/language">
	语言：<xsl:value-of select="."/><br/>
</xsl:template>

<xsl:template match="/movielist/movie/screeningversion/releasetime/date">
	上映时间：(<xsl:value-of select="@area"/>)<xsl:value-of select="."/><br/>
</xsl:template>

<xsl:template match="/movielist/movie/screeningversion/length">
	时长：(<xsl:value-of select="@area"/>)<xsl:value-of select="."/><br/>
</xsl:template>

</xsl:stylesheet>
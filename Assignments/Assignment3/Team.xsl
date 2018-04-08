<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.w3.org/1999/xhtml">
	<xsl:output method="xml"/>
	<xsl:param name="teamName">FF后援团</xsl:param>
	<xsl:template match="/">
		<html>
			<body style="background-color:#e7e7e7;">
				<xsl:apply-templates/>
				<div style="position:absolute; left:20px; top:300px;">
					<div>我们的实验成果：<br/>
					</div>
					<a href="https://zhangsheng1101.github.io/images/treemodel.png">数据模型</a>
					<br/>
					<a href="movielist.xml">电影列表</a>
					<br/>
				</div>
			</body>
		</html>
	</xsl:template>
	<xsl:template match="成员">
		<xsl:apply-templates select="组长/姓名"/>
	</xsl:template>
	<xsl:template match="Team">
		<img src="FF.png" style="position: absolute; left:150px; top:33px;
		  height:150px ;width:200px;border-radius:50%;"/>
		<div style="position:absolute; left:20px; top:20px;">
			<h2 style="color:blue;">
				<xsl:apply-templates select="组名"/>
			</h2>
			<div>
				<div style="float:left; text-align: left; font-weight:bold; 
				line-hight:2em;">组长:<br/>
					组员:<br/>
				</div>
				<div style="float:left; text-align: left; margin-left:20px; 
				line-hight:2em;">
					<xsl:value-of select="成员/组长/姓名"/>
					<br/>
					<xsl:value-of select="成员/组员[1]/姓名"/>
					<br/>
					<xsl:value-of select="成员/组员[2]/姓名"/>
					<br/>
				</div>
			</div>
		</div>
		<div style="position:absolute; left:20px; top:200px;">
			<div>
				<div style="float:left; text-align: left; font-weight:bold; 
				line-hight:2em;">
					小组简介:
				</div>
				<div style="float:left; text-align: left; margin-left:20px; 
				line-hight:2em; border:solid thin; width:18.3em; height:6em; padding-left:0.5em;">
					<xsl:value-of select="简介"/>
					<br/>
				</div>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>

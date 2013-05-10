<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>
<head>
	<title>Untitled</title>
</head>

<body>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<!--- This page gives you label copy for non-matching images. --->
<html><head>
 
<cfquery name="big" datasource="treasure_hunt" dbtype="ODBC">
SELECT * FROM main
WHERE tid = #tid#
</cfquery>

<cfoutput query="big">
 <cfset url = "#url#&q=#question_no#&t=#topic#">
</cfoutput>

<title>Treasure Hunt</title>
</head>

<body bgcolor="#336633" link="#FFFF00" vlink="Lime">

<table align="center">
<tr>
    <td> <img src="images/title_bar.jpg" border="0" usemap="#play_map" width="625" height="61"><map name="play_map"><area shape="rect" coords="2,2,297,36" href="#/playground/treasure_hunt/index.cfm"><area shape="rect" coords="301,1,405,35" href="#/playground/treasure_hunt/play.cfm?qid=#f#&amp;q=#number#&amp;t=#q_topic#"><area shape="rect" coords="409,2,410,3" href="#"><area shape="rect" coords="406,2,626,36" href="#http://www.artsconnected.org/playground"></map> 
    </td>
</tr>
<tr>
<td>
	<cfoutput query="big" MAXROWS="1"> 
		<a href="#url#">
		<img src="images/return.gif" border="0"></a><br>
</td>
</tr>
</table>

<table cellspacing="0" cellpadding="5" align="center">
	<tr valign="top">
	<td bgcolor="##CC0000" align="center" valign="top" width="320">
			<img src="http://www.artsmia.org/mia/images/#image#g.jpg">
	</td>
	
	<td bgcolor="##000066" valign="top" width="300">
		<font face="Arial" color="White"><b>#tombstone#</b><p>
		#label#</font>
		<p>
		
<div align="center">
	<a href="#url#"><img src="images/sm_hunt.jpg" border="0"></a></div>

		</td>
		</tr>
</cfoutput>
</table>

<table>
<tr>
<td>
 <a href="http://www.artsmia.org"><img src="images/logo.gif" border="0"></a>
</td>
</tr>
</table>

<cfset f = RandRange(1, 16)>

<cfquery name="new_game" datasource="treasure_hunt" dbtype="ODBC">
SELECT * FROM question
WHERE qid = #f#
</cfquery>

<map name="reply_map">
  <area shape="rect" coords="440,0,624,34" href="http://www.artsconnected.org/playground">
  <cfoutput query="new_game" maxrows="1">
  <area shape="rect" coords="316,0,436,33" href="/playground/treasure_hunt/play.cfm?qid=#f#&q=#number#&t=#q_topic#">
  </cfoutput>
  <area shape="rect" coords="0,0,309,33" href="/playground/treasure_hunt/index.cfm">
</map>
</body>
</html>



</body>
</html>

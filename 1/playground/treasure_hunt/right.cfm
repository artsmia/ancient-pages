<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>
<head>
	<title>Treasure Hunt: Correct!</title>
</head>

<cfquery name="right" datasource="treasure_hunt" dbtype="ODBC">
SELECT * FROM main
WHERE CONVERT(varchar,acc_no) = CONVERT(varchar,#acc_no#)
</cfquery>

<body bgcolor="#336633">

<table align="center"><tr><td>
<img src="images/title_bar.jpg" border="0" usemap="#right_map"> 
</td></tr></table>

<table cellspacing="0" cellpadding="5" align="center">
<cfoutput query="right">
<tr>
<td bgcolor="##CC0000" align="center" valign="center">
<img src="http://www.artsmia.org/mia/images/#image#g.jpg">
</td>
<td bgcolor="##000066" valign="top" width="300">
<font face="Arial" color="White"><b>#tombstone#</b><p>
#label#</font>
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

<cfoutput>
	<cfset f=RandRange(1,16)>
</cfoutput>	

<cfquery name="new_game" datasource="treasure_hunt" dbtype="ODBC">
SELECT * FROM question
WHERE qid = #f#
</cfquery>
<map name="right_map"> <area shape="rect" coords="404,0,623,35" href="http://www.artsconnected.org/playground"> <cfoutput query="new_game" maxrows="1"> 
  <area shape="rect" coords="304,0,400,33" href="/playground/treasure_hunt/play.cfm?qid=#f#&amp;q=#number#&amp;t=#q_topic#"> </cfoutput> 
  <area shape="rect" coords="0,0,304,33" href="/playground/treasure_hunt/index.cfm"> 
</map> 
</body>
</html>

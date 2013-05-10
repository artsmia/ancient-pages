<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<!--- This page tells you whether you've picked the right or wrong image. 
If you are wrong you keep hunting. If you are right you get a "Correct" and
a question. Once you know the answer to the quesiton, you click on the link to 
get full label text. --->

<html><head>

<cfset url = cgi.http_referer>
 
<cfquery name="big" datasource="treasure_hunt" dbtype="ODBC">
SELECT * FROM main, question
WHERE CONVERT(varchar,acc_no) = CONVERT(varchar,#acc_no#)
AND qid = #qid#
</cfquery>

	<title>Treasure Hunt</title>
</head>

<body bgcolor="#336633" link="fuchsia" vlink="lime">
<table align="center">
<tr>
    <td> <img src="images/title_bar.jpg" border="0" usemap="#r_map">
<map name="r_map">
<area shape="rect" coords="1,2,296,34" href="#/playground/treasure_hunt/index.cfm">
<area shape="rect" coords="300,2,404,34" href="#/playground/treasure_hunt/play.cfm?qid=#f#&q=#number#&t=#q_topic#">
<area shape="rect" coords="407,1,623,35" href="#http://www.artsconnected.org/playground"></map> 
    </td>
</tr>
<tr>
<td>
	<cfoutput query="big" MAXROWS="1"> 
	<cfif answer IS #acc_no#>
			<img src="images/correct.jpg"><p>
		<cfelse>
			<a href="#url#">
			<img src="images/return.gif" border="0"></a><p>
		</cfif>
</td>
</tr>
</table>

<table cellspacing="0" cellpadding="5" align="center">
	<tr valign="top">
	<td bgcolor="##CC0000" align="center" valign="top" width="320">
			<img src="http://www.artsmia.org/mia/images/#image#g.jpg">
	</td>
	
	<td bgcolor="##000066" valign="top" width="300">
		<font face="Arial" color="White"><b>#tombstone#</b></font><p>
			<cfif answer IS #acc_no#>
				<img src="images/good_job.jpg"><p>
				<font face="arial" color="white" size="+1">#question#</font><p>
				<font face="Arial" color="White"><b>Click <a href="right.cfm?acc_no=#acc_no#">here</a> 
				to learn more about this artwork.</b></font>
			<cfelse>
				<cfif label IS "">
					<div align="center">
					<a href="#url#"><img src="images/sm_hunt.jpg" border="0"></a></div>
				<cfelse>
					<font face="arial" color="white"><b>Click <a href="label.cfm?tid=#tid#&url=#url#">here</a> to learn more
					about this work of art.</b></font><p>
				<div align="center">
					<a href="#url#"><img src="images/sm_hunt.jpg" border="0"></a></div>
				</cfif>
				
				
				
				</font>
				</cfif>
		</td>
		</tr>
</cfoutput>
</table>

<table><tr><td>
 <a href="http://www.artsmia.org"><img src="images/logo.gif" border="0"></a>
</td></tr></table>
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

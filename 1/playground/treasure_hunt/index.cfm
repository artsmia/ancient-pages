<html>
<head>
<title>Treasure Hunt</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>


<cfoutput>
	<cfset f=RandRange(1,16)>
</cfoutput>

<cfquery name="begin" datasource="treasure_hunt" dbtype="ODBC">
SELECT * FROM question
WHERE qid = #f#
</cfquery>

<cfquery name="thumbs" datasource="treasure_hunt" dbtype="ODBC">
SELECT * FROM main
</cfquery> 

<body bgcolor="#336633">
<table align="center">
<tr>
<td>

<img src="images/title_bar.jpg" border="0" usemap="#title"> 

</td>
</tr>
</table>

<cfoutput query="begin" maxrows="1">	
	<table align="center" valign="center">
	<tr>
	<td>
	
	<div align="center"><b><font face="Arial" color="White">
	 The object of this game is to find the work of art that goes with
	a close-up view.<br>
	
	Can you tell which art work is being shown?<br>
	 
	 <a href="play.cfm?qid=#f#&q=#number#&t=#q_topic#">
	 Click</a> here when you are ready to begin.</font></b>
	</div>
	
	 </td>
	</tr>
	</table>
</cfoutput> 
<p>
<table align="center" valign="center" width="620">
	<tr>
	<td>
<cfoutput query="thumbs" MaxRows="40">
	<img src="http://www.artsmia.org/mia/thumbs/#image#j.jpg">
 </cfoutput> 
 <p></td>
	</tr>
	</table>
	
<table>
<tr>
<td>
	 <a href="http://www.artsmia.org"><img src="images/logo.gif" border="0"></a>
</td>
</tr>
</table> 

 
<map name="title"> <area shape="rect" coords="418,0,624,33" href="http://www.artsconnected.org/playground"> <cfoutput query="begin" maxrows="1"> 
  <area shape="rect" coords="299,1,416,34" href="/playground/treasure_hunt/play.cfm?qid=#f#&amp;q=#number#&amp;t=#q_topic#"> </cfoutput> 
  <area shape="rect" coords="0,1,296,37" href="/playground/treasure_hunt/index.cfm"> 
</map> 
</body>
</html>

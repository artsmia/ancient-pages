<html>
<head>
<title>Treasure Hunt</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>


<cfquery name="compare" datasource="treasure_hunt" dbtype="ODBC">
SELECT * FROM question
WHERE qid = #qid#
</cfquery>

<cfquery name="thumbs" datasource="treasure_hunt" dbtype="ODBC">
SELECT tid, image, question_no, topic, acc_no FROM main
WHERE question_no = '#q#'
AND topic LIKE '#t#'
</cfquery>


<body bgcolor="#336633">
<table align="center">
  <tr> 
    <td> <img src="images/title_bar.jpg" border="0" usemap="#play_map" width="625" height="61"> 
    </td>
  </tr>
</table>
<table width="620" cellspacing="0" cellpadding="0" align="center">
  <tr valign="top" width="200"> 
    <td bgcolor="#CC0000"> <cfoutput query="compare">
			<div align="center"><img src="#flashpix#"><br>  
				</div><p>
  		 </cfoutput> 
      <div align="center"> <font face="helvetica" size="-1" color="White"> <b>Above 
        is a detail from one of the artworks at right.<br>
        Guess which one by clicking on a an image.</b> </font></div>
    </td>
    <td bgcolor="#000066" align="center"> 
      <div align="center"> <cfoutput query="thumbs">
					<a href="reply.cfm?acc_no=#acc_no#&qid=#qid#">
					<img src="http://www.artsmia.org/mia/thumbs/#image#j.jpg" border="0" vspace="2" space="2" name="thumbnail"></a>
			 	
				</cfoutput> </div>
    </td>
  </tr>
</table>
<table>
  <tr> 
    <td> <a href="http://www.artsmia.org"><img src="images/logo.gif" border="0"></a> 
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
<map name="play_map"> <area shape="rect" coords="0,1,297,32" href="/playground/treasure_hunt/index.cfm"> <cfoutput query="new_game" maxrows="1"> 
  <area shape="rect" coords="300,1,408,35" href="/playground/treasure_hunt/play.cfm?qid=#f#&amp;q=#number#&amp;t=#q_topic#"> </cfoutput> 
  <area shape="rect" coords="411,0,624,34" href="http://www.artsconnected.org/playground"> 
</map> 
</body></html>
 
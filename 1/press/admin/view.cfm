<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<cfquery datasource="mia_web_db" name="GetPressReleases">
 SELECT * FROM PressReleases
 WHERE PR_ID = #PR_ID#
</cfquery>
<html>
<head>
	<title>artsmia: Press Releases</title>
</head>

<body>
<cfoutput query="GetPressReleases">
  <h2>#PR_Title#</h2>
  
  <p>Posted on #DateFormat(PR_Date, "MMMM DD, YYYY")#</p>
  
  #ParagraphFormat(PR_Text)#

  <p><a href="index.cfm">Back to the main Press Releases page.</a><br>
  <a href="edit.cfm?PR_ID=#PR_ID#">Edit this listing</a><br>
  <a href="delete.cfm?PR_ID=#PR_ID#">Delete this listing</a><br>
</cfoutput>

</body>
</html>

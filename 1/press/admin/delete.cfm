<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<cfif IsDefined("URL.confirm")>
  <cfquery datasource="mia_web_db">
    DELETE FROM PressReleases
    WHERE PR_ID = #PR_ID#
  </cfquery>
  <cflocation url="index.cfm">
</cfif>
<cfquery datasource="mia_web_db" name="GetPressRelease" maxrows="1">
  SELECT * FROM PressReleases
  WHERE PR_ID = #PR_ID#
</cfquery>
<html>
<head>
	<title>Delete Press Release</title>
</head>

<body>
<h2>Delete Press Release</h2>

<b>Are you sure you want to delete this press release?</b>
<cfoutput query="GetPressRelease">
<p><a href="index.cfm">No</a> | <a href="delete.cfm?PR_ID=#PR_ID#&Confirm=Yes">Yes</a></p>

<p>#PR_Title#</p>

#ParagraphFormat(PR_Text)#
</cfoutput>
</body>
</html>

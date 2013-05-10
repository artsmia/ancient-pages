<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<cfif IsDefined("URL.confirm")>
  <cfquery datasource="mia_jobs">
    DELETE FROM Jobs
    WHERE JobID = #JobID#
  </cfquery>
  <cflocation url="index.cfm">
</cfif>
<cfquery datasource="mia_jobs" name="GetJob" maxrows="1">
  SELECT * FROM Jobs
  WHERE JobID = #JobID#
</cfquery>
<html>
<head>
	<title>Delete Job</title>
</head>

<body>
<h2>Delete Job</h2>

<b>Are you sure you want to delete this job listing?</b>
<cfoutput query="GetJob">
<p><a href="index.cfm">No</a> | <a href="delete.cfm?JobID=#JobID#&Confirm=Yes">Yes</a></p>

<p>#JobTitle#</p>

#ParagraphFormat(JobDescription)#
</cfoutput>
</body>
</html>

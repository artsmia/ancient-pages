<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<cfquery datasource="mia_jobs" name="GetJob">
 SELECT * FROM Jobs
 WHERE JobID = #JobID#
</cfquery>
<html>
<head>
	<title>artsmia: Job Postings</title>
</head>

<body>
<cfoutput query="GetJob">
  <h2>#JobTitle#</h2>
  
  <p>Posted on #DateFormat(DatePosted, "MMMM DD, YYYY")#</p>
  
  #ParagraphFormat(JobDescription)#

  <p><a href="index.cfm">Back to the main jobs page.</a><br>
  <a href="edit.cfm?JobID=#JobID#">Edit this listing</a><br>
  <a href="delete.cfm?JobID=#JobID#">Delete this listing</a><br>
</cfoutput>

</body>
</html>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<cfquery datasource="mia_jobs" name="GetJobs">
  SELECT JobTitle, JobID FROM jobs
  ORDER BY DatePosted ASC
</cfquery>
<html>
<head>
	<title>artsmia: Job Postings Administration Page</title>
</head>

<body>
<h2>Job posting administration page.</h2>

<p>Current Jobs Online</p>

<cfif GetJobs.RecordCount gt 0>
    <table border="0" width="100%" cellspacing="0" cellpadding="0">
    <cfoutput query="GetJobs">
      <cfif CurrentRow MOD 2 is 0>
        <cfset rowcolor = "##FFFFFF">
      <cfelse>
        <cfset rowcolor = "##CCCCCC">
      </cfif>
      <tr>
        <td bgcolor="#rowcolor#">#CurrentRow#</td>
        <td bgcolor="#rowcolor#">#JobTitle#</td>
        <td bgcolor="#rowcolor#"><a href="view.cfm?jobid=#jobid#">View</a></td>
        <td bgcolor="#rowcolor#"><a href="edit.cfm?jobid=#jobid#">Edit</a></td>
        <td bgcolor="#rowcolor#"><a href="delete.cfm?jobid=#jobid#">Delete</a></td>
      </tr>
    </cfoutput>
    </table>
<cfelse>
    <b><i>No jobs listed at this time.</i></b>
</cfif>
<p><a href="new_job.cfm">Add a new job listing</a></p>
<hr>
<i>Send comments to wlee@artsmia.org or call x3076</i>
</body>
</html>

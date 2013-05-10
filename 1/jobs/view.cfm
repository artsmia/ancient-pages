<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<cfquery datasource="mia_jobs" name="GetJobs" maxrows="1">
  SELECT * FROM jobs
  WHERE JobID = #JobID#
</cfquery>
<html>
<head>
	<title>artsmia: Jobs</title>
</head>

<body bgcolor="#FFFFFF" text="#000000" link="#CC0000" vlink="#660000">
<table border="0" width="450" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td colspan="2"><map name="jobs">
        <area alt="www.artsmia.org" coords="1,1,88,60" href="/" target="_top">
        <area alt="Jobs" coords="94,1,468,60" href="/jobs/" target="_top">
        </map>
        <img src="job_banner.jpg" width=468 height=60 alt="Job Openings" border="0" usemap="#jobs">
    </td>
  </tr>

  
<cfif GetJobs.RecordCount gt 0>
      <tr>
        <td colspan="2">
        <p>&nbsp;</p>
        <h3>Current Job Openings</h3></td>
      </tr>
    <cfoutput query="GetJobs">
      <tr>
        <td>Job Posting Date:</td>
        <td>#DateFormat(DatePosted, "MMMM DD, YYYY")#</td>
      </tr>
      <tr>
        <td>Title:</td>
        <td>#JobTitle#</td>
      </tr>
      <tr>
        <td>Department:</td>
        <td>#Department#</td>
      </tr>
      <tr>
        <td>Hours:</td>
        <td>#Hours#</td>
      </tr>
      <tr>
        <td colspan="2">
          <p>&nbsp;</p>
          #ParagraphFormat(JobDescription)#
          <p>&nbsp;</p>
        </td>
      </tr>
      <tr>
        <td valign="top">Mail:</td>
        <td valign="top">
          Attn:  Human Resources <br>
          The Minneapolis Institute of Arts<br>
          2400 Third Avenue South<br>
          Minneapolis, MN  55404
        </td>
      </tr>
      <tr>
        <td valign="top">Fax:</td>
        <td valign="top">(612) 870-3263</td>
      </tr>
      <tr>
        <td valign="top">E-mail:</td>
        <td valign="top"><a href="mailto:miajobs@artsmia.org">miajobs@artsmia.org</a></td>
      </tr>
      <tr>
        <td colspan="2">
          <p>&nbsp;</p>
          <p><a href="intro.cfm">Back to the Job Listings page.</a></p>
        </td>
      </tr>
    </cfoutput>
<cfelse>
    <tr>
      <td colspan="2">
      <b><i>No jobs listed at this time.</i></b>
      </td>
    </tr>
</cfif>  
  <tr>
    <td colspan="2">
    <p>&nbsp;</p>
    <hr>
      <i><a href="/comments">Send us your comments.</a></i>
    </td>
  </tr>
</table>
</body>
</html>

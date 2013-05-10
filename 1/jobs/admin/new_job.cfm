<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<cfif IsDefined("JobTitle")>
  <cfinsert datasource="mia_jobs" tablename="Jobs">
  <cflocation url="index.cfm">
</cfif>
<html>
<head>
	<title>artsmia: Job Postings: New Job Posting</title>
</head>

<body>
<h2>New Job Posting</h2>

<form action="new_job.cfm" method="post">
  <table>
    <tr>
      <td valign="top">
        Job Title
      </td>
      <td valign="top">
        <input type="Text" name="JobTitle" size="30">
      </td>
    </tr>
    <tr>
      <td valign="top">
        <p>Date Posted</p>

      </td>
      <td valign="top">
        <cfoutput>
          <input type="Text" name="DatePosted" size="30" value="#DateFormat(now(), "MMMM DD, YYYY")#">
        </cfoutput>
      </td>
    </tr>
    <tr>
      <td>
        <p>Department</p>
      </td>
      <td>
        <input type="text" name="department" size="30">
      </td>
    </tr>
    <tr>
      <td>
        <p>Hours</p>
      </td>
      <td>
        <input type="text" name="hours" size="30">
      </td>
    </tr>
    <tr>
      <td valign="top">
        Job Description        
        <ul>
          <li>Enter as much text as you like here.</li>
          <li>Use two returns between paragraphs.</li>
          <li>Use &lt;b&gt;<b>to make bold text</b>&lt;/b&gt;.</li>
          <li>Use &lt;i&gt;<i>to make italic text</i>&lt;/i&gt;.</li>
          <li>Don't worry, you can edit this text later.</li>
        </ul>
      </td>
      <td valign="top">
        <textarea name="JobDescription" cols="27" rows="30" wrap="VIRTUAL"></textarea>
      </td>
    </tr>
    <tr>
      <td>
        &nbsp;
      </td>
      <td>
        <input type="Submit" value="Add this job.">
        
        <p><a href="index.cfm">Click here to go back to your administration page.</a></p>
      </td>
    </tr>
  </table>
</form>

</body>
</html>
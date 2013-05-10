<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<cfquery datasource="mia_jobs" name="GetJobs">
  SELECT * FROM jobs
  ORDER BY DatePosted ASC
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
  <tr>
    <td colspan="2">
    <p>&nbsp;</p>
	<p>Thank you for your interest in employment at The Minneapolis
    Institute of Arts.  We are currently accepting applications for
    the positions listed below.</p>

    <p><b>How to Apply for a Job</b></p>
    <p>
    If you are interested in applying for a position listed below,
    submit a cover letter and your resume, by mail, email, or by fax.
    If you prefer, employment applications are available in the lobby
    of the museum.</p>
    
    <p>Please note that the Institute only accepts applications for 
    current job vacancies. If you are interested in a type of position 
    that is not listed today, our advice is to check this listing 
    periodically and to apply for specific positions as they become 
    available.  The information provided here is updated on an ongoing 
    basis, and is also available on our job hotline at (612) 870-3239.  
    If you have questions that have not been addressed here, you may 
    contact the Human Resources department at (612) 870-3014, or e-mail 
    the Human Resources department at the address below.  The Institute's 
    TTY is available at (612) 870-3132.</p>
    <p>&nbsp;</p>
    </td>
  </tr>
  <tr>
    <td valign="top" width="20%">Mail:</td>
    <td valign="top" width="80%">
          Attn:  Human Resources <br>
          The Minneapolis Institute of Arts<br>
          2400 Third Avenue South<br>
          Minneapolis, MN  55404
    </td>
  </tr>
  <tr>
    <td valign="top" width="20%">Fax:</td>
    <td valign="top" width="80%">(612) 870-3263</td>
  </tr>
  <tr>
    <td valign="top" width="20%">E-mail:</td>
    <td valign="top" width="80%"><a href="mailto:miajobs@artsmia.org">miajobs@artsmia.org</a></td>
  </tr>
  <tr>
    <td colspan="2">
    <p>&nbsp;</p>
    <p><b>The Institute is an Affirmative Action / Equal Opportunity Employer.</b></p>
    <p>
    It is the museum's policy to hire and promote qualified people 
    and administer all terms and conditions of employment without 
    discrimination due to race, color, creed, religion, ancestry, 
    national origin, gender, sexual orientation, disability, age, 
    marital status, status with regard to public assistance, or 
    other protected-class status.</p>
    <p>
    The Institute does not discriminate on the basis of disability
    in admission or access to, or employment in, its programs and
    activities.  If you are in need of a reasonable accommodation
    to enable you to complete the application process, please
    contact the Director of Human Resources.
    </p>
    
    <p><b>Internship Opportunities</b></p>
    <p>
    For information about unpaid internships at the Institute, please 
    visit the internship section of our site at 
    <a href="/internships.html">www.artsmia.org/Internships.html</a></p>
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
        <td colspan="2">#CurrentRow# <a href="view.cfm?JobID=#JobID#">#JobTitle#</a>, #Department#</td>
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

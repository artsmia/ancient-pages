<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<cfquery datasource="mia_web_db" name="GetPressReleases">
  SELECT PR_Title, PR_ID FROM PressReleases
  ORDER BY PR_Date ASC
</cfquery>
<html>
<head>
	<title>artsmia: Job Postings Administration Page</title>
</head>

<body>
<h2>Press Release administration page.</h2>

<p><a href="new.cfm">Add a new press release</a></p>

<p>Current Press Releases Online</p>

<cfif GetPressReleases.RecordCount gt 0>
    <table border="0" width="100%" cellspacing="0" cellpadding="0">
    <cfoutput query="GetPressReleases">
      <cfif CurrentRow MOD 2 is 0>
        <cfset rowcolor = "##FFFFFF">
      <cfelse>
        <cfset rowcolor = "##CCCCCC">
      </cfif>
      <tr>
        <td bgcolor="#rowcolor#">#CurrentRow#</td>
        <td bgcolor="#rowcolor#">#PR_Title#</td>
        <td bgcolor="#rowcolor#"><a href="view.cfm?PR_ID=#PR_ID#">View</a></td>
        <td bgcolor="#rowcolor#"><a href="edit.cfm?PR_ID=#PR_ID#">Edit</a></td>
        <td bgcolor="#rowcolor#"><a href="delete.cfm?PR_ID=#PR_ID#">Delete</a></td>
      </tr>
    </cfoutput>
    </table>
<cfelse>
    <b><i>No Press Releases listed at this time.</i></b>
</cfif>
<p><a href="new.cfm">Add a new press release</a></p>
<hr>
<i>Send comments to wlee@artsmia.org or call x3076</i>
</body>
</html>

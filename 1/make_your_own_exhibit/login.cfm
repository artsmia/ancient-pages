<html>
<head>
<title>Make Your Own Exhibit</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>
<cfcookie name="brand" value="#brand#" expires="1">
<cfquery name="GetBrand" datasource="notebook" dbtype="ODBC">
SELECT * FROM b2
WHERE name LIKE '#brand#'
</cfquery>

<cfquery name="GetUid" datasource="notebook" maxrows=1 dbtype="ODBC">
SELECT uid FROM users
WHERE email LIKE '#email#'
AND password LIKE '#password#'
</cfquery>

<cfquery name="UserExists" datasource="notebook" maxrows="1" dbtype="ODBC">
SELECT * FROM users
WHERE email LIKE '#email#'
ORDER BY uid ASC
</cfquery>
  

<frameset rows="58,*" border="0" framespacing="0"> 
<cfoutput query="GetBrand">
  <frame name="myx_header" scrolling="NO" noresize frameborder="NO" src="#trim(header_URL)#">
</cfoutput>

<frameset cols="123,*" border="0" framespacing="0" frameborder="NO"> 

<cfif GetUid.RecordCount is 1>  
<cfoutput query="GetUid">
<cfcookie name="uid" value="#uid#" expires="1">  
    <frame src="set_list.cfm?uid=#uid#" scrolling="AUTO" name="myx_menu" frameborder="NO">
</cfoutput>
<cfelse>
    <frame src="blank_menu.cfm" scrolling="NO" name="myx_menu" frameborder="NO">
</cfif>

<cfif GetUid.RecordCount is 1>
<cfoutput query="GetBrand">
    <frame src="#intro_url#" name="myx_main" frameborder="NO">
</cfoutput>
<cfelse>
  <cfoutput>
  <cfif UserExists.RecordCount is 0>
    <frame src="input_new_user.cfm?email=#URLEncodedFormat(form.email)#" name="myx_main" frameborder="NO">
  <cfelse>
      <frame src="login_failed.cfm?email=#URLEncodedFormat(form.email)#" name="myx_main" frameborder="NO">
  </cfif>
  </cfoutput>
</cfif>


  </frameset>
</frameset>
<noframes>
<p>Sorry, we haven't made a version that works without frames.</p>

<p>Please let us know it matters to you.</p>

<p>Send mail to <a href="mailto:wlee@artsMIA.org">wlee@artsMIA.org</a>.
</noframes>

</html>

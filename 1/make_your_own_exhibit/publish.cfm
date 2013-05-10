<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>
<cfquery name="GetBrand" datasource="notebook" dbtype="ODBC">
SELECT * FROM b2
WHERE name LIKE '#brand#'
</cfquery>

<cfquery name="GetSid" datasource="notebook" maxrows=1 dbtype="ODBC">
UPDATE sets
SET pub = 'yes'
WHERE sid = #sid#
</cfquery>
<cfoutput query="GetBrand">
<frameset rows="58,*" border="0" framespacing="0"> 
  <frame name="myx_header" scrolling="NO" noresize frameborder="NO" src="#header_URL#">
</cfoutput>
<cfoutput>
<cfcookie name="sid" value="#sid#" expires="2">
  <frameset cols="123,*" border="0" framespacing="0" frameborder="NO"> 
    <frame src="show_set.cfm?sid=#sid#" scrolling="AUTO" name="myx_menu" frameborder="NO">
</cfoutput>
<cfoutput query="GetBrand">
    <frame src="#intro_url#" name="myx_main" frameborder="NO">
  </frameset>
</frameset>
</cfoutput>
<noframes>
<p>Sorry, we haven't made a version that works without frames.</p>

<p>Please let us know it matters to you.</p>

<p>Send mail to <a href="mailto:wlee@artsMIA.org">wlee@artsMIA.org</a>.
</noframes>
</html>

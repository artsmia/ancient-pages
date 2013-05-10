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



<cfoutput query="GetBrand">
<frameset rows="58,*" border="0" framespacing="0"> 
  <frame name="myx_header" scrolling="NO" noresize frameborder="NO" src="#header_URL#">
</cfoutput>
  <frameset cols="123,*" border="0" framespacing="0" frameborder="NO"> 
    <frame src="blank_menu.cfm" scrolling="AUTO" name="myx_menu" frameborder="NO">
    <frame src="input_new_user.cfm" name="myx_main" frameborder="NO">
  </frameset>
</frameset>
<noframes>
<p>Sorry, we haven't made a version that works without frames.</p>

<p>Please let us know it matters to you.</p>

<p>Send mail to <a href="mailto:wlee@artsMIA.org">wlee@artsMIA.org</a>.
</noframes>
</html>

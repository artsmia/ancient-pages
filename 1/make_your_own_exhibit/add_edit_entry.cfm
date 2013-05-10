<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<cfupdate datasource="notebook" tablename="items" dbtype="ODBC">
<cfquery name="GetBrand" datasource="notebook" dbtype="ODBC">
SELECT * FROM b2
WHERE name LIKE '#brand#'
</cfquery>

<cfoutput query="GetBrand">
<frameset rows="58,1*" border="0" framespacing="0"> 
  <frame name="myx_header" scrolling="NO" noresize frameborder="NO" src="#header_url#">
</cfoutput>
<cfoutput>
  <frameset cols="123,1*" border="0" framespacing="0" frameborder="NO"> 
    <frame src="show_set.cfm?sid=#cookie.sid#" scrolling="AUTO" name="myx_menu" frameborder="NO">
    <frame src="show_item.cfm?iid=#iid#" name="myx_main" frameborder="NO">
  </frameset>
</frameset>
</cfoutput>
<noframes><body bgcolor="#FFFFFF">
<p>Sorry, we haven't made a version that works without frames.</p>

<p>Please let us know it matters to you.</p>

<p>Send mail to <a href="mailto:wlee@artsMIA.org">wlee@artsMIA.org</a>.
</body></noframes>
</html>

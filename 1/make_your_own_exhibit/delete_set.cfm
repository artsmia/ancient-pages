<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>
<head>
	<title>Make Your Own Exhibit</title>
</head>
<cfquery name="DeleteItem" datasource="notebook" dbtype="ODBC">
DELETE FROM items
WHERE sid = convert(int, '#sid#')

DELETE FROM sets
WHERE sid = convert(int, '#sid#')
</cfquery>

<cfquery name="GetBrand" datasource="notebook" dbtype="ODBC">
SELECT * FROM b2
WHERE name LIKE '#brand#'
</cfquery>

<cfoutput query="GetBrand">
<frameset rows="58,1*" border="0" framespacing="0"> 
  <frame name="myx_header" scrolling="NO" noresize frameborder="NO" src="#header_URL#">
  <frameset cols="123,1*" border="0" framespacing="0" frameborder="NO"> 
    <frame src="set_list.cfm?uid=#cookie.uid#" scrolling="AUTO" name="myx_menu" frameborder="NO">
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
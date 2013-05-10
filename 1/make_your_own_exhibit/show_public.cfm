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
<frameset rows="58,*" border="0" framespacing="0"> 
<cfoutput query="GetBrand">
  <frame name="myx_header" scrolling="NO" noresize frameborder="NO" src="#trim(header_URL)#">
</cfoutput>
<cfquery name="GetPub" datasource="notebook" dbtype="odbc">
  SELECT sid FROM sets
  WHERE sid = #sid#
  AND CONVERT(varchar, pub) = 'yes'
</cfquery>
<frameset cols="123,*" border="0" framespacing="0" frameborder="NO">
  <cfoutput query="GetPub">
    <cfcookie name="sid" value="#sid#" expires="1">
    <frame src="show_set_pub.cfm?sid=#sid#" scrolling="AUTO" name="myx_menu" frameborder="NO">
    <frame src="show_item_pub.cfm?open=#sid#" name="myx_main" frameborder="NO">
  </cfoutput>
  <cfif GetPub.RecordCount is 0>
    <frame src="blank_menu.cfm" scrolling="AUTO" name="myx_menu" frameborder="NO">
    <frame src="not_pub.cfm" name="myx_main" frameborder="NO">
  </cfif>
  </frameset>
</frameset>
<noframes>
<p>Sorry, we haven't made a version that works without frames.</p>

<p>Please let us know it matters to you.</p>

<p>Send mail to <a href="mailto:wlee@artsMIA.org">wlee@artsMIA.org</a>.
</noframes>

</html>

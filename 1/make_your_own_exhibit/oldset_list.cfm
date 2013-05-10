<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>
<head>
	<title>artsMIA: Make Your Own Exhibit</title>
</head>
<cfquery name="GetBrand" datasource="notebook" dbtype="ODBC">
SELECT * FROM b2
WHERE name LIKE '#brand#'
</cfquery>
<cfoutput query="GetBrand">
<body bgcolor="#trim(bgcolor2)#" text="#trim(textcolor2)#" link="#trim(linkcolor2)#" vlink="#trim(vlinkcolor2)#">
</cfoutput>
<cfquery name="GetSets" datasource="notebook" dbtype="ODBC">
SELECT * FROM sets
WHERE uid = #cookie.uid#
</cfquery>
<cfcookie name="sid" value="" expires="5">
<cfif #GetSets.RecordCount# IS 0>
 You have not made any exhibits.
<cfelse>
<p><b>Your exhibits</b></p>
<ol>
<cfoutput query="GetSets">
  <li>
    <a href="show_set.cfm?sid=#sid#" target="myx_menu">
      #name#
    </a>
  </li>
</cfoutput>
</ol>
</cfif>
<cfoutput query="GetBrand">
<img src="images/exhibit_commands.gif" alt="" border="0"><br>
  <a href=new_set.cfm><img src="images/start_new.gif" alt="" border="0"></a><br>
<img src="images/help.gif" alt="" border="0">
</cfoutput>
</body>
</html>

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
<form action="add_set.cfm" method="POST" target="_top">
Name this exhibit:<p>
<input type="Text" name="name" size="15">
<cfoutput><input type="Hidden" name="uid" value="#cookie.uid#"></cfoutput><br>
<input type="Submit" value="Start!">
</form>

</body>
</html>

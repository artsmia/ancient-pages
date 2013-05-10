<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>
<head>
	<title>Untitled</title>
</head>
<cfquery name="GetAuthor" datasource="notebook" dbtype="odbc">
SELECT users.email FROM users,sets
WHERE users.uid = sets.uid
AND sets.sid = #sid#
</cfquery>
<cfoutput query="GetAuthor"> <cfset to = #email#></cfoutput>
<cfmail to="#to#" from="#from#" subject="#subject#">
#message#
</cfmail>
<body bgcolor="#FFFFFF" text="#000000" link="#FF0000" vlink="#990000">
<h3>Mail Sent!</h3>


</body>
</html>

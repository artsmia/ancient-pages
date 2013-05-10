<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>
<head>
	<title>Untitled</title>
</head>

<body>
<cfquery name="ShowAllUsers" datasource="notebook" dbtype="ODBC">
SELECT * FROM users
</cfquery>
<ol>
<cfoutput query="ShowAllUsers">
  <li> #uid# #email# <b>#password#</b>
</cfoutput>
</ol>
</body>
</html>

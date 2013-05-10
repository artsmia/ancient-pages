<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>
<head>
	<title> Brand added</title>
</head>

<body>
<cfquery name="CheckUnique" datasource="notebook" dbtype="ODBC">
SELECT name FROM b2
WHERE name LIKE '#name#'
</cfquery>

<cfoutput query="CheckUnique">
<p>
Whoa Nellie! Someone's already used the name #name#! Hit the back button 
and change the name!
</p>
</cfoutput>
<cfoutput>
<cfif #CheckUnique.RecordCount# is 0>
<cfinsert datasource="notebook" tablename="b2" dbtype="ODBC">
<h1>Added!</h1>

<p>Please remember to add a hidden field to your login page.</p>
<p>

&lt;input type="hidden" name="brand" value="#name#"&gt;
</cfif>
</cfoutput>
</p>

<p>Send any comments to <a href="mailto:wlee@artsmia.org">me.</a>
</body>
</html>

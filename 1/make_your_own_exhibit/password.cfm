<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>
<head>
	<title>Lost Password</title>
	
	<cfquery name="GetInfo" datasource="notebook" maxrows=1 dbtype="ODBC">
SELECT * FROM users
WHERE uid = #uid#
</cfquery>
<cfmail query="GetInfo" to="#email#" from="wlee@artsMIA.org" subject="Lost Password">
Hi,

This is the lost password function of the Make Your Own Exhibit site.

Your email address  is #email#
Your password is #password#

If you did not ask our site to send you your password, someone may
be trying to log on as you. This could be a bad thing.

WL
Willy Lee
Webmaster
The Minneapolis Institute of Arts
http://www.artsmia.org/
</cfmail>
</head>

<body>
<cfoutput query="GetInfo">
The password for #email# is being sent. AOL users may have to wait a while before it appears.
</cfoutput>

</body>
</html>

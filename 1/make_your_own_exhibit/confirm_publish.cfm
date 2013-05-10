<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>
<head>
	<title>Publish</title>
</head>
<cfquery name="GetBrand" datasource="notebook" dbtype="ODBC">
SELECT intro_url FROM b2
WHERE name LIKE '#brand#'
</cfquery>

<body bgcolor="#FFFFFF" text="#000000" link="#FF0000" vlink="#990000">

<p>Publishing your exhibit will allow other users to see your work.</p>

<p>After you publish an exhibit, an exhibit code will appear under the name
of your exhibit. You will have to give this number to the people you want to
be able to see your exhibit.</p>

<p>After you publish an exhibit, you'll still be able to change text, add and
delete items, and anything else you can currently do. 
But don't worry, the published version will not allow other people to change anything
within your exhibit.</p>

<p>
<a href="publish.cfm" target="_top">
Click here to publish your exhibit.</a></p>

<cfoutput query="GetBrand">
<p>
<a href="intro_url.cfm">
Click here if you don't want to publish this exhibit now.</a>
</p>
</cfoutput>
</body>
</html>

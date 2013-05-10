<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>
<head>
	<title>Untitled</title>
</head>

<body>
<cfdirectory action="LIST" directory="d:\INetPub\artsmia\flash\journal" name="JournalFiles" filter="*.cfm">

<cfoutput query="JournalFiles">
<cfset newest = #name#>
</cfoutput>
<cfinclude template="journal/#newest#">

</body>
</html>

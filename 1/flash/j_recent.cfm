<cfdirectory action="LIST" directory="d:\INetPub\artsmia\flash\journal" name="JournalFiles" filter="*.cfm">

<cfoutput query="JournalFiles">
<cfset newest = #name#>
</cfoutput>
<cfinclude template="journal/#newest#">
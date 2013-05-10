<cfdirectory action="LIST" directory="d:\INetPub\artsmia\flash\journal" name="JournalFiles" filter="*.cfm">

<cfoutput query="JournalFiles">
<cfset newest = #name#>
#CGI.HTTP_REFERER#
</cfoutput>


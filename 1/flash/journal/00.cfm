<cfdirectory action="LIST" directory="d:\INetPub\artsmia\flash\journal" name="JournalFiles" filter="*.cfm"><cfoutput query="JournalFiles"><cfif Find("a", name)><cfset newest = #name#></cfif><cfset last = #name#></cfoutput><cfinclude template="#newest#">
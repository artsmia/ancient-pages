<cfif NOT IsDefined("seen")>
  <cfcookie name="seen" value="|" expires="1">
</cfif>

<cfif cookie.seen contains "|01|"
 and cookie.seen contains "|02|"
 and cookie.seen contains "|03|"
 and cookie.seen contains "|04|"
 and cookie.seen contains "|05|"
 and cookie.seen contains "|06|"
 and cookie.seen contains "|07|"
 and cookie.seen contains "|08|"
 and cookie.seen contains "|09|"
 and cookie.seen contains "|10|">

<cflocation url="all_done.cfm">
       
</cfif>

<cfloop condition="NOT IsDefined('number')">

  <cfset rand = RandRange(1,10)>
  <cfif rand lt 10>
    <cfset rand = "0#rand#">
  </cfif>
  <cfif cookie.seen does not contain "|#rand#|">
    <cfset number = rand>
    <cfcookie name="seen" value="#cookie.seen##rand#|" expires="1">
  </cfif>
</cfloop>

<cfhttp url="http://www.artsmia.org/playground/concentration/game#rand#.html" method="get" resolveurl="no"></cfhttp>

<cfoutput>
  #cfhttp.filecontent#
</cfoutput> 
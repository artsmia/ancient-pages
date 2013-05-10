<cfset number = RandRange(1,10)>
<cfif number lt 10>
  <cfset number = "0" & number>
</cfif>

<cfif NOT IsDefined("list")>
  <cfcookie name="list" value=",#number#," expires="1">
<cfelse>
  <cfif list contains ",#number#,">
    <cflocation url="game.cfm">
  <cfelse>
    <cfcookie name="list" value="#list# ,#number#," expires="1">
    <!--- Here's where we do our stuff --->
    <cfoutput>
      #number#<br>
      #list#
    </cfoutput>
  </cfif>
</cfif>

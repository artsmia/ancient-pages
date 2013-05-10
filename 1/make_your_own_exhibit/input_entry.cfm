<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>
<head>
	<title>artsMIA: Notebook</title>
</head>

<body bgcolor="#FFFFFF">
<cfquery name="GetHighest" datasource="notebook" maxrows=1 dbtype="ODBC">
SELECT sort FROM items
WHERE sid = #cookie.sid#
ORDER BY sort desc
</cfquery>

<cfoutput>
<table border="0">
  <cfif IsDefined("img_src")>
  <tr>
    <td>
	  <img src="#img_src#">
	</td>
  </tr></cfif>
  <cfif IsDefined("title")>
  <tr>
	<td>
	  #creator#<br>
	  <b>#title#</b><br>
	  #date#<br>
	  #materials#
	</td>
  </tr>
  </cfif>
<tr>
  <td>
<form action="add_entry.cfm" method="POST" target="_top">
<cfif IsDefined("img_src")>
<input type="Hidden" name="img_src" value="#img_src#">
</cfif>
<cfif IsDefined("thumb")>
<input type="Hidden" name="thumbnail" value="#thumb#">
</cfif>
<cfif IsDefined("fpx")>
<input type="Hidden" name="fpx" value="#fpx#">
</cfif>
<cfif IsDefined("materials")>
<input type="Hidden" name="materials" value="#materials#"></cfif>
<cfif IsDefined("title")>
<input type="Hidden" name="title" value="#title#">
<cfelse>
Add a title for this entry:<br>
<input type="text" name="title" size="40"><br>
</cfif>
<cfif IsDefined("date")>
<input type="Hidden" name="date" value="#date#"></cfif>
<cfif IsDefined("creator")>
<input type="Hidden" name="creator" value="#creator#"></cfif>
<cfif IsDefined("more_href")>
<input type="Hidden" name="more_href" value="#more_href#"></cfif>
<input type="Hidden" name="sid" value="#cookie.sid#"></cfoutput>
<cfif GetHighest.RecordCount is 0>
<input type="Hidden" name="sort" value="30">
<cfelse>
<cfoutput query="GetHighest">
<cfset next = sort + 30>
<input type="Hidden" name="sort" value="#next#">
</cfoutput>
</cfif>
Add your own text here:<br>
<textarea name="notes" cols="40" rows="15" wrap="VIRTUAL"></textarea><br>
<input type="Submit" value="Add">
</form>
  </td>
</tr>

</table>

</body>
</html>
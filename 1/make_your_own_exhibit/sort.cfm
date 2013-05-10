<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>
<head>
	<title>rearrange items</title>
</head>

<body>
<cfquery name="GetItems" datasource="notebook" dbtype="ODBC">
SELECT * FROM items
WHERE sid = #sid#
ORDER BY sort
</cfquery>

<cfoutput query="GetItems">
  <cfif IsDefined("sval")>
  <cfelse>
    <cfset sval = 0>
  </cfif>
  
  <cfset sval=(sval + sort) / 2>
  <p>
  <a href="set_sort.cfm?sval=#sval#&move=#move#">Here</a>
  </p>
  <p>
  <img src="#thumbnail#">
  </p>
  <cfset sval = #sort#>
</cfoutput>

</body>
</html>

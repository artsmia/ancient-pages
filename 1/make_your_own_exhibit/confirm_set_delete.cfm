<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>
<head>
	<title>Delete This Exhibit</title>

<cfquery name="GetBrand" datasource="notebook" dbtype="ODBC">
SELECT * FROM b2
WHERE name LIKE '#brand#'
</cfquery>
	
<cfquery name="GetSet" datasource="notebook" dbtype="ODBC">
SELECT * FROM items
WHERE sid = #sid#
ORDER BY sort ASC
</cfquery>
</head>

<body bgcolor="#FFFFFF" text="#000000" link="#FF0000" vlink="#990000">
<p>
  <font face="Arial, Helvetica, sans_serif" color="#3333FF">
    <b><i>Are you sure you want to delete this exhibit?</i></b>
  </font>
</p>
<p>
  <a href="delete_set.cfm" target="_top">
  Yes</a> | 
  <cfoutput query="GetBrand">
    <a href="#intro_url#">No</a>
  </cfoutput>
</p>

<table>
  <cfoutput query="GetSet">
    <tr>
	  <td>
	  <cfif thumbnail is not "">
	  <img src="#thumbnail#"></cfif>&nbsp;</td>
	  <td>
	    #creator#<br>
		<b>#title#</b><br>
		#date#<br>
		#materials#
	  </td>
	</tr>
	<tr>
	  <td>&nbsp;</td>
	  <td>
	    <p>&nbsp;</p>
	    #notes#
	  </td>
	</tr>
	<tr>
	  <td colspan="2"><hr><br>&nbsp;</td>
	</tr>
  </cfoutput>
</table>
</body>
</html>

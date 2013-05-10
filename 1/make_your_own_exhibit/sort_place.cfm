<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>
<head>
	<title>rearrange items</title>
</head>

<body bgcolor="#FFFFFF" text="#000000" link="#FF0000" vlink="#990000">
<cfquery name="GetItems" datasource="notebook" dbtype="ODBC">
SELECT * FROM items
WHERE sid = #sid#
ORDER BY sort ASC
</cfquery>
<p>
  <font face="Arial, Helvetica, sans_serif" color="#3333FF">
    <b><i>Select the place you wish to move it to.</i></b>
  </font>
</p>
<table border="0">
  <tr>
    <td colspan="2"><hr></td>
  </tr>
<cfoutput query="GetItems">
  <cfif IsDefined("sval")>
  <cfelse>
    <cfset sval = 0>
  </cfif>
  
  <cfset sval=(sval + sort) / 2>
  <tr>
    <td align="center">
  <p>
  <a href="set_sort.cfm?sort=#sval#&iid=#move#" target="_top">Here</a>
  </p></td>
  <td>&nbsp;</td>
  </tr>
  <tr>
    <td colspan="2">
	  <hr>
	</td>
  </tr>
    <tr>
	  <td>
	  <cfif thumbnail is not "">
	    <a href="sort_place.cfm?move=#iid#">
		  <img src="#thumbnail#"></a></cfif>&nbsp;
      </td>
	  <td>
	    #creator#<br>
		<a href="sort_place.cfm?move=#iid#"><b>#title#</b></a><br>
		#date#<br>
		#materials#
	  </td>
	</tr>
  <tr>
  <td colspan="2">
    <hr>
  </td>
  </tr>
  <cfset sval = #sort#>
  <cfif GetItems.CurrentRow is GetItems.RecordCount>
  <cfset sval=sval + 10>
  <tr><td align="center">
  <p>
  <a href="set_sort.cfm?sort=#sval#&iid=#move#" target="_top">Here</a>
  </p></td><td>&nbsp;</td></tr>
  </cfif>

</cfoutput>
</table>
</body>
</html>

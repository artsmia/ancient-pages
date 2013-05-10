<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>
<head>
	<title>Untitled</title>
</head>

<body bgcolor="#FFFFFF" text="#000000" link="#FF0000" vlink="#990000">
<cfquery name="GetItems" datasource="notebook" dbtype="ODBC">
SELECT * FROM items
WHERE sid = #sid#
ORDER BY sort
</cfquery>
<p>
  <font face="Arial, Helvetica, sans_serif" color="#3333FF">
    <b><i>Select the item you wish to move.</i></b>
  </font>
</p>
<table border="0">
  <cfoutput query="GetItems">
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

</body>
</html>

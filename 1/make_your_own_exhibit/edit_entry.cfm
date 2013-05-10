<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>
<head>
	<title>artsMIA: Notebook</title>
</head>

<body bgcolor="#FFFFFF" text="#000000" link="#FF0000" vlink="#990000">

<cfquery name="GetEntry" datasource="notebook" maxrows=1 dbtype="ODBC">
SELECT * FROM items
WHERE iid = #iid#
</cfquery>

<cfoutput query="GetEntry">
<table width="100%" border="0">
  <tr>
    <td><img src="#img_src#"></td>
	<td>
	  #creator#<br>
	  <b>#title#</b><br>
	  #date#<br>
	  #materials#
	</td>
  </tr>
<tr>
  <td colspan="2">
<form action="add_edit_entry.cfm" method="POST" target="_top">
<input type="hidden" name="iid" value="#iid#">
<textarea name="notes" cols="40" rows="15" wrap="VIRTUAL">#notes#
</textarea><br>
<input type="Submit" value="Add">
</form>
  </td>
</tr>

</table>

</cfoutput>
</body>
</html>
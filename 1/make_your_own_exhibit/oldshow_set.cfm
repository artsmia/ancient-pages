<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>
<head>
	<title>artsMIA: Notebook</title>
</head>
<cfquery name="GetBrand" datasource="notebook" dbtype="ODBC">
SELECT * FROM b2
WHERE name LIKE '#brand#'
</cfquery>
<cfoutput query="GetBrand">
<body bgcolor="#trim(bgcolor2)#" text="#trim(textcolor2)#" link="#trim(linkcolor2)#" vlink="#trim(vlinkcolor2)#">
</cfoutput>

<cfoutput>
<!---Writes cookie.sid, when it's already there, it just writes over itself--->
  <cfcookie name="sid" value="#sid#" expires="5">
<!---Selects the set name for display at the top--->
  <cfquery name="GetSet" datasource="notebook" dbtype="ODBC">
    SELECT * FROM sets
    WHERE sid = convert(int,'#cookie.sid#')
  </cfquery>
<!---Selects Items for display in the list--->
  <cfquery name="GetThisSet" datasource="notebook" dbtype="ODBC">
    SELECT * FROM items
	WHERE sid = convert(int,'#cookie.sid#')
	ORDER BY CONVERT(int, sort) ASC
  </cfquery>
</cfoutput>
<cfoutput query="GetSet" maxrows=1>
  <h3>#name#</h3>
  <cfif pub is not "">
  <p>Your exhibit code is: #sid#</p>
  </cfif>
</cfoutput>
<!--- If there are no records, just say so.--->
<cfif #GetThisSet.RecordCount# IS 0>
 There is nothing in this set.
<cfelse>
<!---When there are records, display them--->
<table border="0">
<cfoutput query="GetThisSet">
  <tr>
    <td align="center">
	<a href="show_item.cfm?iid=#iid#" target="myx_main">
	<cfif thumbnail is "">
	<b>#title#</b>
	<cfelse>	  
	    <img src="#thumbnail#" alt="#title#"><br>
		#title#
	</cfif>
	  </a>
	  <p>&nbsp;</p>
	</td>
  </tr> 
</cfoutput>
</table>
</cfif>
<hr>
<img src="images/exhibit_commands.gif" alt="Exhibit Commands" border="0"><br>
<cfoutput query="GetBrand">
<a href="#intro_url#" target="myx_main">
  <img src="images/add_more_art.gif" alt="" border="0"></a><br>
<a href="input_entry.cfm" target="myx_main">
  <img src="images/add_text.gif" alt="" border="0"></a><br>
<a href="sort_item.cfm?sid=#sid#" target="myx_main">
  <img src="images/sort.gif" alt="" border="0"></a><br>
<a href="confirm_publish.cfm" target="myx_main">
  <img src="images/publish.gif" alt="" border="0"></a><br>
<a href="confirm_set_delete.cfm?sid=#sid#" target="myx_main">
  <img src="images/delete_ex.gif" alt="" border="0"></a><br>
<a href="set_list.cfm">
  <img src="images/open.gif" alt="" border="0"></a><br>
<a href="new_set.cfm"> 
  <img src="images/start_new.gif" alt="" border="0"></a><br>
<img src="images/help.gif" alt="" border="0"><br>

</cfoutput>
</body>
</html>
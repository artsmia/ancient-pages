<html>
<head>
<title>The Foot in the Door 2000 Exhibition</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body bgcolor="#333333" text="#ffffff" link="#FFFFFF" vlink="#FFFFFF" alink="#FFFFFF">
<font face="Arial, Helvetica, Times"> 
<cfif IsDefined("id") is false>
<cfquery datasource="foot" dbtype="ODBC" name="GetItem" maxrows="1">
  SELECT * FROM foot
  WHERE id > #RandRange(1,1700)#
  AND permission LIKE 'y'
</cfquery>
<cfelse>
<cfquery datasource="foot" dbtype="ODBC" name="GetItem" maxrows="1">
  SELECT * FROM foot
  WHERE id = #id#
  AND permission LIKE 'y'
</cfquery>
</cfif>
<table width="570" height="400" cellspacing="2" cellpadding="4" border="0" align="left">
  <tr> 
    <td width="118" height="30" align=center valign=middle><a href="http://www.artsmia.org"><img src="wimages/mia2w.gif" width="65" height="45" alt="vspace="0" hspace="0" border="0"></a></td>
    <td valign=middle colspan="2" height="30" align=center><div align="left"><img src="wimages/footin2.gif" align="left" alt="The Foot in the Door 2000"><br></div></td>
  </tr>
  <tr> 
    <td align=center valign=middle width="118" bgcolor="#333333"> 
      <table cellspacing="1" cellpadding="2" width="118">
        <tr valign="middle" align="center"> 
          <td height="35"><a href="index.cfm"><img src="wimages/b_intro.gif" width="100" height="20" border="1"></a></td>
        </tr>
        <tr valign="middle" align="center"> 
          <td height="35"><img src="wimages/b_show2.gif" width="100" height="20"></td>
        </tr>
        <tr valign="middle" align="center"> 
          <td height="35"><cfoutput query="GetItem"><a href="postcard.cfm?id=#id#"></cfoutput><img src="wimages/b_ptcard.gif" width="100" height="20" border="0"></a></td>
        </tr>
        <tr valign="middle" align="center"> 
          <td height="35"><a href="search.cfm"><img src="wimages/B_search.gif" width="100" height="20" border="0"></a></td>
        </tr>
        <tr valign="middle" align="center"> 
          <td height="35"><a href="2000entry.cfm"><img src="wimages/b_rand2.gif" width="100" height="20" border="0"></a></td>
        </tr>
      </table>
      <table border="0" cellspacing="0" cellpadding="0" height="200">
        <tr align="center" valign="top" bgcolor="#333333"> 
         <td width="118"><a href="2000entry.cfm"><img src="wimages/footnav.gif" width="108" border="0" alt="Directional finder"></a><br>
      <font face="Arial, Helvetica" size="-1">use the directional finder to navigate through the show</font></td>
        </tr>
      </table>
    </td>
	<cfoutput query="GetItem">
    <td align=center valign=top width="300"><img src="300images/#file_name#" width="300" height="300" border="0" alt="#title#"></td>
    <td valign=top width="146"><br><br><p><font face="Arial, Helvetica, Sans-Serif" size="-1">#artist_first#&nbsp;#artist_last#</font></p><br><br>
<p><font face="Arial, Helvetica, Sans-Serif" size="-1"><i>#title#</i></font></p><br><br><br>
 <p><font face="Arial, Helvetica, Sans-Serif" size="-1">Gallery Location:
 <br>&nbsp;&nbsp;&nbsp;&nbsp;Column&nbsp;<cfif column is "">tbd<cfelse>#column#</cfif><br>
 &nbsp;&nbsp;&nbsp;&nbsp;Row&nbsp;<cfif row is "">tbd<cfelse>#row#</cfif></font></p></td>
  </cfoutput></tr>
</table>



</font></body></html>

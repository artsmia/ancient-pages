<html>
<head>
<title>The Foot in the Door 2000 Exhibition - Introduction</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body bgcolor="#333333" text="#ffffff" link="#FFFFFF" vlink="#FFFFFF" alink="#FFFFFF">
<font face="Arial, Helvetica, Times"> 

<table width="570" cellspacing="2" cellpadding="4" border="0">
  <tr> 
    <td width="118" height="30" align=center valign=middle><a href="/"><img src="wimages/mia2w.gif" width="65" height="45" alt="vspace="0" hspace="0" border="0"></a></td>
    <td valign=middle colspan="2" height="30" align=center><div align="left"><img src="wimages/footin2.gif" align="left"><br></div></td>
  </tr>
</table><br>
<!---<table width="570" cellspacing="2" cellpadding="4" border="0">
  <tr> 
    <td align=center valign=top width="118" bgcolor="#333333">---> 
      <table cellspacing="1" cellpadding="2" width="118" align="left">
        <tr valign="middle" align="center"> 
          <td height="35"><img src="wimages/b_intro3.gif" width="100" height="20" border="1" alt="Introduction"></td>
        </tr>
        <tr valign="middle" align="center"> 
          <td height="35"><a href="about.html"><img src="wimages/b_at.gif" width="100" height="20" border="0" alt="About the Show"></a></td>
        </tr>
        <tr valign="middle" align="center"> 
          <td height="35"><a href="history.html"><img src="wimages/b_hist.gif" width="100" height="20" border="0" alt="History"></a></td>
        </tr>
        <tr valign="middle" align="center"> 
          <td height="35"><a href="maep.html"><img src="wimages/B_maep.jpg" width="100" height="20" border="0" alt="The MAEP"></a></td>
        </tr>
        <tr valign="middle" align="center"> 
          <td height="35"><a href="dooropen.html"><img src="wimages/b_tdo.gif" width="100" height="20" border="0" alt="The Door is Open"></a></td>
        </tr>
     <!--- </table>
      <table width="105" border="0" cellspacing="0" cellpadding="0" height="200">--->
        <tr align="center" valign="top" bgcolor="#333333"> 
          <td width="201"><br>
            <a href="2000entry.cfm"><img src="wimages/b_ets.gif" width="100" height="20" border="1"></a><br>
            <a href="2000entry.cfm"><img src="wimages/shoenew.jpg" width="50" border="0" vspace="3"></a><br>
            <font face="Arial, Helvetica, Times" size="-1" color="#ffffff"> </font></td>
        </tr>
      </table>
   <!--- </td>--->
    <!---<td align=center valign=top width="250"> --->
	  <cfquery datasource="foot" dbtype="ODBC" name="GetItem">
      SELECT * FROM foot
      WHERE permission LIKE 'y'
      </cfquery>
	  <cfset m = GetItem.RecordCount>
      <table width="250" border="0" cellspacing="0" cellpadding="0" height="300" align="left">
        <tr>
          <td><cfoutput query="GetItem" startrow="#randrange(1,m)#" maxrows="1"><a href="2000entry.cfm?entryid=#entryid#"><img src="50images/#file_name#" border="0"></a></cfoutput></td>
          <td><cfoutput query="GetItem" startrow="#randrange(1,m)#" maxrows="1"><a href="2000entry.cfm?entryid=#entryid#"><img src="50images/#file_name#" border="0"></a></cfoutput></td>
          <td><cfoutput query="GetItem" startrow="#randrange(1,m)#" maxrows="1"><a href="2000entry.cfm?entryid=#entryid#"><img src="50images/#file_name#" border="0"></a></cfoutput></td>
          <td><cfoutput query="GetItem" startrow="#randrange(1,m)#" maxrows="1"><a href="2000entry.cfm?entryid=#entryid#"><img src="50images/#file_name#" border="0"></a></cfoutput></td>
          <td><cfoutput query="GetItem" startrow="#randrange(1,m)#" maxrows="1"><a href="2000entry.cfm?entryid=#entryid#"><img src="50images/#file_name#" border="0"></a></cfoutput></td>
        </tr>
        <tr>
          <td><cfoutput query="GetItem" startrow="#randrange(1,m)#" maxrows="1"><a href="2000entry.cfm?entryid=#entryid#"><img src="50images/#file_name#" border="0"></a></cfoutput></td>
          <td><cfoutput query="GetItem" startrow="#randrange(1,m)#" maxrows="1"><a href="2000entry.cfm?entryid=#entryid#"><img src="50images/#file_name#" border="0"></a></cfoutput></td>
          <td><cfoutput query="GetItem" startrow="#randrange(1,m)#" maxrows="1"><a href="2000entry.cfm?entryid=#entryid#"><img src="50images/#file_name#" border="0"></a></cfoutput></td>
          <td><cfoutput query="GetItem" startrow="#randrange(1,m)#" maxrows="1"><a href="2000entry.cfm?entryid=#entryid#"><img src="50images/#file_name#" border="0"></a></cfoutput></td>
          <td><cfoutput query="GetItem" startrow="#randrange(1,m)#" maxrows="1"><a href="2000entry.cfm?entryid=#entryid#"><img src="50images/#file_name#" border="0"></a></cfoutput></td>
        </tr>
        <tr>
          <td><cfoutput query="GetItem" startrow="#randrange(1,m)#" maxrows="1"><a href="2000entry.cfm?entryid=#entryid#"><img src="50images/#file_name#" border="0"></a></cfoutput></td>
          <td><cfoutput query="GetItem" startrow="#randrange(1,m)#" maxrows="1"><a href="2000entry.cfm?entryid=#entryid#"><img src="50images/#file_name#" border="0"></a></cfoutput></td>
          <td><cfoutput query="GetItem" startrow="#randrange(1,m)#" maxrows="1"><a href="2000entry.cfm?entryid=#entryid#"><img src="50images/#file_name#" border="0"></a></cfoutput></td>
          <td><cfoutput query="GetItem" startrow="#randrange(1,m)#" maxrows="1"><a href="2000entry.cfm?entryid=#entryid#"><img src="50images/#file_name#" border="0"></a></cfoutput></td>
          <td><cfoutput query="GetItem" startrow="#randrange(1,m)#" maxrows="1"><a href="2000entry.cfm?entryid=#entryid#"><img src="50images/#file_name#" border="0"></a></cfoutput></td>
        </tr>
        <tr>
          <td><cfoutput query="GetItem" startrow="#randrange(1,m)#" maxrows="1"><a href="2000entry.cfm?entryid=#entryid#"><img src="50images/#file_name#" border="0"></a></cfoutput></td>
          <td><cfoutput query="GetItem" startrow="#randrange(1,m)#" maxrows="1"><a href="2000entry.cfm?entryid=#entryid#"><img src="50images/#file_name#" border="0"></a></cfoutput></td>
          <td><cfoutput query="GetItem" startrow="#randrange(1,m)#" maxrows="1"><a href="2000entry.cfm?entryid=#entryid#"><img src="50images/#file_name#" border="0"></a></cfoutput></td>
          <td><cfoutput query="GetItem" startrow="#randrange(1,m)#" maxrows="1"><a href="2000entry.cfm?entryid=#entryid#"><img src="50images/#file_name#" border="0"></a></cfoutput></td>
          <td><cfoutput query="GetItem" startrow="#randrange(1,m)#" maxrows="1"><a href="2000entry.cfm?entryid=#entryid#"><img src="50images/#file_name#" border="0"></a></cfoutput></td>
        </tr>
        <tr>
          <td><cfoutput query="GetItem" startrow="#randrange(1,m)#" maxrows="1"><a href="2000entry.cfm?entryid=#entryid#"><img src="50images/#file_name#" border="0"></a></cfoutput></td>
          <td><cfoutput query="GetItem" startrow="#randrange(1,m)#" maxrows="1"><a href="2000entry.cfm?entryid=#entryid#"><img src="50images/#file_name#" border="0"></a></cfoutput></td>
          <td><cfoutput query="GetItem" startrow="#randrange(1,m)#" maxrows="1"><a href="2000entry.cfm?entryid=#entryid#"><img src="50images/#file_name#" border="0"></a></cfoutput></td>
          <td><cfoutput query="GetItem" startrow="#randrange(1,m)#" maxrows="1"><a href="2000entry.cfm?entryid=#entryid#"><img src="50images/#file_name#" border="0"></a></cfoutput></td>
          <td><cfoutput query="GetItem" startrow="#randrange(1,m)#" maxrows="1"><a href="2000entry.cfm?entryid=#entryid#"><img src="50images/#file_name#" border="0"></a></cfoutput></td>
        </tr>
        <tr>
          <td><cfoutput query="GetItem" startrow="#randrange(1,m)#" maxrows="1"><a href="2000entry.cfm?entryid=#entryid#"><img src="50images/#file_name#" border="0"></a></cfoutput></td>
          <td><cfoutput query="GetItem" startrow="#randrange(1,m)#" maxrows="1"><a href="2000entry.cfm?entryid=#entryid#"><img src="50images/#file_name#" border="0"></a></cfoutput></td>
          <td><cfoutput query="GetItem" startrow="#randrange(1,m)#" maxrows="1"><a href="2000entry.cfm?entryid=#entryid#"><img src="50images/#file_name#" border="0"></a></cfoutput></td>
          <td><cfoutput query="GetItem" startrow="#randrange(1,m)#" maxrows="1"><a href="2000entry.cfm?entryid=#entryid#"><img src="50images/#file_name#" border="0"></a></cfoutput></td>
          <td><cfoutput query="GetItem" startrow="#randrange(1,m)#" maxrows="1"><a href="2000entry.cfm?entryid=#entryid#"><img src="50images/#file_name#" border="0"></a></cfoutput></td>
        </tr>
		<tr>
		  <td colspan="5">
		  <p align="center"><br>
        <font face="Arial, Helvetica" size="-1"><a href="2000entry.cfm">click 
        image to enter show</a></font></p></td>
		</tr>
      </table>

    <!---</td>--->
	<table align="left"><tr>
    <td align=left valign=top width="196"> 
      <p><font face="Arial, Helvetica, Sans-Serif" size="-1" color="#ffffff">Works 
        by over 1700 visual artists are now on view at The Minneapolis Institute 
        of Arts in <i>The Foot in the Door Show 2000</i>. This extraordinary exhibition, 
        presented by the Minnesota Artists Exhibition Program (MAEP), invited 
        all Minnesota artists to participate in this exhibition at the museum 
        provided they restricted their work to one cubic foot of gallery space.<br>
        <br>
        This online exhibition allows visitors to learn more about the show and 
        its history, to browse through the amazingly diverse body of work, and 
        to search for specific works of art within the show.<br><br>
        Museum visitors can also use this site from within the MAEP gallery
         to find the physical location of works of art.</font></p></td>
  </tr>
</table>



</font></body></html>

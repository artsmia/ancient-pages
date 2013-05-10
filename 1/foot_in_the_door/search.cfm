<html>
<head>
<title>The Foot in the Door 2000 Exhibition - Search the Show</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body bgcolor="#333333" text="#ffffff" link="#FFFFFF" vlink="#FFFFFF" alink="#FFFFFF">
<font face="Arial, Helvetica, Times"> 

<table width="570" height="400" cellspacing="2" cellpadding="4" border="0" align="left">
  <tr> 
    <td width="118" height="30" align=center valign=middle><a href="http://www.artsmia.org"><img src="wimages/mia2w.gif" width="65" height="45" alt="vspace="0" hspace="0" border="0"></a></td>
    <td valign=middle colspan="2" height="30" align=center><div align="left"><img src="wimages/footin2.gif" align="left" alt="The Foot in the Door 2000"><br></div></td>
  </tr>
  <tr> 
    <td align=center valign=top width="118" bgcolor="#333333"> 
      <table cellspacing="1" cellpadding="2" width="118">
        <tr valign="middle" align="center"> 
          <td height="35"><a href="index.cfm"><img src="wimages/b_intro.gif" width="100" height="20" border="1" alt="back to Introduction"></a></td>
        </tr>
        <tr valign="middle" align="center"> 
          <td height="35"><a href="2000entry.cfm"><img src="wimages/b_show.gif" width="100" height="20" border="1" alt="The Show"></a></td>
        </tr>
        <tr valign="middle" align="center"> 
          <td height="35"><a href="postcard.cfm"><img src="wimages/b_ptcard.gif" width="100" height="20" border="0" alt="Send a Postcard"></a></td>
        </tr>
        <tr valign="middle" align="center"> 
          <td height="35"><img src="wimages/B_search3.gif" width="100" height="20" border="0" alt="Search"></td>
        </tr>
        <tr valign="middle" align="center"> 
          <td height="35"><a href="2000entry.cfm"><img src="wimages/b_rand2.gif" width="100" height="20" border="0" alt="Random"></a></td>
        </tr>
      </table>
      <table border="0" cellspacing="0" cellpadding="0" height="200">
        <tr align="center" valign="top" bgcolor="#333333"> 
         <td width="118"><a href="2000entry.cfm"><img src="wimages/footnav.gif" width="108" border="0" alt="Directional finder"></a></td>
        </tr>
      </table>
    </td>
    <td align=left valign=top width="446" colspan="2">
	<p><font face="Arial, Helvetica, Times" size="-1">Search the artists and artworks by entering a name or part of a title. 
	</font></p>
<cfif IsDefined("qstring")>
<cfoutput>
<form action="search.cfm" method="POST">
<input type="Text" name="qstring" size="20" value="#qstring#">&nbsp;<input type="Submit" value="Search">
</form></cfoutput>
<cfsearch name="tsearch" collection="foot" type="simple" criteria="#qstring#">
<cfif tsearch.recordCount is 0><font face="Arial, Helvetica, Times"><cfoutput>#qstring# not found.</cfoutput></cfif>
<ol>
<cfoutput query="tsearch">
<li><font face="Arial, Helvetica, Times" size="-1"><a href="2000entry.cfm?entryid=#tsearch.key#">
#custom1# #custom2#,
<i><cfif tsearch.title is "">No Title<cfelse>#tsearch.title#</cfif></i></a></font>
</cfoutput>
</ol>
<cfelse>
<form action="search.cfm" method="POST">
<input type="Text" name="qstring" size="20">&nbsp;<input type="Submit" value="Search">
</form>
</cfif></td>
  </tr>
</table>



</font></body></html>

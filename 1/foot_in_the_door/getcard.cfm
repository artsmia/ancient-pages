<html>
<head>
<title>The Foot in the Door 2000 Exhibition - Send a Postcard</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body bgcolor="#333333" text="#ffffff" link="#FFFFFF" vlink="#FFFFFF" alink="#FFFFFF">
<cfif IsDefined("pid") and IsDefined("to_address")>
<cfquery datasource="foot" dbtype="ODBC" name="GetItem" maxrows="1">
  SELECT * FROM foot, postcards
  WHERE foot.entryid LIKE CONVERT(varchar,postcards.id)
  AND postcards.pid = #pid#
  AND to_address LIKE '#to_address#'
</cfquery></cfif>
<font face="Arial, Helvetica, Times"> 

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
          <td height="35"><a href="2000entry.cfm"><img src="wimages/b_show.gif" width="100" height="20" border="1"></a></td>
        </tr>
        <tr valign="middle" align="center"> 
          <td height="35"><img src="wimages/b_ptcard3.gif" width="100" height="20" border="0"></td>
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
         <td width="118">		 <cfif GetItem.RecordCount is 0>
		 <a href="2000entry.cfm">
		 <img src="wimages/footnav.gif" width="108" border="0" alt="Directional finder"></a>
		 </cfif>
		 <cfoutput query="GetItem">
		 <cfif row is ""><a href="2000entry.cfm">
		 <img src="wimages/footnav.gif" width="108" border="0" alt="Directional finder"></a>
		 <cfelse>
		   <map name="nav">
		     <area shape="rect" coords="29,81,81,103" href="2000entry.cfm?r=#IncrementValue(row)#&c=#column#">
			 <area shape="rect" coords="82,26,107,78" href="2000entry.cfm?r=#row#&c=#IncrementValue(column)#">
			 <area shape="rect" coords="28,0,80,24" href="2000entry.cfm?r=#DecrementValue(row)#&c=#column#">
			 <area shape="rect" coords="0,26,27,77" href="2000entry.cfm?r=#row#&c=#DecrementValue(column)#">
		   </map>
		   <img src="wimages/footnav.gif" width="108" border="0" alt="Directional finder" usemap="##nav">
		 </cfif><br><br></cfoutput></td>
        </tr>
      </table>
    </td>
    <td align=center valign=top width="300">
	<cfif IsDefined("pid") and IsDefined("to_address")>
	<cfoutput query="GetItem">
	<cfif permission is "n"><cfelse>
	<cfif FileExists("D:\InetPub\artsmia\foot_in_the_door\300images\#file_name#")><img src="300images/#file_name#" width="300" height="300" border="0" alt="#title#"><cfelse><img src="images/#file_name#" width="320" border="0"></cfif></cfif><br>
      <font face="Arial, Helvetica" size="-1"><a href="2000entry.cfm">use directional finder at left or click on image to see the show</a></font></td>
    <td valign=top width="146"><font face="Arial, Helvetica, Sans-Serif" size="-1">#artist_first#&nbsp;#artist_last#</font><br>
    <font face="Arial, Helvetica, Sans-Serif" size="-1"><i>#title#</i></font>
	  <p><font face="Arial, Helvetica" size="-1">From:
	  #from_name#<br>
	  #from_address#<br>
	  To:#to_name#<br>
	  #to_address#<br>
	  <br>
	  #msg#</font>
	</cfoutput><br>
	<cfelse>
	<form action="getcard.cfm" method="POST">
	  <font face="Arial, Helvetica" size="-1">Trying to pickup a postcard?</font><p>
	  <font face="Arial, Helvetica" size="-1">Enter your postcard id number<br>
	  <input type="Text" name="pid" size="20"><br>
	  Enter your e-mail address<br>
	  <input type="Text" name="to_address" size="20"><br>
	  <input type="Submit" value="OK"></font></form>
	</cfif>
 </td>
  </tr>
</table>



</font></body></html>

<html>
<head>
<title>The Foot in the Door 2000 Exhibition - Send a Postcard</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body bgcolor="#333333" text="#ffffff" link="#FFFFFF" vlink="#FFFFFF" alink="#FFFFFF">
<cfinsert datasource="foot" tablename="postcards" dbtype="ODBC">
<cfquery name="GetInfo" datasource="foot" maxrows=1 dbtype="ODBC">
SELECT * FROM postcards, foot
WHERE postcards.to_name LIKE '#to_name#'
AND postcards.from_name LIKE '#from_name#'
AND CONVERT(varchar,postcards.id) LIKE foot.entryid
ORDER BY pid DESC
</cfquery>
<cfmail query="GetInfo" to="#to_address#" from="#from_address#" subject="A Postcard from #from_name#!" server="mail2.gofast.net">Dear #to_name#,

You've got a postcard from #from_name#.

Most users can get it by clicking below.

  http://www.artsmia.org/foot_in_the_door/getcard.cfm?pid=#pid#&to_address=#URLEncodedFormat(to_address)#

If that doesn't work go to...

  http://www.artsmia.org/foot_in_the_door/getcard.cfm
  
and enter your e-mail address and the postcard id number as #pid#

Questions or comments? Contact wlee@artsmia.org .
</cfmail>

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
         <td width="118">
		 		 <cfif GetInfo.RecordCount is 0>
		 <a href="2000entry.cfm">
		 <img src="wimages/footnav.gif" width="108" border="0" alt="Directional finder"></a>
		 </cfif>
		 <cfoutput query="GetInfo">
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
		 </cfif><br><br></cfoutput>
		 </td>
        </tr>
      </table>
    </td>
	<cfoutput query="GetInfo">
    <td align=center valign=top width="300">
	<font face="Arial, Helvetica"><b>Your card has been sent!</b></font><br>
	<cfif permission is "n"><cfelse>
	<cfif FileExists("D:\InetPub\artsmia\foot_in_the_door\300images\#file_name#")><img src="300images/#file_name#" width="300" height="300" border="0" alt="#title#"><cfelse><img src="images/#file_name#" width="320" border="0"></cfif></cfif><br>
      <font face="Arial, Helvetica" size="-1"><a href="2000entry.cfm">use directional finder at left or click on image to see the show</a></font></td>
    <td valign=top width="146"><font face="Arial, Helvetica, Sans-Serif" size="-1">#artist_first#&nbsp;#artist_last#</font><br>
    <font face="Arial, Helvetica, Sans-Serif" size="-1"><i>#title#</i></font>
	  <p><font face="Arial, Helvetica" size="-1">From:<br>
	  #from_name#<br>
	  #from_address#<br>
	  To:#to_name#<br>
	  #to_address#<br>
	  <br>
	  #msg#</font>
	</form>
 </td>
  </cfoutput></tr>
</table>



</font></body></html>

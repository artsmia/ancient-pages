<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<script>
<!--
function WL_openFPXWindow(theURL,winName,features) { //v1.0
  zwin = window.open(theURL,winName,features);
  zwin.focus();
}
//-->
</script>
</head>

<body bgcolor="#FFFFFF" text="#000000" link="#FF0000" vlink="#990000">
<cfif IsDefined("iid")>
  <cfquery name="GetItem" datasource="notebook" dbtype="ODBC">
    SELECT * FROM items
    WHERE iid = #iid#
  </cfquery>
<cfelse>
  <cfquery name="GetItem" datasource="notebook" dbtype="ODBC" maxrows="1">
    SELECT * FROM items
    WHERE sid = #sid#
	ORDER BY CONVERT(int, sort) ASC
  </cfquery>
</cfif>
<cfoutput query="GetItem">
<table width="450" border="0">
  <cfif img_src is not "">
   <tr> 
    <td colspan="2">
	<cfif fpx is not "">
	  <a href="##" onClick="WL_openFPXWindow('#fpx#','fpxzoom','menubar=yes,scrollbars=yes,resizable=yes,width=360,height=360')">
	  <img src="#img_src#" border="0"><img src="images/zoom.gif" width="42" height="21" border="0"></a>
	<cfelse>
	  <img src="#img_src#" border="0">
	</cfif>
	</td>
  </tr></cfif>
  <tr> 
    <td colspan="2">
	  <p>
	  #creator#<br>
      <b>#title#</b><br>
      #date#<br>
      #materials# 
	  </p>
	  <!--sort is #sort#-->
      <p>#notes#</p>
      <p>&nbsp;</p>
      </td>
      </tr>
        <tr>
	<td align="right" valign="top">
	  <cfif more_href is not "">
      <a href="#more_href#"><img src="images/find_out_more.gif" alt="Find out more about this item." border="0"></a></cfif>
	</td>
	<td align="left" valign="top"><cfif img_src is not "">
      <form action="/postcards/sendcard.cfm" method="post">
        <input type="hidden" name="artist" value="#creator#">
        <input type="hidden" name="site" value="http://www.artsmia.org/make_your_own_exhibit/show_item.cfm?iid=#iid#">
        <input type="hidden" name="img_src" value="#img_src#">
        <input type="hidden" name="more_href" value="#more_href#">
        <input type="hidden" name="label" value="#title#">
        <input type="image" src="images/send_postcard.gif" value="submit" alt="Send a postcard" border="0">
		</form></cfif>
	</td>
  </tr>
   <!---   <tr>
      <td colspan="2">
	  <hr>
      <form method="post" action="parse.cfm">
        <center>
          Search the database 
          <cfif IsDefined("string")>
            <input type="text" name="string" size="25" value="#string#">
          <cfelse>
            <input type="text" name="string" size="25">
          </cfif>
          <input type="submit" name="Submit" value="go">
        </center>
      </form>
      <p>&nbsp;</p>
    </td>
  </tr>--->
</table>
</cfoutput>
</body>
</html>

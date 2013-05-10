<cfif IsDefined("kiosk")><CFLOCATION url="foot_in_the_door/"></cfif>
<html>
<head>
<title>artsMIA: Welcome!</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body bgcolor="#000000" text="#FFFFFF" link="#FF0000" vlink="#FF0000">
<map name="menu">
  <area shape="rect" coords="435,0,474,22" href="membership/index.html" alt="Join">
  <area shape="rect" coords="373,0,424,22" href="museum_shop1.html" alt="Shop">
  <area shape="rect" coords="313,0,363,22" href="activities1.html" alt="Teach">
  <area shape="rect" coords="246,0,304,22" href="education1.html" alt="Learn">
  <area shape="rect" coords="191,0,234,22" href="general_info1.html" alt="Visit">
  <area shape="rect" coords="123,0,178,22" href="events1.html" alt="Events">
  <area shape="rect" coords="47,0,113,22" href="exhibits/index.html" alt="Exhibits">
  <area shape="rect" coords="9,0,41,22" href="permanent/index.html" target="_top" alt="Art">
</map>
<table width="500" border="0" cellpadding="0" cellspacing="0">
  <tr valign="top"> 
    <td><img src="GIF/cfindex/logo_an.gif" width="144" height="77"><br>
      <cfoutput>
      <cfset r1 = RandRange(2,7)>
	   <img src="GIF/cfindex/1_0#r1#.jpg" width="144" height="89" border="0"><br>
      <a href="/foot_in_the_door/" target="_top">
	  <img src="GIF/cfindex/foot1.gif" width=144 height=89 alt="" border="0"></a><!---
	   <img src="GIF/cfindex/2_0#RandRange(1,6)#.jpg" width="144" height="85">--->
	  </cfoutput></td>
    <td>
	  <a href="exhibits/sw_frame.html" target="_top">
	    <img src="GIF/cfindex/sw_center.gif" width="270" height="251" border="0">
	  </a>
	</td>
    <td>
	<a href="postcards/index.html">
	  <img src="GIF/cfindex/elecpost.jpg" width="99" height="53" border="0"><br>
	</a>
      <cfoutput>
	    <a href="/exhibits/sw_frame.html" target="_top">
	    <img src="GIF/cfindex/3_0#RandRange(1,9)#.jpg" width="99" height="198"border="0"></a> </td>
      </cfoutput>
  </tr>
  <tr align="center"> 
    <td colspan="3"><img src="GIF/cfindex/menu.gif" width="483" height="23" border="0" usemap="#menu"></td>
  </tr>
</table>
</body>
</html>

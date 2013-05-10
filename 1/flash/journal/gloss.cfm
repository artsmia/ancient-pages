<cfset prev = "00.cfm">
<cfset next = "glossb.cfm">
<cfif cgi.user_agent contains "win">
  <cfset size = "-3">
<cfelse>
  <cfset size = "-1">
</cfif>
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>
<body bgcolor="#FFCC99" text="#000000" link="#660000" vlink="#003366" alink="#330000">
<table border="0" cellspacing="0" cellpadding="0" height="267" vspace="0" hspace="0">
  <tr> 
    <td><img src="../jCornTL.gif" width="20" height="29" vspace="0" hspace="0" border="0"></td>
    <td><a href="00.cfm">
	  <img src="../jLToday.gif" width="163" height="29" vspace="0" hspace="0" border="0"></a></td>
    <td><img src="../jTspir.gif" width="25" height="29" vspace="0" hspace="0" border="0"></td>
    <td><img src="../jTopL.gif" width="163" height="29" vspace="0" hspace="0" border="0"></td>
    <td><img src="../jCornTR.gif" width="20" height="29" vspace="0" hspace="0" border="0"></td>
  </tr>
  <tr> 
    <td align="left" valign="top"><a href="intro.cfm"><img src="../jLintro.gif" width="20" height="70" vspace="0" hspace="0" border="0"></a></td>
    <td align="left" valign="top" rowspan="3" background="../jPaper.gif"> 
      <cfoutput>
      <p align="center"><font face="Arial, Verdana, Helvetica, sans-serif" size="#size#">
	  Glossary </font></p>
      </cfoutput></td>
    <td align="left" valign="top" rowspan="3"> <img src="../jMspir.gif" width="25" height="210" vspace="0" hspace="0" border="0"></td>
    <td align="left" valign="top" rowspan="3" background="../jPaper.gif"> 
      <p align="center">&nbsp;</p>
      </td>
    <td><img src="../jRNointro.gif" width="20" height="70" vspace="0" hspace="0" border="0"></td>
  </tr>
  <tr> 
    <td align="left" valign="top"><a href="01a.cfm"><img src="../jLproj.gif" width="20" height="70" vspace="0" hspace="0" border="0"></a></td>
    <td><img src="../jRNoproj.gif" width="20" height="70" vspace="0" hspace="0" border="0"></td>
  </tr>
  <tr> 
    <td align="left" valign="top"><a href="gloss.cfm"><img src="../jLgloss.gif" width="20" height="70" vspace="0" hspace="0" border="0"></a></td>
    <td>
	  <img src="../jRNogloss.gif" width="20" height="70" vspace="0" hspace="0" border="0"></td>
  </tr>
  <tr> 
  <cfoutput>
    <td><img src="../jCornLL.gif" width="20" height="28" vspace="0" hspace="0" border="0"></td>
    <td><cfif FileExists(ExpandPath(prev))>
	  <a href="#prev#"><img src="../jLarrw.gif" width="163" height="28" vspace="0" hspace="0" border="0"></a><cfelse><img src="../jNoarrw.gif" width="163" height="28" vspace="0" hspace="0" border="0"></cfif></td>
    <td><img src="../jLsprir.gif" width="25" height="28" vspace="0" hspace="0" border="0"></td>
    <td><cfif FileExists(ExpandPath(next))>
	  <a href="#next#"><img src="../jRarrw.gif" width="163" height="28" vspace="0" hspace="0" border="0"></a><cfelse><img src="../jNoarrw.gif" width="163" height="28" vspace="0" hspace="0" border="0"></cfif></td>
    <td><img src="../jCornRL.gif" width="20" height="28" vspace="0" hspace="0" border="0"></td>
  </cfoutput>
  </tr>
</table>
</body>
</html>

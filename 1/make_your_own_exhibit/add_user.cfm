<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>
<head>
	<title>artsMIA: Notebook</title>
</head>
<!--- Check to see if username is in use. --->
<cfquery name="CheckUser" datasource="notebook" dbtype="ODBC">
SELECT * FROM users
WHERE email LIKE '#email#'
</cfquery>

<cfif #CheckUser.RecordCount# is 0>
<cfinsert datasource="notebook" tablename="users" dbtype="ODBC">
<cfmail to="#email#" from="wlee@artsMIA.org" subject="Make Your Own Exhibit!">
Thanks for signing up for our Make Your Own Exhibit site.

All you need to get back in to the site is your e-mail address and password.

We have your e-mail address recorded as #email# and your password as #password#.

If you have any questions or comments about this site, please let us know.

Thanks again,
WL

Willy Lee
Webmaster
The Minneapolis Insitute of Arts
wlee@artsMIA.org
http://www.artsMIA.org
</cfmail>
<cfquery name="GetUid" datasource="notebook" maxrows=1 dbtype="ODBC">
  SELECT * FROM users
  WHERE email LIKE '#email#'
  AND password LIKE '#password#'
</cfquery>
<cfquery name="GetBrand" datasource="notebook" dbtype="ODBC">
SELECT * FROM b2
WHERE name LIKE '#brand#'
</cfquery>
<cfoutput query="GetBrand">
<frameset rows="58,1*" border="0" framespacing="0"> 
  <frame name="myx_header" scrolling="NO" noresize frameborder="NO" src="#header_url#">
  <frameset cols="123,1*" border="0" framespacing="0" frameborder="NO"> 
</cfoutput>
<cfoutput query="GetUid">
<cfcookie name="uid" value="#uid#" expires="2">
   <frame src="set_list.cfm?uid=#uid#" scrolling="AUTO" name="myx_menu" frameborder="NO">
</cfoutput>
<cfoutput query="GetBrand">
    <frame src="#intro_url#" name="myx_main" frameborder="NO">
  </frameset>
</frameset>
</cfoutput>
<noframes><body bgcolor="#FFFFFF">
<p>Sorry, we haven't made a version that works without frames.</p>

<p>Please let us know it matters to you.</p>

<p>Send mail to <a href="mailto:wlee@artsMIA.org">wlee@artsMIA.org</a>.
</body></noframes>

<cfelse>
<p>Sorry, there's already someone signed up using that email account.</p>

<p>You can go back and sign up again using a different account</p>

<p>Many companies offer free accounts availiable through the World Wide Web, 
including <a href="http://www.yahoo.com">Yahoo</a>, 
<a href="http://webmail.netscape.com">Netscape</a>, and 
<a href="http://www.altavista.com/email">AltaVista</a>.</p>

</cfif>
</body>
</html>

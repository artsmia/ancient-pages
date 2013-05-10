<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>
<head>
	<title>Login Failed :(</title>
<cfquery name="UserExists" datasource="notebook" maxrows="1" dbtype="ODBC">
SELECT * FROM users
WHERE email LIKE '#email#'
ORDER BY uid ASC
</cfquery>
</head>

<body>
  <cfoutput query="UserExists">
    <p>Whoops, you've mistyped your password.</p>
    
    <p><a href="password.cfm?uid=#uid#">Click here and we will e-mail it to you.</a></p>
	
	<p><a href="#CGI.HTTP_REFERER#">Try logging in again.</a>
  </cfoutput>


</body>
</html>

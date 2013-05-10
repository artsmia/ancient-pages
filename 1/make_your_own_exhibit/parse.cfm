<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>
<head>
	<title>Building your query</title>

<cfquery name="GetBrand" datasource="notebook" dbtype="ODBC">
SELECT * FROM b2
WHERE name LIKE '#brand#'
</cfquery>
	
	<cfif string is "">
	<cfelse>
	<cfoutput query="GetBrand"><meta http-equiv=refresh content="0;url=/uia-bin/uia_query.cgi/#trim(uiacnf)#/noframes/page_len/10?string=#URLEncodedFormat(string)#&query=#URLEncodedFormat("##FILREQ( ##SUM(##FIELD(ONLINE##=yes) ##OR(" & string & ")) ##OR(" &string&"))")#"></cfoutput>
	<cfcookie name="string" value="#string#">
	</cfif>
</head>

<body>
<cfif string is "">
<p>Whoops, you didn't enter anything.</p>

      <form method="post" action="parse.cfm">
        <center>
          Search the database 
          <input type="text" name="string" size="25">
          <input type="submit" name="Submit" value="go">
        </center>
      </form>
</cfif>
</body>
</html>

<!doctype html public "-//W3C//DTD HTML 3.2 Final//EN">
<html>
<head>

<title>Untitled</title>


</head>
<body>
<cfquery name="face" datasource="notebook" dbtype="ODBC">
  SELECT more_href FROM items
  WHERE sid = 60
  ORDER BY SORT ASC
</cfquery>
<cfoutput query="face">
#more_href#<br>
</cfoutput>
</body>
</html>

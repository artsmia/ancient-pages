<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>
<head>
	<title>Make Your Own Make Your Own Exhibit...</title>
</head>

<body>
<h1>Make Your Own Make Your Own Exhibit...</h1>

<p>To make your own version...

<ol>
  <li>Make page for the header.
  <li>Make a login page.
    <ul>
	  <li>This needs to include a form that whose
	      action is "/make_your_own_exhibit/login.cfm".
	  <li>There needs to be a hidden field called brand.
	</ul>
  <li><a href="add_brand.cfm">Fill out this form</a>
</ol>

<p>More stuff to come later.</p>

<h3>Edit a version</h3>

<cfquery name="GetBrands" datasource="notebook" dbtype="ODBC">
SELECT bid, name FROM b2
</cfquery>
<ol>
<cfoutput query="GetBrands">
  <li><a href="edit_brand.cfm?bid=#bid#">#name#</a>
</cfoutput>
</ol>
</body>
</html>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>
<head>
	<title>Make Your Own Exhibit: Brand maker</title>
</head>

<body>
<cfquery name="GetFields" datasource="notebook" dbtype="ODBC">
SELECT * FROM b2
WHERE bid = #bid#
</cfquery>

<cfoutput>
<h1>Brand maker</h1>
<p>I know it's ugly...</p>
<pre>
<form action="update_brand.cfm" method="post">
name:          <input type="Text" name="name" size="35">
This value is never displayed. It's just used to identify the brand.

headerURL:     <input type="Text" name="header_URL" size="35">
This is a full absolute URL to an HTML page that draws the top frame.

footerURL:     <input type="Text" name="footer_URL" size="35">
This is a full absolute URL to a CFM page that contains any footer
info you would like to include.

bgcolor2:       <input type="Text" name="bgcolor2" size="15">
hex value of preferred background for the left frame.

textcolor2:     <input type="Text" name="textcolor2" size="15">
hex value of preferred textcolor for the left frame.

linkcolor2:     <input type="Text" name="linkcolor2" size="15">
hex value of preferred link color of left frame.

vlinkcolor2:    <input type="Text" name="vlinkcolor2" size="15">
hex value of preferred followed link of left frame.

bgcolor:       <input type="Text" name="bgcolor" size="15">
hex value of preferred background for the right frame.

textcolor:     <input type="Text" name="textcolor" size="15">
hex value of preferred textcolor for the right frame.

linkcolor:     <input type="Text" name="linkcolor" size="15">
hex value of preferred link color of right frame.

vlinkcolor:    <input type="Text" name="vlinkcolor" size="15">
hex value of preferred followed link of right frame.

intro:         <input type="Text" name="intro_url" size="35">
Full absolute URL to the first page that appears in the right.

linktext:      <input type="Text" name="linktext" size="35">
text of the link that returns you to the intro page.

search append: <input type="Text" name="search_append" size="35">
experimental. may not work. A complicated Inquery string that you want
appended to the search. If you do not understand
   ##FILREQ(##3(chinese textile) ##NOT(cotton))
ask for help with this line.

uiacnf:        <input type="Text" name="uiacnf" size="15">
cnf file for template you wish to use for the searches.

<input type="Submit">
</form>
</pre>
</cfoutput>

</body>
</html>

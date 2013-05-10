<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>
<head>
	<title>artsMIA: Notebook</title>
</head>

<body bgcolor="#FFFFFF">
<font face="Arial, Helvetica, sans_serif" color="#3333FF"><b><i>Are you sure you want to delete this item?</i></b></font>
<cfquery name="GetItem" datasource="notebook" maxrows=1 dbtype="ODBC">
SELECT * FROM items
WHERE iid = #iid#
</cfquery>

<cfoutput query="GetItem">
<h2><a href="delete_entry.cfm?iid=#iid#" target="_top">Yes!</a> | <a href="show_item.cfm?iid=#iid#">No</a></h2>
<cfif img_src is not ""><img src=#img_src#><br></cfif>
<p><b>#title#</b></p>
<p>#ParagraphFormat(notes)#</p>
<a href="#more_href#">Get more info about this item.</a>
</cfoutput>

<cfoutput>

      <form method="post" action="/make_your_own_exhibit/parse.cfm" name="parse" target="myx_main">
       Search
        <br>
        <input type="text" name="string" size="15" value="#cookie.string#">
        <br>
        <input type="Submit" name="submit" value="Search!">
        <br>
      </form>
</cfoutput>
</form>
</body>
</html>

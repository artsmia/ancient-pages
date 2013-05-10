<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<cfif IsDefined("PR_Title")>
  <cfquery datasource="mia_web_db">
    UPDATE PressReleases
    SET PR_Title = '#PR_Title#' , PR_Text = '#PR_Text#',
	PR_Date = '#PR_Date#'
    WHERE PR_ID = #PR_ID#
  </cfquery>
  <cflocation url="index.cfm">
</cfif>
<cfquery datasource="mia_web_db" name="GetPressRelease" maxrows="1">
  SELECT * FROM PressReleases
  WHERE PR_ID = #PR_ID#
</cfquery>
<html>
<head>
	<title>artsmia: Press Releases: Edit Press Release</title>
</head>

<body>
<h2>Edit Press Release</h2>
<cfoutput query="GetPressRelease">
<form action="edit.cfm" method="post">
<input type="hidden" name="PR_ID" value="#PR_ID#">
  <table>
    <tr>
      <td valign="top">
        Title
      </td>
      <td valign="top">
        <input type="Text" name="PR_Title" value="#PR_Title#" size="30">
      </td>
    </tr>
        <tr>
      <td valign="top">
        <p>Date Posted</p>

      </td>
      <td valign="top">
          <input type="Text" name="PR_Date" size="30" value="#DateFormat(PR_Date, "MMMM DD, YYYY")#">
      </td>
    </tr>
    <tr>
      <td valign="top">
        Text        
        <ul>
          <li>Enter as much text as you like here.</li>
          <li>Use two returns between paragraphs.</li>
          <li>Use &lt;b&gt;<b>to make bold text</b>&lt;/b&gt;.</li>
          <li>Use &lt;i&gt;<i>to make italic text</i>&lt;/i&gt;.</li>
          <li>Don't worry, you can edit this text later.</li>
        </ul>
      </td>
      <td valign="top">
        <textarea name="PR_Text" cols="27" rows="30" wrap="VIRTUAL">#PR_Text#
        </textarea>
      </td>
    </tr>
    <tr>
      <td>
        &nbsp;
      </td>
      <td>
        <input type="Submit" value="Change this Press Release.">
        
        <p><a href="index.cfm">Click here to go back to your administration page.</a></p>
      </td>
    </tr>
  </table>
</form>
</cfoutput>
</body>
</html>

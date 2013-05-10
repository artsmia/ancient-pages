<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<cfif IsDefined("PR_Title")>
  <cfquery datasource="mia_web_db">
    INSERT INTO PressReleases(PR_Title, PR_Date, PR_Text)
    VALUES('#PR_Title#', '#PR_Date#', '#PR_Text#')
  </cfquery>
  <cflocation url="index.cfm">
</cfif>
<html>
<head>
	<title>artsmia: Press Releases</title>
</head>

<body>
<h2>New Press Release</h2>

<form action="new.cfm" method="post">
  <table>
    <tr>
      <td valign="top">
        Title
      </td>
      <td valign="top">
        <input type="Text" name="PR_Title" size="30">
      </td>
    </tr>
    <tr>
      <td valign="top">
        <p>Date Posted</p>

      </td>
      <td valign="top">
        <cfoutput>
          <input type="Text" name="PR_Date" size="30" value="#DateFormat(now(), "MMMM DD, YYYY")#">
        </cfoutput>
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
        <textarea name="PR_Text" cols="27" rows="30" wrap="VIRTUAL"></textarea>
      </td>
    </tr>
    <tr>
      <td>
        &nbsp;
      </td>
      <td>
        <input type="Submit" value="Add this Press Release.">
        
        <p><a href="index.cfm">Click here to go back to your administration page.</a></p>
      </td>
    </tr>
  </table>
</form>

</body>
</html>

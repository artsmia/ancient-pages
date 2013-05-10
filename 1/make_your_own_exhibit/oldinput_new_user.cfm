<html>
<head>
<title>artsMIA: Make Your Own Exhibit</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body bgcolor="#FFFFFF" text="#000000" link="#CC0000" vlink="#990000">
<table width="450" border="0" cellpadding="4">
<cfif IsDefined("email")>
  <tr>
    <td>
	<font face="Arial, Helvetica, sans-serif" color="#3333FF"><b><i>
	 There is no registered user with that e-mail
	 address. Please use this form to sign up!
	 </i></b></font>
    </td>
  </tr>
</cfif>
  <tr valign="top"> 
    <td bgcolor="#CCCCCC"> 
      <p>&nbsp;</p>
      <form method="post" action="add_user.cfm" target="_top">
        <p>Your Name:<br>
          <input type="text" name="name" size="30">
        </p>
        <p>Your e-mail address:<br>
		  <cfif IsDefined("email")>
		    <cfoutput>
              <input type="text" name="email" size="30" value="#email#">
		    </cfoutput>
		  <cfelse>
		    <input type="text" name="email" size="30">
		  </cfif>
        </p>
        <p>Choose a password:<br>
          <input type="password" name="password" size="30">
        </p>
        <p>Would you like to receive periodic information from The Minneapolis 
          Institute of Arts by e&#150;mail?</p>
        <p> 
          <input type="radio" name="permission" value="yes" checked>
          Yes please.&nbsp;&nbsp;&nbsp;&nbsp; 
          <input type="radio" name="permission" value="no">
          No thanks.</p>
        <p> 
          <input type="submit" value="Sign up!">
        </p>
      </form>
      <p>&nbsp;</p>
    </td>
  </tr>
</table>
</body>
</html>

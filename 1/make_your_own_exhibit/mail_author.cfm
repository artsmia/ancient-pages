<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>
<head>
	<title>Send Mail</title>
</head>

<body bgcolor="#FFFFFF" text="#000000" link="#FF0000" vlink="#990000">
<p>
You can send an e-mail message to the creator of this exhibit!</p>

<p>
Just fill in the form below.</p>
<cfoutput>
<form action="mail_author_sent.cfm" method="post">
<input type="hidden" name="sid" value="#sid#">
Enter your e-mail address:<br>
<input type="text" name="from" size="30"><br>
Enter a subject line:<br>
<input type="text" name="subject" size="30"><br>
Enter your message:<br>
<textarea name="message" cols="30" rows="12" wrap="VIRTUAL"></textarea><br>
<input type="submit" value="Send">
</cfoutput>
</form>
</body>
</html>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN"><html><head>	<title>artsMIA: Postcards: Sending card.</title>	<cfoutput><meta http-equiv=refresh content="1;url=#site#"></cfoutput></head><body bgcolor="#FFFFFF" text="#000000" vlink="#CC0000" link="#660000"><cfquery name="GetInfo" datasource="postcards" maxrows=1 dbtype="ODBC">dbcc checkident("postcards")</cfquery><cfinsert datasource="postcards" tablename="postcards" dbtype="ODBC"><cfquery name="GetInfo" datasource="postcards" maxrows=1 dbtype="ODBC">SELECT * FROM postcardsWHERE to_name LIKE '#to_name#'ORDER BY pid desc</cfquery><cfmail query="GetInfo" to="#to_address#" from="postcards@artsmia.org" subject="A Postcard from #from_name#!" server="mail2.gofast.net">Dear #to_name#,You've got a postcard from #from_name# #from_address#.Most users can get it by clicking below.  http://www.artsmia.org/postcards/getcard.cfm?pid=#pid#&to_address=#URLEncodedFormat(to_address)#If that doesn't work go to...  http://www.artsmia.org/postcards/getcard.cfm  and enter your e-mail address and the postcard id number as #pid#Do not reply to this message. It was sent from an unattended mailbox.Questions or comments? Contact wlee@artsmia.org .</cfmail><h2>Thanks!</h2><p>Your card is being sent.</p></body></html>
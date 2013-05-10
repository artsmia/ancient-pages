<cfif IsDefined("kiosk")>  <cfif kiosk is "japan">    <cflocation url="/arts-of-asia/">    <cfelseif kiosk is "larsen">      <cflocation url="/larsen/">    <cfelse>      <cflocation url="/modernism/">  </cfif></cfif><!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN"><cfquery datasource="mia_web_db" name="GetEx">  SELECT * FROM IM_Relate, Images, Events  WHERE IM_Relate.IM_ID = Images.IM_ID  AND IM_Relate.EV_ID = Events.EV_ID  AND Events.EV_End_DateTime >= #Now()#  AND Events.EV_Type LIKE 'Exhibitions'  AND Events.Weight >= 20  ORDER BY Weight DESC, Events.EV_End_DateTime ASC</cfquery><!--- <cfquery datasource="mia_web_db" name="GetEvents">  SELECT DISTINCT EV_Title, EV_End_DateTime, EV_Start_DateTime,  EV_Type, Events.Weight, IM_URL, IM_Alt  FROM Events, Images, IM_Relate  WHERE Events.EV_ID = IM_Relate.EV_ID  AND IM_Relate.IM_ID = Images.IM_ID  AND Events.EV_ID IN  (SELECT Events.EV_ID FROM Events  WHERE Events.Weight >= 15  AND Events.EV_Type NOT LIKE 'Exhibitions')  ORDER BY Events.Weight DESC, Events.EV_End_DateTime ASC</cfquery> ---><cfquery datasource="mia_web_db" name="GetEvents">  SELECT * FROM Events  WHERE Events.Weight >= 15  AND Events.EV_Type NOT LIKE 'Exhibitions'  AND Events.EV_End_DateTime >= #Now()#  ORDER BY Weight DESC, Events.EV_End_DateTime ASC</cfquery><html><head><title>The Minneapolis Institute of Arts</title><meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"><meta name="description" content="Comprehensive online resources and visitor information from the upper-Midwest's premiere art museum, The Institute's permanent collections span 4000 years of art, culture, and history, including outstanding works in seven curatorial areas: African, Oceania, and The Americas; Asian Art; Decorative Arts and Sculpture; Paintings; Photography; Prints and Drawings; and Textiles. The Institute offers more than twenty changing exhibitions each year. General admission to the museum is always free of charge."><meta name="keywords" content="The Minneapolis Institute of Arts,Minneapolis, Minnesota, gateway, educators, teachers, art museum, gallery, art collection, art research, art education,library, archives, learning, classroom activities, playground,search, artwork, art images, audio, video, educationalmaterials, lesson plans, curriculum, thematic units, activities, tours, K-12,Minnesota profile of learning, graduation standards, text, bibliographies,multicultural, interdisciplinary, modern art, contemporary art, American art,European art, African art, Chinese art, twentieth-century art, painting,sculpture, drawing, prints, artists book, photography, visual arts, performingarts, film, online art, artsconnected"><script language="JavaScript"><!--function MM_swapImgRestore() { //v3.0  var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;}function MM_preloadImages() { //v3.0  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}}function MM_findObj(n, d) { //v3.0  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document); return x;}function MM_swapImage() { //v3.0  var i,j=0,x,a=MM_swapImage.arguments; document.MM_sr=new Array; for(i=0;i<(a.length-2);i+=3)   if ((x=MM_findObj(a[i]))!=null){document.MM_sr[j++]=x; if(!x.oSrc) x.oSrc=x.src; x.src=a[i+2];}}//--></script></head><body bgcolor="#333366" leftmargin="0" rightmargin="0" topmargin="0" bottommargin="0" marginwidth="0" marginheight="0" onLoad="MM_preloadImages('images/circle-on.gif','images/circle2-on.gif')" text="#FFFFFF" link="#9999FF" vlink="#6666FF"> <table border="0" cellpadding="0" cellspacing="0" width="100%" align="center">   <tr> <!-- Shim row, height 1. -->     <td><img src="frontpage/images/shim.gif" width="1" height="1" border="0"></td>    <td><img src="frontpage/images/shim.gif" width="68" height="1" border="0"></td>    <td><img src="frontpage/images/shim.gif" width="9" height="1" border="0"></td>    <td><img src="frontpage/images/shim.gif" width="207" height="1" border="0"></td>    <td><img src="frontpage/images/shim.gif" width="9" height="1" border="0"></td>    <td><img src="frontpage/images/shim.gif" width="6" height="1" border="0"></td>    <td><img src="frontpage/images/shim.gif" width="155" height="1" border="0"></td>    <td><img src="frontpage/images/shim.gif" width="59" height="1" border="0"></td>    <td><img src="frontpage/images/shim.gif" width="12" height="1" border="0"></td>    <td><img src="frontpage/images/shim.gif" width="96" height="1" border="0"></td>    <td><img src="frontpage/images/shim.gif" width="1" height="1" border="0"></td>  </tr>  <tr valign="top"><!-- row 1 -->     <td colspan="5" bgcolor="#000033" align="right" valign="bottom"><img name="a_r1_c01" src="frontpage/images/logo.gif" width="281" height="192" border="0" alt="The Minneapolis Institute of Arts"></td>    <td rowspan="2" bgcolor="#333366" valign="bottom" align="left"><img src="frontpage/images/newbox.gif" width="12" height="51" alt="" border="0"></td>    <td rowspan="3" bgcolor="#333366" valign="bottom" align="left"><img src="frontpage/images/r1_c2.gif" width="158" height="11"><br>      <a href="collection/" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('coll-dot','','frontpage/images/circle-on.gif',1)"><img src="frontpage/images/circle-off.gif" width="17" height="25" name="coll-dot" border="0"><img src="frontpage/images/the-collection.gif" width="141" height="25" name="collection" border="0" alt="The Collection"></a><br>      <a href="exhibitions/" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('exh-dot','','frontpage/images/circle-on.gif',1)"><img src="frontpage/images/circle-off.gif" width="17" height="25" name="exh-dot" border="0"><img src="frontpage/images/exhibitions.gif" width="141" height="25" name="exhibitions" border="0" alt="Exhibitions"></a><br>      <a href="visit/" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('vis-dot','','frontpage/images/circle-on.gif',1)"><img src="frontpage/images/circle-off.gif" width="17" height="25" name="vis-dot" border="0"><img src="frontpage/images/visit.gif" width="141" height="25" name="visit" border="0" alt="Visit"></a><br>      <a href="events/" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('eve-dot','','frontpage/images/circle-on.gif',1)"><img src="frontpage/images/circle-off.gif" width="17" height="25" name="eve-dot" border="0"><img src="frontpage/images/events.gif" width="141" height="25" name="events" border="0" alt="Events"></a><br>      <a href="education/" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('edu-dot','','frontpage/images/circle-on.gif',1)"><img src="frontpage/images/circle-off.gif" width="17" height="25" name="edu-dot" border="0"><img src="frontpage/images/education.gif" width="141" height="25" name="education" border="0" alt="Education"></a><br>      <a href="join/" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('joi-dot','','frontpage/images/circle-on.gif',1)"><img src="frontpage/images/circle-off.gif" width="17" height="25" name="joi-dot" border="0"><img src="frontpage/images/join.gif" width="141" height="25" name="join" border="0" alt="Join"></a><br>      <a href="shop/" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('sho-dot','','frontpage/images/circle-on.gif',1)"><img src="frontpage/images/circle-off.gif" width="17" height="25" name="sho-dot" border="0"><img src="frontpage/images/shop.gif" width="141" height="25" name="shop" border="0" alt="Shop"></a><br>	  <a href="general-info/" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('gen-dot','','frontpage/images/circle-on.gif',1)"><img src="frontpage/images/circle-off.gif" width="17" height="25" name="gen-dot" border="0"><img src="frontpage/images/general-info.gif" width="141" height="25" name="General Info." border="0" alt="General Info."></a><br>      <a href="postcards/" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('pos-dot','','frontpage/images/circle-on.gif',1)"><img src="frontpage/images/circle-off.gif" width="17" height="25" name="pos-dot" border="0"><img src="frontpage/images/e-postcards.gif" width="141" height="25" name="postcards" border="0" alt="E-Postcards"></a><br>      <a href="interactive-media/" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('kid-dot','','frontpage/images/circle-on.gif',1)"><img src="frontpage/images/circle-off.gif" width="17" height="25" name="kid-dot" border="0"><img src="frontpage/images/interactive-media.gif" width="141" height="25" name="interactive-media" border="0" alt="Interactive Media"></a><br>      <a href="aboutace.html" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('art-dot','','frontpage/images/circle-on.gif',1)"><img src="frontpage/images/circle-off.gif" width="17" height="25" name="art-dot" border="0"><img src="frontpage/images/artsconnected.gif" width="141" height="25" name="artsconnected" border="0" alt="ArtsConnectEd"></a><br>      <!--- <img src="frontpage/images/circle-off.gif" width="17" height="25" name="con-dot"><a href="comments/frame.html" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('con-dot','','frontpage/images/circle-on.gif',1)"><img src="frontpage/images/contact.gif" width="141" height="25" name="contact" border="0"></a><br> --->      <img src="frontpage/images/r2_c2.gif"></td>    <td colspan="3" rowspan="2" align="left" valign="bottom"><cfoutput><img name="a_r2_c08" src="frontpage/images/artwork#RandRange(1,10)#.jpg" border="0"></cfoutput></td>    <td width="1%" rowspan="2"><img src="frontpage/images/shim.gif" width="1" height="1" border="0"></td>  </tr>  <tr valign="top"><!-- row 3 -->     <td colspan="5" bgcolor="#333333" align="right"><img name="a_r3_c01" src="frontpage/images/featured-exhib.gif" width="281" border="0"></td>  </tr>  <tr valign="top"><!-- row 5 -->     <td rowspan="3" bgcolor="#333333" width="5%"><img src="frontpage/images/shim.gif" width="1" height="1" border="0"></td>    <td rowspan="3" bgcolor="#333333" align="right" width="10%"><img name="a_r5_c02" src="frontpage/images/scroll1.gif" width="28" height="106" border="0"></td>    <td rowspan="3" bgcolor="#333333" width="1%"><img src="frontpage/images/shim.gif" width="1" height="1" border="0"></td>    <td rowspan="3" bgcolor="#333333" align="center">       <cfoutput query="GetEx">        <cfif im_url does not contain "no_picture">          <a href="/exhibitions/details.cfm?ev_id=#EV_ID#"><img src="#im_url#" alt="#IM_alt#" vspace="10" hspace="10" border="0"></a><br>        </cfif>        <p align="left"><a href="/exhibitions/details.cfm?ev_id=#EV_ID#"><font color="##FFFFFF"><b>#TRIM(EV_title)#</b></font></a><br>          <cfif EV_Start_DateTime lt now()>Now<cfelse>#DateFormat(EV_Start_DateTime, "Mmmm d")#</cfif> through #DateFormat(EV_End_DateTime, "Mmmm d, yyyy")#<br>          #EV_location#        </p>              </cfoutput>      <p align="left"><a href="/exhibitions/">more exhibitions</a></p>      <p>&nbsp;</p>    </td>    <td rowspan="3" bgcolor="#333333" align="right"><img src="frontpage/images/shim.gif" width="1" height="1" border="0"></td>    <td bgcolor="#333366" valign="bottom" align="left"><img src="frontpage/images/r1_c1.gif"></td>    <td colspan="3" valign="bottom">	  <form action="search/index.cfm" method="post">	  &nbsp;<br>	    <img src="frontpage/images/search.gif" width="52" height="19" alt="Search" border="0"><input type="text" size="10" name="term"><input type="image" src="frontpage/images/go-button.gif" width="20" height="20" alt="go" border="0"><br>		<a href="contact-us/" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('con-dot','','frontpage/images/circle-on.gif',1)"><img src="frontpage/images/circle-off.gif" width="17" height="25" border="0" name="con-dot"><img src="frontpage/images/contact-us.gif" width="105" height="18" alt="Contact Us" border="0"></a>		<br>&nbsp;</form>	</td>    <td><img src="frontpage/images/shim.gif" width="1" height="78" border="0"></td>  </tr>  <tr valign="top"><!-- row 6 -->     <td colspan="4" bgcolor="#CCCC99" valign="top" align="left"><img src="frontpage/images/news-info.gif" width="233" height="30"><br>      <img src="frontpage/images/r3_c1.gif" width="107" height="15"><img src="frontpage/images/circle2-off.gif" width="10" height="15" name="eve-dot2"><a href="/events/" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('eve-dot2','','frontpage/images/circle2-on.gif',1)"><img src="frontpage/images/eventcal.gif" width="92" height="15" name="eventscal" border="0"></a><br>      <img src="frontpage/images/r3_c2.gif" width="107" height="15"><img src="frontpage/images/circle2-off.gif" width="10" height="15" name="pre-dot"><a href="/press/" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('pre-dot','','frontpage/images/circle2-on.gif',1)"><img src="frontpage/images/press.gif" width="86" height="15" name="press" border="0"></a></td>    <td rowspan="2" bgcolor="#CCCC99" width="14%"><img src="frontpage/images/shim.gif" width="1" height="66" border="0"><!--- <img name="a_r6_c10" src="frontpage/images/scroll2.gif" border="0"> ---></td>    <td bgcolor="#CCCC99" width="1%"><img src="frontpage/images/shim.gif" width="1" height="66" border="0"></td>  </tr>  <tr valign="top"><!-- row 7 -->     <td bgcolor="#CCCC99" align="left" width="1%"><img src="frontpage/images/shim.gif" width="1" height="1" border="0"></td>    <td colspan="2" bgcolor="#CCCC99">     <p>       <a href="/general-info/9-11-open-letter.cfm">         <img src="/frontpage/images/9-11-letter.gif" Alt="Dear Visitors: From our family to yours: An open letter to visitors to The Minneapolis Institute of Arts and this Web site."         border="0" height="85" width="248"></a></p>     </p>      <cfoutput query="GetEvents">        <p>        <!--- <a href="events/types.cfm?type=#URLEncodedFormat(EV_Type)#"> ---><img src="frontpage/images/#SpanExcluding(EV_Type, " ")#1.gif" border="0" alt="#EV_Type#"><!--- </a> ---><br>                <font color="##000000">        <cfif EV_type does not contain "Exhibition">		<a href="/events/index.cfm?target_date=#DateFormat(EV_Start_DateTime, "m-d-yy")#">		  <font color="##660000"><b>#EV_Title#</b></font></a><br>		<cfelse>		<b>#EV_Title#</b>		</cfif>		<cfif EV_type does not contain "Exhibition">		<cfif Len(EV_Display_Date) gt 0>		  #EV_Display_Date#		<cfelse>          #DateFormat(EV_Start_DateTime, "DDDD, mmmm d, yyyy")#<br>        <cfif TimeFormat(EV_Start_DateTime, "h:mm tt") is not "12:00 AM">		  #TimeFormat(EV_Start_DateTime, "h:mm tt")#        <cfif EV_End_DateTime is not EV_Start_DateTime>&##150; #TimeFormat(EV_End_DateTime, "h:mm tt")#</cfif>        </cfif>		</cfif></cfif>		</font>                </p>      </cfoutput>	    		<br clear="all">&nbsp;    </td>    <td bgcolor="#CCCC99">    <img src="frontpage/images/shim.gif" width="1" height="1" border="0"></td>    <td bgcolor="#CCCC99" width="1%"><img src="frontpage/images/shim.gif" width="1" height="334" border="0"></td>  </tr> </table></body></html>
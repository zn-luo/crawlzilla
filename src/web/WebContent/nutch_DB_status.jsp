<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- Meta Data -->
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="description" content="NutchEz Management" />
<meta name="keywords" content="nutch, nutchEz, cloud computing, Hadoop, search engine" />
<meta name="author" content="Waue(waue@nchc.org.tw), Shunfa(shunfa@nchc.org.tw) , Rock(rock@nchc.org.tw)" />

<link rel=stylesheet type="text/css" href="css/Crawl.css"> 
<link href="css/style.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" src="crawl.js"></script>
<title>NutchEZ&#32178;&#38913;&#31649;&#29702;&#31995;&#32113;</title>
</head>
<body>

<div id="page_wrapper">

<div id="header_wrapper">

<div id="header">

<h1>NutchEZ&#32178;&#38913;&#31649;&#29702;&#20171;&#38754;</h1>

</div>

<div id="navcontainer">
<ul id="navlist">
<li><a href="index.jsp">HOME</a></li>
<li id="active"><a href="crawl.jsp" id="current">Crawl</a></li>
<li><a href="statistics.do">&#36039;&#26009;&#24235;&#32113;&#35336;</a></li>
<li><a href="sysinfo.jsp">&#31995;&#32113;&#29376;&#24907;</a></li>
<% if(session.getAttribute("confirm") == "true") { %>
<li><a href="logout.jsp">&#30331;&#20986;&#31995;&#32113;</a></li>
<%} else { %>	
<li><a href="login.html">&#31649;&#29702;&#32773;&#30331;&#20837;</a></li>
<% } %>


</ul>
</div>

</div>
<div id="right_side">
  <h3>&#30456;&#38364;&#36039;&#28304;</h3>
  <p>* NutchEZ&#23560;&#26696;&#32178;&#22336;</p>
  <p>* &#32218;&#19978;&#25903;&#25588;</p>
</div>

<div id="content">

<h3>Nutch DataBase Status</h3>
<% 
    String loginFormURL = 
               "login.html";  
    if(session.getAttribute("confirm") == "true") { %>
<div class='featurebox_center'>

<div class="crawl_status">

	<fieldset>
	<legend>Tomcat Restart</legend>
	Setup is success !!!<br />
	You need to <span class="redfont">restart Tomcat</span> to make effect !!!<br />
	<form method="get" name="name_tomcat" action="TomcatRestart.do" >
	<br />
	<input type="submit" value="restart Tomcat"/>
	<input type="button" value="cancle" onclick="tomcat_cancle()" />
	</form>
	(PS: it need 5~10 seconds to restart Tomcat, your connect will be lost !!!)
	</fieldset>
	
	    <% } 
    else {
		response.setHeader("Refresh", "3; URL=" + loginFormURL); %>
        <div class='featurebox_center'>&#31995;&#32113;&#31649;&#29702;&#21729;&#23578;&#26410;&#30331;&#20837;&#65292;&#31995;&#32113;&#23559;&#26044;3&#31186;&#24460;&#36339;&#36681;&#33267;&#30331;&#20837;&#38913;&#38754;(<a href="login.html">&#33509;&#28961;&#36339;&#36681;&#35531;&#25353;&#27492;</a>)</div>        
    	<% } %>
	
</div>


</script>

<!-- //logout 
//session.invalidate(); --> 
</div>

<!-- <div class='featurebox_center'>some information here...</div> -->
<p>&nbsp;</p>
<p>&nbsp;</p>
</div>

<div id="footer">
copyright &copy; 2010 Free Software Lab@NCHC 
<br />
Template provided by: 
<a href="http://www.designsbydarren.com" target="_blank">DesignsByDarren.com</a>
</div>

</div>
</body>
</html>
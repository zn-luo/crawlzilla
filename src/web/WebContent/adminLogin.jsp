<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<!--
Copyright: Darren Hester 2006, http://www.designsbydarren.com
License: Released Under the "Creative Commons License", 
http://creativecommons.org/licenses/by-nc/2.5/
-->

<head>

<!-- Meta Data -->
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="description" content="NutchEz Management" />
<meta name="keywords" content="nutch, nutchEz, cloud computing, Hadoop, search engine" />
<meta name="author" content="Waue(waue@nchc.org.tw), Shunfa(shunfa@nchc.org.tw) , Rock(rock@nchc.org.tw)" />


<!-- Site Title -->
<title>NutchEZ&#32178;&#38913;&#31649;&#29702;&#31995;&#32113;</title>

<!-- Link to Style External Sheet -->
<link href="css/style.css" type="text/css" rel="stylesheet" />

</head>

<body>
<jsp:useBean id="checkFristLogin" class="org.nchc.nutchez.CheckFristLogin" /> 
<jsp:setProperty name="checkFristLogin" property="*" /> 


<div id="page_wrapper">

<div id="header_wrapper">

<div id="header">

<h1>NutchEZ&#32178;&#38913;&#31649;&#29702;&#20171;&#38754;</h1>


</div>

<div id="navcontainer">
<ul id="navlist">
<li><a href="index.jsp">HOME</a></li>
<li><a href="crawl.jsp">Crawl</a></li>
<li id="active"><a href="nutch_DB.jsp" >&#36039;&#26009;&#24235;&#31649;&#29702;</a></li>
<li><a href="Statistics.do">&#36039;&#26009;&#24235;&#32113;&#35336;</a></li>
<li><a href="sysinfo.jsp">&#31995;&#32113;&#29376;&#24907;</a></li>
<li id="active"><a href="adminLogin.jsp" id="current">&#31649;&#29702;&#32773;&#30331;&#20837;</a></li>
</ul>
</div>

</div>
<div class='featurebox_center'>
  <div id="right_side">
  
    <h3>&#30456;&#38364;&#36039;&#28304;</h3>
  
    <p>* NutchEZ&#23560;&#26696;&#32178;&#22336;</p>
    <p>* &#32218;&#19978;&#25903;&#25588;</p>
</div>

<div id="content">

<h3>&#30331;&#20837;&#31649;&#29702;&#31995;&#32113;</h3>


<form name="login" method="post" action="login.jsp">
  <p>&#35531;&#36664;&#20837;&#31649;&#29702;&#32773;&#23494;&#30908;&#65306;</p>
    <p>
      <label>
         <input type="password" name="passWord" >
      </label>
  </p>
    <p>
      <label>
        <input type="submit" name="login" id="login" value="&#36865;&#20986;" />
        </label>
      <label>
        <input type="reset" name="cancel" id="cancel" value="&#37325;&#35373;" />
        </label>
      </p>
      <%
if (checkFristLogin.fristLogin()){
	out.println("Default password is \"nutchuser\"");
}
%>
  </form>
  <p>&nbsp;</p>
</div>
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
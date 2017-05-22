<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE HTML>
<html>
<head>
   
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  <script type="text/javascript" src="<spring:url value="/resources/js/bootstrap.min.js"/>"></script>
  <script type="text/javascript" src="<spring:url value="/resources/js/jquery-3.1.1.min.js"/>"></script>
  <link href="<spring:url value="/resources/css/bootstrap.min.css"/>" rel="stylesheet">
  <link href="<spring:url value="/resources/css/bootstrap-rtl.min.css"/>" rel="stylesheet">
  <link href="<spring:url value="/resources/css/styles.css"/>" rel="stylesheet"/>
  <title>سیستم جامع دانشگاهی گلستان</title>
  

  <script>
    function checklogin() {
      var username = $('#username').val();
      var password = $('#password').val();
      if(username=="manager" && password=="manager") {
        window.location.replace("manager.jsp");
      } else if(username=="teacher" && password=="teacher") {
        window.location.replace("teacher.jsp");
      } else if(username=="student" && password=="student") {
        window.location.href = "student.jsp";

      } else {
        alert("نام کاربری یا کلمه عبور اشتباه است");
      }
    }
    $(document).ready(function(){
      $.removeCookie("loggedin");
    });
  </script>
</head>
<body>
<div class="container">
  <div class="row">
    <div class="col-sm-10 col-sm-offset-1 main">
      <div class="col-sm-12" id="header"><div id="logo"></div>سیستم گلستان دانشگاه شهید بهشتی</div>

    </div>
  </div>
  <div class="row">
    <div class="col-sm-10 col-sm-offset-1 main">
      <div class="col-sm-3" id="menu">
        <a href=""><div class="menuitem">ورود به سیستم</div></a>
      </div>
      <div class="col-sm-9" id="body">
        <div style="padding: auto;">
            <form  action="login" method="GET" >
            <table style="width:70%; margin:auto;">
              <tr>
                <td style="text-align: left" width="30%">نام کاربری:</td>
                <td style="text-align: center" width="70%"><input id="username" name="username" type="text"></td>
              </tr>
              <tr>
                <td style="text-align: left" width="30%">کلمه عبور:</td>
                <td style="text-align: center" width="70%"><input id="password" name="password" type="password"></td>
              </tr>
              <tr>
                <td style="text-align: left" width="30%"></td>
                <td style="text-align: center" width="70%"><input type="submit" value="ورود"></td>
              </tr>
              <tr>
                <td style="text-align: right; color: red; font-size: 14px" colspan="2">
                  نکته:<br>
                  برای ورود به عنوان دانشجو، نام کاربری و کلمه عبور student را وارد کنید.<br>
                  برای ورود به عنوان استاد، نام کاربری و کلمه عبور teacher را وارد کنید.<br>
                  برای ورود به عنوان مدیرگروه، نام کاربری و کلمه عبور manager را وارد کنید.
                </td>
              </tr>
            </table>
          </form>
        </div>
      </div>

    </div>
  </div>
</div>


</body>
</html>

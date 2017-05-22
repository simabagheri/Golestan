<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

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
</head>
<script>
  $(document).ready(function(){
  });
</script>
<div class="container">
  <div class="row">
    <div class="col-sm-10 col-sm-offset-1 main">
      <div class="col-sm-12" id="header"><div id="logo"></div>سیستم گلستان دانشگاه شهید بهشتی</div>

    </div>
  </div>
  <div class="row">
    <div class="col-sm-10 col-sm-offset-1 main">
      <div class="col-sm-3" id="menu">
           
          <a href="<spring:url value="/student/workbook"/>"><div class="menuitem">کارنامه ترمی</div></a>       
          <a href="<spring:url value="/student/register"/>"><div class="menuitem">ثبت نام ترم</div></a>
          <a href="<spring:url value="/student/profile"/>"><div class="menuitem">تغییر اطلاعات شخصی</div></a>
          <a href="<spring:url value="/student/password"/>"><div class="menuitem">تغییر رمز ورود</div></a>
          <a href="<spring:url value="/student/welcome"/>"><div class="menuitem">خروج از سیستم</div></a>
      </div>
      <div class="col-sm-9" id="body">
        <div style="padding: auto; text-align: center">
          دانشجوی عزیز، به سیستم آموزش خوش آمدید!
       
        </div>
      </div>

    </div>
  </div>
</div>
<%--</div>--%>
<body>

</body>
</html>

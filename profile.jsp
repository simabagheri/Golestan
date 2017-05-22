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
</head>
<body>
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
        <a href="" onclick="history.go(-1);"><div class="menuitem">بازگشت به منوی اصلی</div></a>
      </div>
      <div class="col-sm-9" id="body">
        <div style="padding: auto;">
          <table style="width:70%; margin:auto;">
            <tr>
              <td style="text-align: left" width="30%">نام:</td>
              <td style="text-align: center" width="70%"><input value="سجی" type="text"></td>
            </tr>
            <tr>
              <td style="text-align: left" width="30%">نام خانوادگی:</td>
              <td style="text-align: center" width="70%"><input value="حسنی" type="text"></td>
            </tr>
            <tr>
              <td style="text-align: left" width="30%">تلفن:</td>
              <td style="text-align: center" width="70%"><input value="09123456789" type="text"></td>
            </tr>
            <tr>
              <td style="text-align: left" width="30%">آدرس:</td>
              <td style="text-align: center" width="70%"><input value="تهران" type="text"></td>
            </tr>
            <tr>
              <td style="text-align: left" width="30%"></td>
              <td style="text-align: center" width="70%"><input type="submit" value="ذخیره اطلاعات" onClick="alert('اطلاعات ذخیره شد'); history.go(-1);"></td>
            </tr>
          </table>
        </div>
      </div>

    </div>
  </div>
</div>


</body>
</html>

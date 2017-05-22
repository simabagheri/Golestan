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
<script>
  function addpre() {
    $("#prerequisite").prepend("<div><select><option>طراحی الگوریتم</option><option>ساختمان داده</option><option>ساختمان گسسته</option><option>پایگاه داده</option><option>ریاضی 1</option><option>ریاضی 2</option></select> <a onClick=\"$(this).parent().hide();\"><img src=\"resources/images/cross.jpg\"></a></div>");
  }
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
        <div style="padding: auto; margin-top: 50px; margin-bottom: 50px; ">
          <table style="width:70%; margin:auto;">
            <tr>
              <td style="text-align: left" width="30%">نام درس:</td>
              <td style="text-align: center" width="70%"><input value="نام درس" type="text"></td>
            </tr>
            <tr>
              <td style="text-align: left" width="30%">نوع:</td>
              <td style="text-align: center" width="70%">
                <select>
                  <option>اصلی</option>
                  <option>پایه</option>
                  <option>تخصصی</option>
                  <option>اختیاری</option>
                  <option>عمومی</option>
                </select>
              </td>
            </tr>
            <tr>
              <td style="text-align: left" width="30%">پیش نیاز:</td>
              <td id="prerequisite" style="text-align: center" width="70%">
                <a onClick="addpre()"><img src="resources/images/add.jpg"></a>
              </td>
            </tr>
            <tr>
              <td style="text-align: left" width="30%">مجاز برای:</td>
              <td style="text-align: center" width="70%">
                <select>
                  <option>همه</option>
                  <option>سخت افزار</option>
                  <option>نرم افزار</option>
                </select>
              </td>
            </tr>
            <tr>
              <td style="text-align: left" width="30%">تعداد واحد:</td>
              <td style="text-align: center" width="70%">

                <select>
                  <option>0</option>
                  <option>1</option>
                  <option>2</option>
                  <option>3</option>
                  <option>4</option>
                  <option>5</option>
                </select>
              </td>
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
<body>

</body>
</html>

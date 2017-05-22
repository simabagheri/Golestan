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
  function addday() {
    $("#days").prepend("<div><select><option>شنبه</option><option>یکشنبه</option><option>دوشنبه</option><option>سه شنبه</option><option>چهارشنبه</option><option>پنجشنبه</option></select> <a onClick=\"$(this).parent().hide();\"><img src=\"resources/images/cross.jpg\"></a></div>");
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
        <div style="padding: auto;">
          <table style="width:70%; margin:auto;">
            <tr>
              <td style="text-align: left" width="30%">ترم تحصیلی:</td>
              <td style="text-align: center" width="70%">نیمسال دوم 95-96
              </td>
            </tr>
            <tr>
              <td style="text-align: left" width="30%">نام درس:</td>
              <td style="text-align: center" width="70%">
                <select><option>طراحی الگوریتم</option><option>ساختمان داده</option><option>ساختمان گسسته</option><option>پایگاه داده</option><option>ریاضی 1</option><option>ریاضی 2</option></select>
              </td>
            </tr>
            <tr>
              <td style="text-align: left" width="30%">استاد درس:</td>
              <td style="text-align: center" width="70%">
                <select><option>مقصود عباسپور</option><option>منا قاسمیان</option><option>رامک قوامی زاده</option><option>محسن ابراهیمی مقدم</option><option>یاسر شکفته</option><option>محمود نشاطی</option></select>
              </td>
            </tr>
            <tr>
              <td style="text-align: left" width="30%">روز درس:</td>
              <td id="days" style="text-align: center" width="70%">
                <a onClick="addday()"><img src="resources/images/add.jpg"></a>
              </td>
            </tr>
            <tr>
              <td style="text-align: left" width="30%">ساعت درس:</td>
              <td style="text-align: center" width="70%">
                <select><option>9-7:30</option><option>10:30-9</option><option>12-10:30</option><option>15-13</option><option>17-15</option></select>
              </td>
            </tr>
            <tr>
              <td style="text-align: left" width="30%">روز امتحان:</td>
              <td style="text-align: center" width="70%">
                <select><option>96/3/17</option><option>96/3/18</option><option>96/3/19</option><option>96/3/20</option><option>96/3/21</option><option>96/3/22</option><option>96/3/23</option><option>96/3/24</option><option>96/3/25</option></select>
              </td>
            </tr>
            <tr>
              <td style="text-align: left" width="30%">ساعت امتحان:</td>
              <td style="text-align: center" width="70%">
                <select><option>7:30</option><option>10:30</option><option>12:30</option></select>
              </td>
            </tr>
            <tr>
              <td style="text-align: left" width="30%"></td>
              <td style="text-align: center" width="70%"><input type="submit" value="افزودن درس به ترم انتخابی" onClick="alert('اطلاعات ذخیره شد'); history.go(-1);"></td>
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

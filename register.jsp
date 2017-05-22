<%--
  Created by IntelliJ IDEA.
  User: sima
  Date: 4/17/2017
  Time: 10:31 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
  function deleteitem(a) {
    var deletedunits = parseInt($(a).parent().prev(this).prev(this).prev(this).prev(this).prev(this).html());
    var currentunits = parseInt($("#selectedunits").html());
    $("#selectedunits").html(currentunits-deletedunits);
    $(a).attr("onClick","additem(this)");      
    $(a).html("<img src=\"resources/images/tick.jpg\">");
    $(a).parent().parent().insertAfter($("#totallist"));
  }
  function additem(a) {
    var addedunits = parseInt($(a).parent().prev(this).prev(this).prev(this).prev(this).prev(this).html());
    var currentunits = parseInt($("#selectedunits").html());
    if((currentunits+addedunits)>20) {
      alert('تعداد واحد های انتخابی شما نمیتواند بیشتر از سقف مجاز باشد');
    } else {
      $("#selectedunits").html(currentunits+addedunits);
      $(a).attr("onClick","deleteitem(this)");
      $(a).html("<img src=\"resources/images/cross.jpg\">");
      $(a).parent().parent().insertAfter($("#selectionlist"));
    }
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
        <div style="font-size: 12px; padding: auto; text-align: center">
          <table style="width:100%; margin:auto;">
            <tr>
              <td style="text-align: left" width="40%">ثبت نام ترم جاری:</td>
              <td style="text-align: center" width="60%">نیمسال دوم 95-96 </td>
            </tr>
            <tr>
              <td style="text-align: left">تعداد واحد اخذ شده:</td>
              <td id="selectedunits" style="text-align: center">6</td>
            </tr>
            <tr>
              <td style="text-align: left">حداکثر واحد مجاز برای اخذ:</td>
              <td style="text-align: center">20</td>
            </tr>
            <tr>
              <th style="text-align: center" width="100%" colspan="7">دروس اخذ شده</th>
            </tr>
          </table>
          <table style="width:100%; margin:auto; background: #EFEFEF">
            <tr id="selectionlist">
              <th style="text-align: center" width="20%">نام درس</th>
              <th style="text-align: center" width="5%">تعداد واحد</th>
              <th style="text-align: center" width="20%">پیش نیاز</th>
              <th style="text-align: center" width="10%">استاد</th>
              <th style="text-align: center" width="20%">روز و ساعت</th>
              <th style="text-align: center" width="20%">امتحان</th>
              <th style="text-align: center" width="20%">حذف</th>
            </tr>
            <tr>
              <td style="text-align: center">شبکه های کامپیوتری</td>
              <td style="text-align: center">3</td>
              <td style="text-align: center">مدار های منطقی</td>
              <td style="text-align: center">مقصود عباسپور</td>
              <td style="text-align: center">یکشنبه<br>سه شنبه<br>15-13</td>
              <td style="text-align: center">1396/3/20<br>7:30</td>
              <td style="text-align: center"><a onClick="deleteitem(this)"><img src="<spring:url value="/resources/images/cross.jpg"/>"></a></td>
            </tr>
            <tr>
              <td style="text-align: center">مهندسی نرم افزار</td>
              <td style="text-align: center">3</td>
              <td style="text-align: center">پایگاه داده</td>
              <td style="text-align: center">محمود نشاطی</td>
              <td style="text-align: center">شنبه<br>دوشنبه<br>15-13</td>
              <td style="text-align: center">1396/3/22<br>9:00</td>
              <td style="text-align: center"><a onClick="deleteitem(this)"><img src="<spring:url value="/resources/images/cross.jpg"/>"></a></td>
            </tr>
          </table>
          <table style="width:100%; margin:auto;">
            <tr>
              <th style="text-align: center" width="100%" colspan="6">دروس ارائه شده ترم</th>
            </tr>
            <tr id="totallist">
              <th style="text-align: center" width="20%">نام درس</th>
              <th style="text-align: center" width="5%">تعداد واحد</th>
              <th style="text-align: center" width="20%">پیش نیاز</th>
              <th style="text-align: center" width="10%">استاد</th>
              <th style="text-align: center" width="20%">روز و ساعت</th>
              <th style="text-align: center" width="20%">امتحان</th>
              <th style="text-align: center" width="20%">اضافه</th>
            </tr>
            <tr>
              <td style="text-align: center">اندیشه اسلامی 1</td>
              <td style="text-align: center">2</td>
              <td style="text-align: center">-</td>
              <td style="text-align: center">محمد حسینی</td>
              <td style="text-align: center">شنبه<br>17-15</td>
              <td style="text-align: center">1396/3/24<br>12:30</td>
              <td style="text-align: center"><a onClick="additem(this)"><img src="<spring:url value="/resources/images/tick.jpg"/>"></a></td>
            </tr>
            <tr>
              <td style="text-align: center">اندیشه اسلامی 2</td>
              <td style="text-align: center">2</td>
              <td style="text-align: center">اندیشه اسلامی 1</td>
              <td style="text-align: center">محمد حسینی</td>
              <td style="text-align: center">یکشنبه<br>17-15</td>
              <td style="text-align: center">1396/3/24<br>12:30</td>
              <td style="text-align: center"><a onClick="alert('پیش نیاز این درست رعایت نشده است')"><img src="<spring:url value="/resources/images/tick.jpg"/>"></a></td>
            </tr>
            <tr>
              <td style="text-align: center">ساختمان داده</td>
              <td style="text-align: center">3</td>
              <td style="text-align: center">ساختمان گسسته<br>برنامه سازی پیشرفته</td>
              <td style="text-align: center">محسن ابراهیمی مقدم</td>
              <td style="text-align: center">شنبه<br>دوشنبه<br>12-10:30</td>
              <td style="text-align: center">1396/3/21<br>9:00</td>
              <td style="text-align: center"><a onClick="additem(this)"><img src="<spring:url value="/resources/images/tick.jpg"/>"></a></td>
            </tr>
            <tr>
              <td style="text-align: center">ریاضی مهندسی</td>
              <td style="text-align: center">3</td>
              <td style="text-align: center">ریاضی 2<br>معادلات دیفرانسیل</td>
              <td style="text-align: center">سید علی قریشی</td>
              <td style="text-align: center">شنبه<br>دوشنبه<br>9-7:30</td>
              <td style="text-align: center">1396/3/18<br>10:30</td>
              <td style="text-align: center"><a onClick="additem(this)"><img src="<spring:url value="/resources/images/tick.jpg"/>"></a></td>
            </tr>
            <tr>
              <td style="text-align: center">ریاضی مهندسی</td>
              <td style="text-align: center">3</td>
              <td style="text-align: center">ریاضی 2<br>معادلات دیفرانسیل</td>
              <td style="text-align: center">یاسر شکفته</td>
              <td style="text-align: center">شنبه<br>دوشنبه<br>10:30-9</td>
              <td style="text-align: center">1396/3/18<br>10:30</td>
              <td style="text-align: center"><a onClick="additem(this)"><img src="<spring:url value="/resources/images/tick.jpg"/>"></a></td>
            </tr>
            <tr>
              <td style="text-align: center">طراحی الگوریتم</td>
              <td style="text-align: center">3</td>
              <td style="text-align: center">ساختمان داده</td>
              <td style="text-align: center">رامک قوامی زاده</td>
              <td style="text-align: center">یکشنبه<br>سه شنبه<br>10:30-9</td>
              <td style="text-align: center">1396/3/19<br>10:30</td>
              <td style="text-align: center"><a onClick="additem(this)"><img src="<spring:url value="/resources/images/tick.jpg"/>"></a></td>
            </tr>
            <tr>
              <td style="text-align: center">آز پایگاه داده</td>
              <td style="text-align: center">1</td>
              <td style="text-align: center">پایگاه داده</td>
              <td style="text-align: center">فرزین ذاکر</td>
              <td style="text-align: center">سه شنبه<br>10:30-9</td>
              <td style="text-align: center">1396/3/23<br>12:30</td>
              <td style="text-align: center"><a onClick="alert('پیش نیاز این درست رعایت نشده است')"><img src="<spring:url value="/resources/images/tick.jpg"/>"></a></td>
            </tr>
            <tr>
              <td style="text-align: center">تربیت بدنی 1</td>
              <td style="text-align: center">1</td>
              <td style="text-align: center">-</td>
              <td style="text-align: center">فاطمه سید آقایی</td>
              <td style="text-align: center">چهارشنبه<br>10:30-9</td>
              <td style="text-align: center">1396/3/24<br>7:30</td>
              <td style="text-align: center"><a onClick="additem(this)"><img src="<spring:url value="/resources/images/tick.jpg"/>"></a></td>
            </tr>
            <tr>
              <td style="text-align: center">تربیت بدنی 2</td>
              <td style="text-align: center">1</td>
              <td style="text-align: center">تربیت بدنی 1</td>
              <td style="text-align: center">زهرا علوی</td>
              <td style="text-align: center">چهارشنبه<br>12-10:30</td>
              <td style="text-align: center">1396/3/23<br>7:30</td>
              <td style="text-align: center"><a onClick="additem(this)"><img src="<spring:url value="/resources/images/tick.jpg"/>"></a></td>
            </tr>
            <tr>
              <th style="text-align: center" width="100%" colspan="6"><input type="submit" value="اعمال تغییرات" onClick="alert('تغییرات ذخیره شد'); history.go(-1);"></th>
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

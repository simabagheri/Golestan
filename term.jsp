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
  $(document).ready(function(){
    $('#courses').hide();
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
              <td style="text-align: center" colspan="2"><form method="GET" action="term_add"><input class="termselect" type="submit" value="افزودن ترم درسی جدید"></form></td>
            </tr>
            <tr>
              <td style="text-align: left" width="30%">انتخاب ترم:</td>
              <td style="text-align: center" width="70%">
                <select class="termselect">
                  <option>نیمسال دوم 95-96</option>
                  <option>نیمسال اول 95-96</option>
                  <option>نیمسال دوم 94-95</option>
                  <option>نیمسال اول 94-95</option>
                </select>
              </td>
            </tr>
            <tr>
              <td style="text-align: left" width="30%"></td>
              <td style="text-align: center" width="70%"><input type="submit" value="نمایش دروس ارائه شده" onClick="$('#courses').show(); $(this).hide(); $('.termselect').attr('disabled', 'disabled');"></td>
            </tr>
          </table>
          <table id="courses" style="width:100%; margin:auto;">
            <tr>
              <th style="text-align: center" width="100%" colspan="7"><form method="GET" action="term_courseadd"><input type="submit" value="افزودن درس به ترم انتخابی"></form></th>
            </tr>
            <tr>
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
              <td style="text-align: center"><a onClick="$(this).parent().parent().hide()"><img src="<spring:url value="/resources/images/cross.jpg"/>"></a></td>
            </tr>
            <tr>
              <td style="text-align: center">مهندسی نرم افزار</td>
              <td style="text-align: center">3</td>
              <td style="text-align: center">پایگاه داده</td>
              <td style="text-align: center">محمود نشاطی</td>
              <td style="text-align: center">شنبه<br>دوشنبه<br>15-13</td>
              <td style="text-align: center">1396/3/22<br>9:00</td>
              <td style="text-align: center"><a onClick="$(this).parent().parent().hide()"><img src="<spring:url value="/resources/images/cross.jpg"/>"></a></td>
            </tr>
            <tr>
              <td style="text-align: center">اندیشه اسلامی 1</td>
              <td style="text-align: center">2</td>
              <td style="text-align: center">-</td>
              <td style="text-align: center">محمد حسینی</td>
              <td style="text-align: center">شنبه<br>17-15</td>
              <td style="text-align: center">1396/3/24<br>12:30</td>
              <td style="text-align: center"><a onClick="$(this).parent().parent().hide()"><img src="<spring:url value="/resources/images/cross.jpg"/>"></a></td>
            <tr>
              <td style="text-align: center">اندیشه اسلامی 2</td>
              <td style="text-align: center">2</td>
              <td style="text-align: center">اندیشه اسلامی 1</td>
              <td style="text-align: center">محمد حسینی</td>
              <td style="text-align: center">یکشنبه<br>17-15</td>
              <td style="text-align: center">1396/3/24<br>12:30</td>
              <td style="text-align: center"><a onClick="$(this).parent().parent().hide()"><img src="<spring:url value="/resources/images/cross.jpg"/>"></a></td>
            </tr>
            <tr>
              <td style="text-align: center">ساختمان داده</td>
              <td style="text-align: center">3</td>
              <td style="text-align: center">ساختمان گسسته<br>برنامه سازی پیشرفته</td>
              <td style="text-align: center">محسن ابراهیمی مقدم</td>
              <td style="text-align: center">شنبه<br>دوشنبه<br>12-10:30</td>
              <td style="text-align: center">1396/3/21<br>9:00</td>
              <td style="text-align: center"><a onClick="$(this).parent().parent().hide()"><img src="<spring:url value="/resources/images/cross.jpg"/>"></a></td>
            </tr>
            <tr>
              <td style="text-align: center">ریاضی مهندسی</td>
              <td style="text-align: center">3</td>
              <td style="text-align: center">ریاضی 2<br>معادلات دیفرانسیل</td>
              <td style="text-align: center">سید علی قریشی</td>
              <td style="text-align: center">شنبه<br>دوشنبه<br>9-7:30</td>
              <td style="text-align: center">1396/3/18<br>10:30</td>
              <td style="text-align: center"><a onClick="$(this).parent().parent().hide()"><img src="<spring:url value="/resources/images/cross.jpg"/>"></a></td>
            </tr>
            <tr>
              <td style="text-align: center">ریاضی مهندسی</td>
              <td style="text-align: center">3</td>
              <td style="text-align: center">ریاضی 2<br>معادلات دیفرانسیل</td>
              <td style="text-align: center">یاسر شکفته</td>
              <td style="text-align: center">شنبه<br>دوشنبه<br>10:30-9</td>
              <td style="text-align: center">1396/3/18<br>10:30</td>
              <td style="text-align: center"><a onClick="$(this).parent().parent().hide()"><img src="<spring:url value="/resources/images/cross.jpg"/>"></a></td>
            </tr>
            <tr>
              <td style="text-align: center">طراحی الگوریتم</td>
              <td style="text-align: center">3</td>
              <td style="text-align: center">ساختمان داده</td>
              <td style="text-align: center">رامک قوامی زاده</td>
              <td style="text-align: center">یکشنبه<br>سه شنبه<br>10:30-9</td>
              <td style="text-align: center">1396/3/19<br>10:30</td>
              <td style="text-align: center"><a onClick="$(this).parent().parent().hide()"><img src="<spring:url value="/resources/images/cross.jpg"/>"></a></td>
            </tr>
            <tr>
              <td style="text-align: center">آز پایگاه داده</td>
              <td style="text-align: center">1</td>
              <td style="text-align: center">پایگاه داده</td>
              <td style="text-align: center">فرزین ذاکر</td>
              <td style="text-align: center">سه شنبه<br>10:30-9</td>
              <td style="text-align: center">1396/3/23<br>12:30</td>
              <td style="text-align: center"><a onClick="$(this).parent().parent().hide()"><img src="<spring:url value="/resources/images/cross.jpg"/>"></a></td>
            </tr>
            <tr>
              <td style="text-align: center">تربیت بدنی 1</td>
              <td style="text-align: center">1</td>
              <td style="text-align: center">-</td>
              <td style="text-align: center">فاطمه سید آقایی</td>
              <td style="text-align: center">چهارشنبه<br>10:30-9</td>
              <td style="text-align: center">1396/3/24<br>7:30</td>
              <td style="text-align: center"><a onClick="$(this).parent().parent().hide()"><img src="<spring:url value="/resources/images/cross.jpg"/>"></a></td>
            </tr>
            <tr>
              <td style="text-align: center">تربیت بدنی 2</td>
              <td style="text-align: center">1</td>
              <td style="text-align: center">تربیت بدنی 1</td>
              <td style="text-align: center">زهرا احمدی</td>
              <td style="text-align: center">چهارشنبه<br>12-10:30</td>
              <td style="text-align: center">1396/3/23<br>7:30</td>
              <td style="text-align: center"><a onClick="$(this).parent().parent().hide()"><img src="<spring:url value="/resources/images/cross.jpg"/>"></a></td>
            </tr>
            <tr>
              <th style="text-align: center" width="100%" colspan="7"><input type="submit" value="اعمال تغییرات" onClick="alert('تغییرات ذخیره شد'); history.go(-1);"></th>
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

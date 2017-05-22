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
    $(".workbook").hide();
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
        <div style="padding: auto; text-align: center">
          <table style="width:90%; margin:auto;">
            <tr>
              <th style="text-align: center" colspan="7"><form method="GET" action="course_add"><input type="submit" value="افزودن درس جدید"></form></th>
            </tr>
            <tr>
              <th style="text-align: center" width="25%">نام درس</th>
              <th style="text-align: center" width="9%">نوع</th>
              <th style="text-align: center" width="25%">پیش نیاز</th>
              <th style="text-align: center" width="20%">مجاز برای</th>
              <th style="text-align: center" width="7%">واحد</th>
              <th style="text-align: center" width="7%">حذف</th>
              <th style="text-align: center" width="7%">ویرایش</th>
            </tr>
            <tr>
              <td style="text-align: center">طراحی الگوریتم</td>
              <td style="text-align: center">اصلی</td>
              <td style="text-align: center">ساختمان داده</td>
              <td style="text-align: center">همه</td>
              <td style="text-align: center">3</td>
              <td style="text-align: center"><a onClick="$(this).parent().parent().hide()"><img src="resources/images/cross.jpg"></a></td>
              <td style="text-align: center"><a href="course_add.jsp"><img src="resources/images/edit.jpg"></a></td>
            </tr>
            <tr>
              <td style="text-align: center">ساختمان داده</td>
              <td style="text-align: center">اصلی</td>
              <td style="text-align: center">ساختمان گسسته<br>برنامه سازی پیشرفته</td>
              <td style="text-align: center">همه</td>
              <td style="text-align: center">3</td>
              <td style="text-align: center"><a onClick="$(this).parent().parent().hide()"><img src="resources/images/cross.jpg"></a></td>
              <td style="text-align: center"><a href="course_add.jsp"><img src="resources/images/edit.jpg"></a></td>
            </tr>
            <tr>
              <td style="text-align: center">آز پایگاه داده</td>
              <td style="text-align: center">تخصصی</td>
              <td style="text-align: center">پایگاه داده</td>
              <td style="text-align: center">نرم افزار</td>
              <td style="text-align: center">1</td>
              <td style="text-align: center"><a onClick="$(this).parent().parent().hide()"><img src="resources/images/cross.jpg"></a></td>
              <td style="text-align: center"><a href="course_add.jsp"><img src="resources/images/edit.jpg"></a></td>
            </tr>
            <tr>
              <td style="text-align: center">ریاضی 1</td>
              <td style="text-align: center">پایه</td>
              <td style="text-align: center">-</td>
              <td style="text-align: center">همه</td>
              <td style="text-align: center">3</td>
              <td style="text-align: center"><a onClick="$(this).parent().parent().hide()"><img src="resources/images/cross.jpg"></a></td>
              <td style="text-align: center"><a href="course_add.jsp"><img src="resources/images/edit.jpg"></a></td>
            </tr>
            <tr>
              <td style="text-align: center">ریاضی 2</td>
              <td style="text-align: center">پایه</td>
              <td style="text-align: center">ریاضی 1</td>
              <td style="text-align: center">همه</td>
              <td style="text-align: center">3</td>
              <td style="text-align: center"><a onClick="$(this).parent().parent().hide()"><img src="resources/images/cross.jpg"></a></td>
              <td style="text-align: center"><a href="course_add.jsp"><img src="resources/images/edit.jpg"></a></td>
            </tr>
            <tr>
              <td style="text-align: center">سیگنال ها و سیستم ها</td>
              <td style="text-align: center">اختیاری</td>
              <td style="text-align: center">آمار و احتمالات<br>ریاضیات مهندسی</td>
              <td style="text-align: center">سخت افزار</td>
              <td style="text-align: center">3</td>
              <td style="text-align: center"><a onClick="$(this).parent().parent().hide()"><img src="resources/images/cross.jpg"></a></td>
              <td style="text-align: center"><a href="course_add.jsp"><img src="resources/images/edit.jpg"></a></td>
            </tr>
            <tr>
              <td style="text-align: center" colspan="7"><input type="submit" value="اعمال تغییرات" onClick="alert('تغییرات ذخیره شد'); history.go(-1);"></td>
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

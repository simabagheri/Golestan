
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
              <td style="text-align: left" width="30%">کارنامه ترم:</td>
              <td style="text-align: center" width="70%">
                <select id="termselect">
                  <option>نیمسال دوم 95-96</option>
                  <option>نیمسال اول 95-96</option>
                  <option>نیمسال دوم 94-95</option>
                  <option>نیمسال اول 94-95</option>
                </select>
              </td>
            </tr>
            <tr>
              <td style="text-align: left" width="30%"></td>
              <td style="text-align: center" width="70%"><input type="submit" value="مشاهده کارنامه" onClick="$('.workbook').show(); $(this).hide(); $('#termselect').attr('disabled', 'disabled');"></td>
            </tr>
            <tr class="workbook">
              <th style="text-align: center" width="40%">نام درس</th>
              <th style="text-align: center" width="30%">تعداد واحد</th>
              <th style="text-align: center" width="30%">نمره</th>
            </tr>
            <tr class="workbook">
              <td style="text-align: center" width="40%">پایگاه داده</td>
              <td style="text-align: center" width="30%">3</td>
              <td style="text-align: center" width="30%">17.3</td>
            </tr>
            <tr class="workbook">
              <td style="text-align: center" width="40%">مهندسی اینترنت</td>
              <td style="text-align: center" width="30%">3</td>
              <td style="text-align: center" width="30%">15</td>
            </tr>
            <tr class="workbook">
              <td style="text-align: center" width="40%">هوش مصنوعی</td>
              <td style="text-align: center" width="30%">3</td>
              <td style="text-align: center" width="30%">14.5</td>
            </tr>
            <tr class="workbook">
              <td style="text-align: center" width="40%">سیستم عامل</td>
              <td style="text-align: center" width="30%">3</td>
              <td style="text-align: center" width="30%">12</td>
            </tr>
            <tr class="workbook">
              <td style="text-align: center" width="40%">اندیشه اسلامی 1</td>
              <td style="text-align: center" width="30%">2</td>
              <td style="text-align: center" width="30%">19.5</td>
            </tr>
            <tr class="workbook">
              <td style="text-align: center" width="40%">آز معماری کامپیوتر</td>
              <td style="text-align: center" width="30%">1</td>
              <td style="text-align: center" width="30%">17</td>
            </tr>
            <tr class="workbook">
              <td style="text-align: center" width="100%" colspan="3">------------------------</td>
            </tr>
            <tr class="workbook">
              <th style="text-align: left" width="30%">تعداد واحد اخذ شده</th>
              <th style="text-align: center" width="70%">15</th>
            </tr>
            <tr class="workbook">
              <th style="text-align: left" width="30%">معدل کل</th>
              <th style="text-align: center" width="70%">15.49</th>
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

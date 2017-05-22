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
              <td style="text-align: left" width="30%">نام درس:</td>
              <td style="text-align: center" width="70%">
                <select id="courseselect">
                  <option>ساختمان داده</option>
                  <option>طراحی الگوریتم</option>
                  <option>پایگاه داده</option>
                  <option>مهندسی نرم افزار</option>
                  <option>سیستم عامل</option>
                </select>
              </td>
            </tr>
            <tr>
              <td style="text-align: left" width="30%">ترم ارائه:</td>
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
              <td style="text-align: left" width="30%">ساعت و روز ارائه:</td>
              <td style="text-align: center" width="70%">
                <select id="dayselect">
                  <option>شنبه و چهارشنبه (10:30-12)</option>
                  <option>شنبه و چهارشنبه (9-10:30)</option>
                </select>
              </td>
            </tr>
            <tr>
              <td style="text-align: left" width="30%"></td>
              <td style="text-align: center" width="70%"><input type="submit" value="مشاهده لیست دانشجویان" onClick="$('.workbook').show(); $(this).hide(); $('#termselect,#courseselect,#dayselect').attr('disabled', 'disabled');"></td>
            </tr>
          </table>
          <table style="width:90%; margin:auto;">
            <tr class="workbook">
              <th style="text-align: center" width="30%">نام دانشجو</th>
              <th style="text-align: center" width="40%">رشته و گرایش</th>
              <th style="text-align: center" width="30%">ثبت نمره</th>
            </tr>
            <tr class="workbook">
              <td style="text-align: center">سجی حسنی</td>
              <td style="text-align: center">مهندسی کامپیوتر - نرم افزار</td>
              <td style="text-align: center"><input value="30" size="2" maxlength="2" type="text">/<input value="17" size="2" maxlength="2" type="text"></td></td>
            </tr>
            <tr class="workbook">
              <td style="text-align: center">سیما باقری</td>
              <td style="text-align: center">مهندسی کامپیوتر - نرم افزار</td>
              <td style="text-align: center"><input value="00" size="2" maxlength="2" type="text">/<input value="15" size="2" maxlength="2" type="text"></td></td>
            </tr>
            <tr class="workbook">
              <td style="text-align: center">صادق صادقی</td>
              <td style="text-align: center">مهندسی کامپیوتر - نرم افزار</td>
              <td style="text-align: center"><input value="00" size="2" maxlength="2" type="text">/<input value="09" size="2" maxlength="2" type="text"></td></td>
            </tr>
            <tr class="workbook">
              <td style="text-align: center">محمد محمدی</td>
              <td style="text-align: center">مهندسی کامپیوتر - سخت افزار</td>
              <td style="text-align: center"><input value="50" size="2" maxlength="2" type="text">/<input value="12" size="2" maxlength="2" type="text"></td></td>
            </tr>
            <tr class="workbook">
              <td style="text-align: center">المیرا رخشایی</td>
              <td style="text-align: center">مهندسی کامپیوتر - نرم افزار</td>
              <td style="text-align: center"><input value="00" size="2" maxlength="2" type="text">/<input value="20" size="2" maxlength="2" type="text"></td></td>
            </tr>
            <tr class="workbook">
              <th style="text-align: center" colspan="3"><input type="submit" value="اعمال تغییرات" onClick="alert('تغییرات ذخیره شد'); history.go(-1);"></th>
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

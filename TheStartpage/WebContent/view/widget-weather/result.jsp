<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div id="weather_box2">
<img id="icon" src="/TheStartpage/resources/img/widget-weather/${requestScope.description}.png"><br>
${requestScope.newAddr}<br>
<span id="a_0">${requestScope.description}</span>
</div>
<div id="weather_box3">
<span id="a_1">&nbsp;${requestScope.temp}&deg;</span><br>
${requestScope.yesterday}<br>
${requestScope.rain}<br>
${requestScope.dust}${requestScope.dust_val}
${requestScope.ozone}${requestScope.ozone_val}
</div>
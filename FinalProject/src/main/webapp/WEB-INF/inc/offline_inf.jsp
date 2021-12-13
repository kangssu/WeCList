<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="<%=request.getContextPath()%>"/>
<section class="breadcrumb-section">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 text-center">
				<div class="breadcrumb__text">
					<h2>WeCList 정보</h2>
					<div class="breadcrumb__option">
						<a href="./index.html">Home</a> <span>WeCList 정보</span>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<section class="product spad" >
	<div class="container">
		<div id="map"></div>
		<table class="info_page_table_list">
			<tr>
				<th>주소</th>
				<td>서울 강남구 강남대로 94길 20</td>
			</tr>
			<tr>
				<th>영업시간</th>
				<td>AM10:00~PM10:00(매일)</td>
			</tr>
			<tr>
				<th>대표번호</th>
				<td>02-3486-9600</td>
			</tr>
			<tr>
				<th>대표메일</th>
				<td>bit@weclist.com</td>
			</tr>
		</table>
	</div>
</section>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=31ea2ab5f5bc2dbd7ef329d223a10003"></script>
<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = { 
        center: new kakao.maps.LatLng(37.499399696860394, 127.02903075316307), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };

var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

// 마커가 표시될 위치입니다 
var iwContent = '<div class="map_content" style="padding:5px;">WeCList</div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
iwPosition = new kakao.maps.LatLng(37.499399696860394, 127.02903075316307), //인포윈도우 표시 위치입니다
iwRemoveable = true; // removeable 속성을 ture 로 설정하면 인포윈도우를 닫을 수 있는 x버튼이 표시됩니다

//인포윈도우를 생성하고 지도에 표시합니다
var infowindow = new kakao.maps.InfoWindow({
map: map, // 인포윈도우가 표시될 지도
position : iwPosition, 
content : iwContent,
removable : iwRemoveable
});

// 아래 코드는 지도 위의 마커를 제거하는 코드입니다
// marker.setMap(null);    
</script>
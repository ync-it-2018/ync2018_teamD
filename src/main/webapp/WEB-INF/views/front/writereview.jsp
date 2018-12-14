<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="/resources/front/css/bootstrap.min.css" rel="stylesheet" />
<link href="/resources/front/css/bootstrap-slider.css" rel="stylesheet" />
<link href="/resources/front/css/review.css" rel="stylesheet" />
<meta charset="UTF-8">
<title>Team_D Project : Daisy</title>
</head>
<body>
	<div class="container show-grid upperdiv">
		<div class="col-lg-3 col-md-3 col-sm-3">
			<div class="userInfo">
				<img src="/resources/front/img/dummies/usericon.png"> 사용자 이름
				<hr>
			<div id="reviewdate">
				2018-12-01 작성
			</div>	
			</div>
		</div>
		<div class="col-lg-9 col-md-9 col-sm-9">
			<div class="form-group">
				<label for="comment">후기 :</label>
				<textarea class="form-control" rows="6" id="comment"></textarea>
			</div>
		</div>
	</div>
	<table class="table scoreboard">
		<tr>
			<td class="tabletitle">평점1</td>
			<td class="sliderboard"><input id="score_1"
				data-slider-id='Slider1' type="text" data-slider-min="0"
				data-slider-max="10" data-slider-step="1" data-slider-value="10"
				name="score" /></td>
			<td rowspan="4">
				<div class="averagescore" id="score">평점</div>
			</td>
		</tr>
		<tr>
			<td>평점2</td>
			<td><input id="score_2" data-slider-id='Slider2' type="text"
				data-slider-min="0" data-slider-max="10" data-slider-step="1"
				data-slider-value="10" name="score" /></td>
		</tr>
		<tr>
			<td>평점3</td>
			<td><input id="score_3" data-slider-id='Slider3' type="text"
				data-slider-min="0" data-slider-max="10" data-slider-step="1"
				data-slider-value="10" name="score" /></td>
		</tr>
		<tr>
			<td>평점4</td>
			<td><input id="score_4" data-slider-id='Slider4' type="text"
				data-slider-min="0" data-slider-max="10" data-slider-step="1"
				data-slider-value="10" name="score" /></td>
		</tr>
	</table>
</body>

<script src="/resources/front/js/jquery.js"></script>
<script src="/resources/front/js/bootstrap-slider.js"></script>
<script src="/resources/front/js/review.js"></script>
</html>
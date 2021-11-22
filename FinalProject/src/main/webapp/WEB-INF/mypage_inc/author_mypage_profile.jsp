<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="<%=request.getContextPath()%>"/>
<!-- 좌측 메뉴 -->
<section class="author-details-middle">
	<div class="container">
		<div class="row">
			<!-- 프로필 입력 및수정폼! -->
			<form action="pinsert" method="post" enctype="multipart/form-data"> <!-- 여기 수정해야함!(임시) -->
				<div class="mypage__profile">
					<h2>프로필 관리</h2>
					<div class="mypage__profile__form">
						<table class="profile__form__table">
							<tr>
								<th>History</th>
							</tr>
							<tr>
								<td>
									<textarea name="history" required="required" 
									placeholder="※ 작품만의 History를 자세히 적어주세요."></textarea>
									<div class="image__preview__all">
										<ul id="preview"></ul> <!-- 여기 안에 li로 image가 추가됨 -->
										<div class="preview__inp">
											<label class="input_file_btn" for="uploadFile"><i class="fa fa-plus" aria-hidden="true"></i></label>
											<input type="file" name="uploadFile" id="uploadFile" multiple maxlength="5"/>
										</div>
									</div>
								</td>
							</tr>
							<tr>
								<th>Idea</th>
							</tr>
							<tr>
								<td>
									<textarea name="idea" required="required"
									placeholder="※ 작품만의 Idea를 자세히 적어주세요."></textarea>
									<div class="image__preview__all">
										<ul id="preview"></ul> <!-- 여기 안에 li로 image가 추가됨 -->
										<div class="preview__inp">
											<label class="input_file_btn" for="uploadFile"><i class="fa fa-plus" aria-hidden="true"></i></label>
											<input type="file" name="uploadFile" id="uploadFile" multiple/>
										</div>
									</div>
								</td>
							</tr>
							<tr>
								<th>Identity</th>
							</tr>
							<tr>
								<td>
									<textarea name="identity" required="required"
									placeholder="※ 작품만의 Identity를 자세히 적어주세요."></textarea>
									<div class="image__preview__all">
										<ul id="preview"></ul> <!-- 여기 안에 li로 image가 추가됨 -->
										<div class="preview__inp">
											<label class="input_file_btn" for="uploadFile"><i class="fa fa-plus" aria-hidden="true"></i></label>
											<input type="file" name="uploadFile" id="uploadFile" multiple/>
										</div>
									</div>
								</td>
							</tr>
						</table>
						<div class="profile_btn_all">
							<button type="submit" class="insert_btn">등록하기</button>
						</div>
					</div>
				</div>
			</form>
		</div>
	</div>
</section>

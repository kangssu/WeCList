# [팀 프로젝트] WeCList - 위시리스트
### 💡 프로젝트 기간 : 2021.11.15 - 2021.12.14 (총 30일동안 진행)
### 🌐 [위시리스트 바로가기](https://weclist.com/)
* **위시리스트는 정성이 들어간 상품 또는 클래스를 수강해서 단 하나뿐인 작품을 만들 수 있는 사이트입니다.**<br/>
* 일반적인 쇼핑몰이 아닌 정성이 들어간 상품을 판매하는 쇼핑몰을 만들어보고 싶었습니다.<br/>
* 그 이유는 저희가 웹사이트를 직접 만드는 것처럼 손재주를 가진 많은 사람들이<br/>
  직접 만든 상품을 판매하면서 값진 경험을 위시리스트에서 차곡차곡 쌓아가길 바랬습니다.
* 위시리스트를 만들고 싶은 이유랑 가장 적합한 idus를 벤치하였습니다.
<br/>

## 1. 팀원 소개
🙇‍♂️ 조민섭(조장) ([chominsub](https://github.com/chominsub)) <code>Backend</code>
* 작품 메인 화면 인기 작품, 최신 작품 각각 출력
* 작품 리스트(카테고리 구분), 상세 출력 및 해당 작품 좋아요 기능 구현
* 작가 마이페이지에서 작품 등록, 수정, 삭제 기능 구현
 
🙇‍♀️ **<code>Me</code> 강희수(조원) ([Kangssu](https://github.com/kangssu))** <code>Backend</code>
* 웹사이트의 전체적인 **HTML, CSS** 담당
* 위시리스트에 등록된 **작가들 리스트 출력** 및 회원들이 원하는 **작가 팔로우 + 팔로잉 기능 구현**
* 회원들이 팔로우한 작가들의 리스트는 **마이페이지에 출력 + 팔로잉 기능** 가능
* **스토리 리스트, 상세 출력** 및 **회원 댓글** + **작가 대댓글 기능 구현**
* **작가 개인 홈** 화면에서 작가가 등록한 **프로필, 스토리, 작품, 클래스 전부 출력**
* 작가 마이페이지에서 **스토리 및 프로필 등록, 수정, 삭제 기능 구현**

🙇‍♂️ 박찬현(조원) ([chpark1008](https://github.com//chpark1008)) <code>Backend</code>
* 클래스 메인 화면 인기 클래스, 오픈전 클래스, 신규 클래스 각각 출력
* 클래스 리스트(카테고리 구분), 상세 출력 및 해당 작품 좋아요 기능 구현
* 클래스 등록 후 해당 기한에 따른 카테고리 분리 및 관심있어요(펀딩) 기능 구현
* 작가 마이페이지에서 클래스 등록, 수정, 삭제 기능 구현

🙇‍♀️ 윤인정(조원) ([yuninjeong](https://github.com//yuninjeong)) <code>Backend</code>
* 작가, 일반 구분한 회원가입 및 로그인 기능 구현
* 회원가입 Javascript(Front) 유효성 검사 및 이메일 인증 기능 구현
* 작가, 일반 회원정보 수정 및 탈퇴 기능 구현

🙇‍♂️ 권혁락(조원) ([vz4repo](https://github.com//vz4repo)) <code>Backend</code>
* AWS 서버 담당
* 작품, 클래스 장바구니 기능 구현
* 작품, 클래스 구매하기 기능 구현
<br/>

## 2. 기술스텍
### Frontend Stack
<p>
  <img src="https://img.shields.io/badge/html5-E34F26?style=for-the-badge&logo=html5&logoColor=white"> 
  <img src="https://img.shields.io/badge/css-1572B6?style=for-the-badge&logo=css3&logoColor=white"> 
  <img src="https://img.shields.io/badge/javascript-F7DF1E?style=for-the-badge&logo=javascript&logoColor=black"> 
  <img src="https://img.shields.io/badge/jquery-0769AD?style=for-the-badge&logo=jquery&logoColor=white">
  <img src="https://img.shields.io/badge/fontawesome-339AF0?style=for-the-badge&logo=fontawesome&logoColor=white">
</p>

### Backend Stack
<p>
  <img src="https://img.shields.io/badge/java 11-007396?style=for-the-badge&logo=java&logoColor=white"> 
  <img src="https://img.shields.io/badge/springboot-6DB33F?style=for-the-badge&logo=springboot&logoColor=white">
  <img src="https://img.shields.io/badge/mysql-4479A1?style=for-the-badge&logo=mysql&logoColor=white">
  <img src="https://img.shields.io/badge/mariaDB-003545?style=for-the-badge&logo=mariaDB&logoColor=white">
</p>

### Deploy Stack
<p>
  <img src="https://img.shields.io/badge/amazonaws-232F3E?style=for-the-badge&logo=amazonaws&logoColor=white">
  <img src="https://img.shields.io/badge/linux-FCC624?style=for-the-badge&logo=linux&logoColor=black">
  <img src="https://img.shields.io/badge/apache tomcat-F8DC75?style=for-the-badge&logo=apachetomcat&logoColor=white">
</p>

### Version Control
<p>
  <img src="https://img.shields.io/badge/github-181717?style=for-the-badge&logo=github&logoColor=white">
  <img src="https://img.shields.io/badge/git-F05032?style=for-the-badge&logo=git&logoColor=white">
</p>
<br/>

## 3. 트러블 슈팅
### 📌 작가 대댓글 기능
작가가 등록한 스토리에 회원들이 댓글을 남기면 해당 댓글에 작가만 등록할 수 있는 대댓글이 남겨져야 했었다.<br/>
하지만 해당 회원 댓글 아래로 대댓글이 등록되는게 아니라 아예 새로운 댓글로 등록이 되어버렸었다.

계층형 관련 유튜브를 보고 손으로 직접 그려가면서 기본기를 익혔고,<br/>
어느 정도 이해가 된 다음에 다시 테이블을 아래처럼 바꾼 이후에 작가의 대댓글 기능을 완성했다.

```
create table story_comment(
 idx smallint auto_increment primary key, // 댓글번호
 num smallint, // 게시판 번호
 reidx smallint default 0, // 일반회원 등록하면 0, 작가가 등록하면 1
 regroup smallint, // 그룹
 writer varchar(500), // 작성자 이름
 content varchar(3000), // 내용
 writeday datetime // 작성일
);
```

**로직 자체를 이해하지 않고 진행해서 시간이 오래 걸렸고 이후에는 어느 정도 이해한 이후에 진행하게 되었다.**
 
### 📌 작가 팔로우, 팔로잉 기능
작가를 팔로우한 회원들은 작가 리스트에서 해당 작가에 대해 팔로우 버튼이 보이는게 아닌 팔로잉 버튼이 보여져야 했었다.<br/>
하지만 작가 리스트에 팔로우한 작가들도 계속 팔로우 버튼이 보였고 조건식이 틀렸을 거라고 짐작하고 있었다.

그래서 조건식만 계속 수정을 진행하다가 팀원에게 도움을 요청했고 "contains() 함수를 한 번 사용해봐요."라고 말해줬었다.

contains() 함수 자체를 처음 들어서 적용해보기 위해 바로 구글링으로 해당 함수에 대해 검색해봤다.<br/>
contains() 함수는 해당 문자열에 지정 문자열이 포함되어 있는지를 확인할 수 있다는 개념을 파악하고<br/>
아래 코드처럼 작성했더니 팔로우, 팔로잉 버튼이 원하는 대로 구현되었다.
```
<c:when test="${fn:contains(followTrue, dto.id)}">
```

**기초적인 것을 몰랐다는 생각에 지금보다 더 많은 공부를 해야겠다고 깨달았던 경험이었다.**

<br/>
 
## 4. 기능구현 외 서포트
### 📚 기능정리 피피티 작업 [**[기능정리 PDF 바로보기](https://drive.google.com/file/d/1DvYHOlcs-7YkK1F7BAeaYW1AlUi9euRF/view)**]
* 공동 작업을 진행하는데 있어서 가장 중요한 것은 **서로 간의 의사소통**이라고 생각한다.<br/>
  그렇기 때문에 첫 회의를 위한 피피티를 준비했으며, 팀원 5명 기준 핵심 기능들 및 사이트맵을 정리했다.
* 결과적으로 첫 회의에서 내가 만든 피피티에 대부분 **정리가 되어있어서 회의 진행이 순조로웠으며,**<br/>
  기능 분담까지 **속전속결로 진행**되었던 첫 회의여서 뿌듯했었다.

### 📚 발표 피피티 작업 [**[최종 발표 PDF 바로보기](https://drive.google.com/file/d/1hxLwLlK0I9Ut0f8IhycOtcBin9VZIHVA/view?usp=sharing)**]
* 프로젝트 진행 전, 최종 완성 이후에 각각 피피티로 내용 정리하여 발표해야 했었다.
* 프로젝트 **진행 전에는 위시리스트에 대한 간략 설명들과 어떤 기능을 구현할지에 관한 내용**을 정리하여 만들었고,<br/>
  프로젝트 **최종 완성 이후에는 기존 내용에서 DB 테이블, 완성된 기능들에  내용**을 정리해서 만들었다.
* 발표 피피티를 전부 맡아서 하다 보니 팀원들이 어떤 기능 구현을 하는지 전부 파악이 되었고,<br/>
  위시리스트 웹 사이트에 대해 더 **구체적으로 이해하고 파악할 수 있는 경험이었던 것 같다.** 

⚠️ PDF 파일들이 열리는 로딩 속도가 느립니다. ⚠️

<br/>
  
## 5. 추후 보완사항
* - [ ] 전체 검색창 기능 구현
* - [ ] 작품, 클래스 장바구니 및 구매하기 기능 구현 마무리 진행
* - [ ] 결제한 클래스에 대한 동영상을 마이페이지에서 볼 수 있는 기능 구현
* - [x] ~~회원정보에서 회원 이미지 수정 안되는 부분 재수정~~
<br/>

## 6. 회고
* 팀 프로젝트여서 내 것만 생각하고 테스트하는 것이 아닌, 팀원들의 기능 구현도 같이 생각하고 테스트해야 했었다.<br/>
  화면에 보여지는 구성이나 오류 및 로직을 조금 변경했으면 하는 부분들은 팀원들한테 의견을 제시했었다.
* 이런 부분에서 팀원들끼리의 의견 충돌 없이 서로의 얘기를 경청하고 조율하는 부분에서 고마움을 많이 느꼈었다.
* 팀 프로젝트를 하다 보면 분명 의견 충돌이 있을 수도 있겠다고 생각했지만,<br/>
  서로 조금씩 문제가 있는 부분들에 대해 전부 공유하고 팀 회의를 진행하다 보니 그런 문제는 없었던 것 같다.
* **개발은 혼자서만 하는게 아니라 같은 팀, 다른 팀끼리도 공유가 잘되어야 하고 원활한 의사소통이 필요한 것 같다.<br/>
  그런 부분에서는 예전부터 많은 의사소통이 필요했던 기획팀에서의 경험으로 잘 해결해낼 수 있었던 것 같다.**

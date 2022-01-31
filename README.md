# [팀 프로젝트] WeCList - 위시리스트
### 💡 프로젝트 기간 : 2021.11.15 - 2021.12.14 (총 30일동안 진행)
### 🌐 [위시리스트 바로가기](https://weclist.com/)
* **위시리스트는 정성이 들어간 상품 또는 클래스를 수강해서 단 하나뿐인 작품을 만들 수 있는 사이트입니다.**<br/>
* 저희가 사전 조사할 때 해당 내용을 참고하여 찾은 벤치 사이트는 idus 웹사이트였고,<br/>
  조금 더 편리하고 유용하게 사용할 수 있도록 만들자는 목적을 가지고 시작하였습니다.
<br/>

## 1. 팀원 소개
🙇‍♂️ 조민섭(조장) ([chominsub](https://github.com/chominsub)) <code>Backend</code>
* 작품 메인 화면 인기 작품, 최신 작품 각각 출력
* 작품 리스트(카테고리 구분), 상세 출력 및 해당 작품 좋아요 기능 구현
* 작가 마이페이지에서 작품 등록, 수정, 삭제 기능 구현
 
🙇‍♀️ **<code>Me</code> 강희수(조원) ([Kangssu](https://github.com//Kangheesu))** <code>Backend</code>
* 웹사이트의 전체적인 **HTML, CSS** 담당
* 위시리스트에 등록된 **작가들 리스트 출력** 및 회원들이 원하는 **작가 팔로우 + 팔로잉 기능 구현**
* 회원들이 팔로우한 작가들의 리스트는 **마이페이지에 출력 + 팔로잉 기능** 가능
* **스토리 리스트, 상세 출력** 및 **회원 댓글** + **작가 대댓글 기능 구현**
* **작가 개인 홈** 화면에서 작가가 등록한 **프로필, 스토리, 작품, 클래스 전부**
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
  <img src="https://img.shields.io/badge/java-007396?style=for-the-badge&logo=java&logoColor=white"> 
  <img src="https://img.shields.io/badge/Spring Boot-6DB33F?style=for-the-badge&logo=Spring Boot&logoColor=white">
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
 
## 3. 상세 기능 구현

<br/>

## 4. 트러블 슈팅
### 📌 작가 대댓글 기능
작가가 등록한 스토리에 회원들이 댓글을 남기면 해당 스토리를 작성한 작가만 대댓글을 남겨야 하는데<br/>
해당 회원 밑으로 등록되는게 아니라 아예 새로운 댓글로 등록이 되어버렸었다.

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
 
<br/>
 
## 5. 기능구현 외 서포트
### 📚 기능정리 피피티 작업
* 공동 작업을 진행하는데 있어서 가장 중요한 것은 **서로 간의 의사소통**이라고 생각한다.<br/>
  그렇기 때문에 첫 회의를 위한 피피티를 준비했으며, 팀원 5명 기준 핵심 기능들 및 사이트맵을 정리했다.
* 결과적으로 첫 회의에서 내가 만든 피피티에 대부분 **정리가 되어있어서 회의 진행이 순조로웠으며,**<br/>
  기능 분담까지 **속전속결로 진행**되었던 첫 회의여서 뿌듯했었다.
### 📚 발표 피피티 작업
* 프로젝트 진행 전, 최종 완성 이후에 각각 피피티로 내용 정리하여 발표를 해야 했었다.
* 프로젝트 **진행 전에는 위시리스트에 대한 간략 설명들과 어떤 기능을 구현할지에 관한 내용**을 정리하여 만들었고,<br/>
  프로젝트 **최종 완성 이후에는 기존 내용에서 DB 테이블, 완성된 기능들에  내용**을 정리해서 만들었다.
* 발표 피피티를 전부 맡아서 하다보니 팀원들이 어떤 기능 구현을 하는지 전부 파악이 되었고,<br/>
  위시리스트 웹 사이트에 대해 더 **구체적으로 이해하고 파악할 수 있는 경험이었던 것 같다.**
<br/>
  
## 6. 추후 보완사항
* - [ ] 전체 검색창 기능 구현
* - [ ] 작품, 클래스 장바구니 및 구매하기 기능 구현 마무리 진행
* - [ ] 결제한 클래스에 대한 동영상을 마이페이지에서 볼 수 있는 기능 구현
* - [x] ~~회원정보에서 회원 이미지 수정 안되는 부분 재수정~~

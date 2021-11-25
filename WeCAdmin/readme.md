## WecAdmin


#### user case
1. 인증/인가 없으면 /login
2. /signup 에서 user, admin 타입으로 회원가입
3. 회원가입 후 redirect:/login
  3.1 회원가입 logger.info 에 이름 출력 
4. 로그인
  4.1. user - main.html 만 접속가능
  4.2. admin - /admin 접속가능
5. /admin 페이지 왼쪽 아래에 접속한 계정 이름 표시


#### TODO
- email / username 둘 중에 하나 골라서 변수명 고치기
- service 쪽 interface 로 구현
- logger.info 에 로그인, 로그아웃 출력
- logger.info txt/json 으로 저장
- WeCList 프로젝트 참고해서 RDS 에서 값 가져오기 테스트 

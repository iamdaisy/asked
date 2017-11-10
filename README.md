# 회원가입
database 유저 정보를 저장하는것

1. User 테이블 생성
  - User model
2. User 정보 저장
  - 회원정보 받아 DB에 저장

# 로그인
session 유저 정보 검증을 거친 후 저장하는것

1. User 정보를 받는다.
2. 받은 User 정보와 DB의 User 정보가 일치하는지 확인
3. if 일치, session에 유저 정보를 넣는다.
        session[:email] = 유저정보
    else, 이유를 말해주고 로그인 안시킨다.
    
# 로그아웃
session.clear



## 1. question (질문자이름, 내용)
- controller : question
- action : index, show
    - index.erb : form 질문을 받는다. (익명선택)
    - show : 입력된 질문을 보여준다.
- model 
    - name(질문자이름)
    - content(내용)
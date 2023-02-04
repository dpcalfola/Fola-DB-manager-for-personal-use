# Fola-DB-manager-for-personal-use

개인용도로 사용할 DB 엔진 컨테이너들을 관리하기 위한 코드

<br><br>

### 계획:

1. Django 컨테이너를 Dockerfile로 하는 docker-compose 코드 작성
2. docker-compose 를 이용하여 사용할 DB 들의 컨테이너 생성
3. DB의 Data는 Docker volume에 보관
4. 다수의 DB 컨테이너를 1개의 Django 프로젝트에 연결
5. 외부 접속이 가능하도록 프로젝트 전체를 nas에서 호스팅


<br><br>


### 최종 목표: 
DB 엔진을 관리하는 Django 프로젝트


1. nas에 호스팅하여 외부에서 접속이 가능
2. DB 엔진의 종류는 2개 이상
3. 관리되는 DB의 데이터는 nas의 Docker volume에 보관
4. 여기서 관리되는 DB와 그의 Data는 다른 프로젝트에서도 사용이 가능

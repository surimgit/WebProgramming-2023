# 첫번째 SQL 주석 (한 줄 주석)
-- 두번째 SQL 주석 (한 줄 주석) -- 주석은 '-'뒤에 반드시 띄어쓰기가 포함되어야 함
/* 
세번째
SQL
주석 (여러 줄 주석) 
*/

## DDL ##

# 데이터베이스 생성 쿼리
# CREATE DATABASE 데이터베이스명;

CREATE DATABASE HOTEL;

# 생성된 데이터베이스 목록 보기
# SHOW DATABASES;
SHOW DATABASES;

# 데이터베이스 선택
# USE 데이터베이스명;
USE HOTEL;

# 테이블 생성
# CREATE TABLE 테이블명 (
#   필드명 필드타입 제약조건,
#   ...
# );

CREATE TABLE Reservation(
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(30) NOT NULL,
  reservationDate DATE NOT NULL,
  roomNumber INT
);

# 선택된 데이터베이스의 테이블을 조회

SHOW TABLES;

# 테이블 수정
# - 컬럼 추가
# ALTER TABLE 테이블명 ADD 필드명 필드타입 [제약조건];

ALTER TABLE Reservation ADD telNumber VARCHAR(20);

# - 컬럼 삭제
# ALTER TABLE 테이블명 DROP 필드명;

ALTER TABLE Reservation DROP roomNumber;

# - 컬럼 수정
# ALTER TABLE 테이블명 MODIFY COLUMN 필드명 필드타입 [제약조건];

ALTER TABLE Reservation MODIFY COLUMN reservationDate VARCHAR(20) NOT NULL;

# 테이블 삭제
# - DROP
# DROP TABLE 테이블명;
# 테이블의 존재 자체를 삭제

DROP TABLE Reservation;

# - TRUNCATE
# TRUNCATE TABLE 테이블명;
# 해당 테이블을 생성 직후의 상태로 되돌림 (DDL)

INSERT INTO Reservation(name, reservationDate) VALUES ('홍길동', now());
SELECT * FROM Reservation;

TRUNCATE TABLE Reservation;

# - DELETE FROM
# DELETE FROM 테이블명;
# 레코드만 삭제 (DML)

DELETE FROM Reservation;

### DML ###

# INSERT
# - 데이터 삽입
# INSERT INTO 테이블명(컬럼명1, 컬럼명2, ...) VALUES (값1, 값2, ...);
# INSERT INTO 테이블명 VALUES (값1, 값2, ...);
# 각 컬럼에 매칭되는 값을 순서에 맞게 작성하여야 함

INSERT INTO Reservation (name, reservationDate, roomNumber) VALUES ('김철수', '2023-01-17', 3134);
INSERT INTO Reservation VALUES (4, '이영희', '2022-10-11', 908);
# NOT NULL 조건으로 걸린 name 컬럼 값을 지정 하지 않았기 때문에 삽입 에러가 발생
INSERT INTO Reservation (reservationDate, roomNumber) VALUES ('1999-02-10', 1004);

# UPDATE
# - 데이터 수정
# UPDATE 테이블명 SET 컬럼1 = 값1, ... [WHERE 컬럼 = 값]
# WHERE : 조건을 지정해주는 키워드, 조건에 해당하는 대한 레코드에만 명령을 실행

# IS NULL : WHERE 조건에서 해당 컬럼이 NULL 인 레코드를 고를 때 사용
UPDATE Reservation SET roomNumber = 502 WHERE roomNumber IS NULL;
UPDATE Reservation SET reservationDate = '2023-01-30' WHERE name = '김철수';
UPDATE Reservation SET roomNumber = 1001;

# 데이터 삭제
# - DELETE
# DELETE FROM 테이블명 [WHERE 컬럼=값]

DELETE FROM Reservation WHERE id = 7;

INSERT INTO Reservation (name, reservationDate, roomNumber) VALUES ('고수', '2023-03-02', 904);
INSERT INTO Reservation (name, reservationDate) VALUES ('홍길동', '2023-09-07');
INSERT INTO Reservation VALUES (20, '고길동', '2023-03-02', 3414);

# 데이터 검색
# - SELECT
# SELECT 컬럼명1 [, 컬럼명2, ...] FROM 테이블명 [WHERE 조건];
# 지정한 테이블에서 선택한 컬럼을 검색할 때 사용

SELECT name FROM Reservation;
SELECT name, roomNumber FROM Reservation;
SELECT name, roomNumber FROM Reservation WHERE reservationDate = '2023-03-02';

# SELELCT * 으로 모든 컬럼을 선택 할 수 있음
SELECT * FROM Reservation;
SELECT * FROM Reservation WHERE name = '홍길동';

# WHERE 문 뒤에 비교연산자 및 논리연산자로 조건을 추가하여 검색할 수 있음
SELECT * FROM Reservation WHERE name = '홍길동' AND reservationDate < '2023-04-01';
SELECT * FROM Reservation WHERE name = '홍길동' OR reservationDate < '2023-04-01';
SELECT * FROM Reservation WHERE roomNumber IS NOT NULL;
SELECT * FROM Reservation WHERE roomNumber IS NULL;
SELECT * FROM Reservation WHERE name LIKE '%길동' AND roomNumber IS NOT NULL;

# 특정 컬럼의 중복 제거 DISTINCT
SELECT DISTINCT name, roomNumber FROM Reservation;

# 특정 컬럼을 기준으로 정렬 ORDER BY
# 옵션 - ASC : 오름차순 / DESC : 내림차순
SELECT * FROM Reservation ORDER BY reservationDate;
SELECT * FROM Reservation ORDER BY reservationDate DESC;
SELECT * FROM Reservation ORDER BY reservationDate DESC, roomNumber DESC;
SELECT * FROM Reservation ORDER BY roomNumber DESC, reservationDate DESC;

# 별칭 사용 AS
SELECT name AS eman, roomNumber FROM Reservation;
SELECT name, roomNumber FROM Reservation AS R;

# MySQL 데이터타입
# 문자열 타입 CHAR
# 고정길이 문자열 / 길이로 지정할 수 있는 값의 범위 0 ~ 255
ALTER TABLE Reservation ADD note CHAR(4);

# DESCRIBE 테이블명; : 테이블의 정보를 볼 수 있음
DESCRIBE Reservation;

SELECT char_length(note) FROM Reservation WHERE name = '노트';

INSERT INTO Reservation(name, reservationDate, note) VALUES ('노트', NOW(), ' ');

# 비교 연산자
# 동등 비교연산 =
# 좌항과 우항이 같으면 1을 반환 아니면 0을 반환
select 1 = 1;
select *from reservation;

# Reservation 테이블에서 roomNumber가 1001인 레코드의 모든 컬럼을 선택
select *from Reservation where roomNumber = 1001;

# not 연산 (!= <>)
# 좌항이 우항과 다르면 1을 반환 아니면 0을 반환

select 1 != 1, 1 <> 2;

# Reservation 테이블에서 roomNumber가 1001이 아닌 레코드의 모든 컬럼을 선택
select *from Reservation where roomNumber != 1001;

# 크다, 크거나 같다 연산 (>, >=)
# 좌항이 우항보다 크면 1을 반환 아니면 0을 반환
# 좌항이 우항보다 크거나 같으면 1을 반환 아니면 0을 반환
select 1 > 1, 1 >= 1;

# Reservation 테이블에서 reservationDate가 2023년 01월 01일 보다 크거나 같은 모든 컬럼을 선택
select *from Reservation where reservationDate >= '2023-01-01';

# 작다, 작거나 같다 연산 (<, <=)
# 좌항이 우항보다 작으면 1을 반환 아니면 0을 반환
# 좌항이 우항보다 작거나 같으면 1을 반환 아니면 0을 반환

select 1 < 1, 1 <= 1; 

# Reservation 테이블에서 reservationDate가 2023-02-28 보다 작거나 같은 (이전인) 모든 컬럼 선택
select *from Reservation where reservationDate <= '2023-02-28';

# null 확인 ( <=> )
# 좌항과 우항이 모두 null이면 1을 반환하고 아니면 0을 반환

select null <=> null;

# Reservation 테이블에서 roomNumber와 note가 모두 null인 레코드의 모든 컬럼 선택
select *from Reservation where roomNumber <=> note;

# 동등 연산 ( IS )
# 좌항이 우항과 같으면 1을 반환하고 아니면 0을 반환 
# 우항이 TRUE, FALSE, UNKNOWN 일때 사용
select true IS true;

# not 동등 연산( IS NOT )
# 좌항과 우항이 다르면 1을 반환하고 아니면 0을 반환
# 우항이 TRUE, FALSE, UNKNOWN 일때 사용
select false is not true;

# null 비교 연산 ( is null, is not null )
# 좌항이 null이면 1을 반환하고 아니면 0을 반환

select 1 is null;

# Reservation 테이블에서 note컬럼에 값이 없는 레코드의 모든 값을 선택
select *from Reservation where note is null;

# 좌항이 null이 아니면 1을 반환하고 아니면 0을 반환
select 1 is not null;

# Reservation 테이블에서 roomNumber 컬럼에 값이 존재하는 레코드의 모든 값을 선택
select *from Reservation where roomNumber is not null;

# 사이값 비교 연산 ( between a and b, not between a and b )
# 좌항이 a보다 크거나 같으면서 b보다 작거나 같으면 1을 반환하고 아니면 0을 반환
# 좌항이 a보다 작거나 b보다 크면 1을 반환하고 아니면 0을 반환

select 10 between 5 and 10, 10 not between 3 and 8;

# Reservation 테이블에서 reservationDate가 2023-01-01부터 2023-02-28까지인 레코드의 모든 컬럼을 선택
select *from Reservation where reservationDate between '2023-01-01' and '2023-02-28';

# IN 연산 (in, not in)
# 좌항이 우항에 해당하는 배열 값중 하나라도 같다면 1을 반환 아니면 0을 반환
# 좌항이 우항에 해당하는 배열 값이 포함되어 있지 않다면 1을 반환하고 아니면 0을 반환
select 1 in (1,2,3,4,5), 10 not in (1,2,3,4,5);

# reservation 테이블에서 name이 '홍길동', '고길동' 중 하나라도 해당되는 레코드의 모든 값을 선택
select *from Reservation where name in ('홍길동', '고길동');

# 논리 연산

# and 연산 (and, &&)
# 좌항과 우항이 모두 1이면 1, 아니면 0을 반환
# 여기서 비교되는 1과 0은 비교 연산의 결과
select 1 and 0;

# reservation 테이블에서 name이 '고길동'이면서 note 컬럼에 값이 저정되어 있지 않은 모든 컬럼을 선택
select *from Reservation where name = '고길동' && note is null;
# reservation 테이블에서 note컬럼의 값이 지정되어 있지 않고 reservationDate가 '2023-01-01' 부터 '2023-02-28'까지인 레코드의 모든 컬럼을 선택
select *from Reservation where note is null && (reservationDate between '2023-01-01' and '2023-02-28');

# or 연산 ( or, || )
# 좌항과 우항 중 하나라도 1이면 1을 반환하고 아니면 0을 반환
# 여기서 비교되는 1과 0은 비교 연산의 결과
select 1 || 0;

# Reservation 테이블 중 name이 '고수'이거나 note값이 존재하는 레코드이 모든 컬럼을 선택
select *from Reservation where name = '고수' || note is not null;

# XOR 연산 ( XOR ) 
# 좌항과 우항이 모두 다르면 1을 반환하고 같으면 0을 반환
select 1 xor 0;

# and 연산과 or 연산에서 주의할 점
# 실제로 구하고자 하는 값을 정확히 파악

# name이 고길동 이면서 note값이 존재하지 않거나 roomNumber 1000 이상인 레코드 중 모든 컬럼을 선택
select *from Reservation where name = '고길동' && (note is null || roomNumber >= 1000);

# ifnull(검사할 인수, null일 때의 값)
# 검사할 인수가 null이면 null 일때의 값을 반환

select ifnull(null, '값이 지정되지 않았습니다.');

# Reservation 테이블에서 모든 레코드를 중 모든 name과 roomNumber를 선택하는데 roomNumber가 null이면 '아직 방을 배정되지 않았습니다.'출력
select name, ifnull (roomNumber, '아직 방이 배정되지 않았습니다.') from Reservation;
select name, ifnull (roomNumber, 0) from Reservation;

# 패턴 매칭 (%, _)
# 데이터의 특정 패턴에 해당하는 데이터를 조건으로 사용하기 위한 용도
# like 연산자를 사용

# Reservation 테이블에서 name값 중 성이 고인 레코드에서 모든 컬럼을 선택
select *from Reservation where name like '고%';
select *from Reservation where name like '고_';

# %: 0개 이상의 문자를 대체하고 
# _: 1개의 문자를 대체

select *from Reservation where name like '%';

# foreign key
# 해당 테이블이 외부 테이블을 참조할 때 특정 컬럼을 외부 테이블의 컬럼 값으로 지정하는 키
# 참조의 기준

# constraint 제약조건명 foregin key (해당 필드에서 참조키로 지정할 컬럼)
# reference 참조할 테이블명(참조할 테이블의 기본키)

# 주의사항
# 1. 참조할 테이블이 존재해야함
# 2. 참조할 컬럼이 참조할 테이블의 기본키여야 함

# [constraint 제약조건명] 은 생략 가능

create table Room(
	roomNumber int primary key,
    roomSize int not null,
    roomName varchar(20) not null
);

create table Reservation2(
	id int auto_increment primary key,
    name varchar(30) not null,
    reservationDate date not null,
    note text,
    roomNumber int,
    
    constraint Reservation_RoomNumber_FK foreign key (roomNumber)
    references Room(roomNumber)
);

drop table reservation2;

# 참조 제약 조건을 설정하면
# 참조하는 테이블에 해당 컬럼의 값이 존재해야 참조 할 수 있음

insert into Reservation2(name, reservationDate, roomNumber)
values ('김철수', '2023-01-24', 2901);
insert into Reservation(name, reservationDate, roomNumber)
values ('김철수', '2023-01-24', 2901);

insert into Room values (2901, 28, 'vip');

select *from Reservation2;

delete from Room where roomNumber = 2901;

# on delete, on update
# 참조키로 지정된 필드에서 참조하는 데이터가 변경되거나 삭제되었을 때 대처를 설정 할 수 있도록 함

create table Reservation3 (
	id int auto_increment primary key,
    name varchar(30) not null,
    reservationDate date not null,
    note text,
    roomNumber int default 2901,
    
    # cascade: 옵션: 참조하는 데이터가 변경되거나 삭제되면 참조테이블에서도 삭제와 수정이 같이 이루어짐check
    constraint reservation3_FK foreign key (roomNumber)
    references Room(roomNumber)
    # on update cascade
    # on delete cascade
    
    # set null 옵션: 참조하는 데이터가 변경되거나 삭제되면 참조키가 설정된 필드의 값이 null로 변경됨
    # on update set null
    # on delete set null
    
    # no action 옵션: 참조하는 데이터가 변경되거나 삭제되어도 아무런 변화가 일어나지 않음
	# on update no action
    # on delete no action
	# mysql에서는 restrict와 동일


	# set default 옵션: 참조하는 데이터가 변경되거나 삭제되면 기본값으로 지정한 데이터로 변경됨
    # innodb engin에서는 불가능
    # on update set default
    # on delete set default
    
    # restrict 옵션: 참조하는 데이터가 변경되거나 삭제가 불가능
    # 기본값
    on update restrict
    on delete restrict

);
drop table Reservation3;

insert into Room values (2902, 28, 'vip');

insert into Reservation3(name, reservationDate, roomNumber)
values ('이영희', '2023-01-24', null);

update Reservation3 set roomNumber = 2902 where name = '김철수';

select *from Reservation3;
select *from Room;

update Room set roomNumber = 2903 where roomNumber = 2902;

delete from Room where roomNumber = 2902;

# join
# 여러 테이블을 조합하여 하나의 테이블로 표현하는 방법
# 일반적으로 select 구문에 사용됨

# inner join
# on 절에 조건을 만족하는 데이터만 가져옴
# select 컬럼명 from 테이블1명 inner join 테이블2명 on 조인 조건

select *from Reservation3 inner join room on reservation3.roomNumber = room.roomNumber;

# mysql에서는 inner join구문을 ,로 대체하고 on을 where로 대체해서 사용 가능

select *from Reservation3, room where reservation3.roomNumber = room.roomNumber;

# from 절에 두 개 이상의 테이블을 사용할 때 alias를 사용해서 별칭을 부여할 수 있음
select *from reservation3 as rv, room as rm where rv.roomNumber = rm.roomNumber;

# 두 테이블 이상을 from 절에서 사용할 때는
# 선택할 컬럼명 앞에 어떤 테이블의 컬럼인지를 직접 지정 해 주는 것이 좋음
# 동일한 컬럼명이 각 테이블에 존재하면 쿼리는 어떤 테이블의 컬럼인지 구분하지 못함
select rv.id, rv.name, rv.reservationDate, rv.note, rm.roomNumber, rm.roomSize, rm.roomName
from Reservation3 as rv, room as rm
where rv.roomNumber = rm.roomNumber;

# left join
# 왼쪽 테이블에 참조키를 기준으로 조인 결과를 나열

# select 컬럼명 from 테이블1명 left join  테이블2명 on 조인조건 [where 조건]
select *from reservation3 as rv left join room as rm on rv.roomNumber = rm.roomnumber;

# right join
# 오른쪽 테이블에 참조키를 기준으로 조인 결과를 나열

# select 컬럼명 from 테이블1명 right join 테이블2명 on 조인조건 [where 조건]
select *from reservation3 as rv right join room as rm on rv.roomNumber = rm.roomNumber; 


# 서브 쿼리
# 테이블의 검색 결과를 조건으로 사용하거나 from절에서 새로운 테이블로 사용할 수 있도록 한 것

# where 절에서 사용하는 방법

# select 컬럼명 from 테이블a명
# where 컬럼명 = (select 컬럼명 from 테이블b명 where 조건)
# 또는 where 컬럼명 in (select 컬럼명 from 테이블b명 where 조건)

select *from Reservation3
where roomNumber = (
	select roomNumber
    from room
    where roomNumber = 2902
);

select *from reservation3
where roomNumber in (
	select roomNumber
    from room
);

# from절에서 서브쿼리를 사용하는 방법

# select 컬럼명
# from (
# 	select 컬럼명 from 테이블 where 조건
#)
# where 조건;

# view
# 미리 선언된 쿼리를 사용해서 가상의 테이블을 만들어 보여주는 것
# create view 뷰이름 as select 쿼리
create view reservationInfo as
select rv.id, rv.name, rv.reservationDate, rv.note, rm.roomNumber, rm.roomSize, rm.roomName
from Reservation3 as rv, room as rm
where rv.roomNumber = rm.roomNumber;

select *from reservationInfo where name = '김철수';

select *from (
	select rv.id, rv.name, rv.reservationDate, rv.note, rm.roomNumber, rm.roomSize, rm.roomName
	from Reservation3 as rv, room as rm
	where rv.roomNumber = rm.roomNumber
) as T
where name = '김철수';

drop view ReservationInfo;


















































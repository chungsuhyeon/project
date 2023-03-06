select * from tab;

-- 음식점 : 10, 관광지 : 20, 쇼핑 : 30, 티켓 : 40
-- 한식 : 101, 중식 : 102, 일식 : 103, 양식 : 104, 카페 : 105, 기타 : 110
-- 명소 : 201, 자연 : 202, 관광 : 203, 엔터 : 204, 놀거리 : 205, 기타 : 210
-- 백화점 : 301, 면세점 : 302, 시장 : 303, 상점 : 304, 기타 : 310
-- 연극 : 401, 뮤지컬 : 402, 콘서트 : 403, 영화 : 404, 기타 : 410

-- 찜 리스트 insert
select * from jjim;
select * from maindb;
select * from mapdb;
select * from userboard;

insert into userboard values('aa', '테스트', '1234', 'mypage', '대한민국', '010-1234-4567', '1900/01/01', 2, 1, 1);
insert into userboard values('bb', '두번째 회원가입', '1234', '본명', '일본', '010-6543-7895', '2001/08/18', 1, 2, 3);
insert into userboard values('cc', '테스트2', '1234', '구팔이', '일본', '010-1212-3454', '1998/09/18', 2, 3, 2);

insert into maindb values(1000, '폴바셋 강남삼성타운점', 10, 105, '서초구', '서울 서초구 서초대로78길 22 홍우제2빌딩 1층', '07:00', '22:00', '02-523-5656', '배달가능', '폴바셋_강남.jpg');
insert into mapdb values(1000, 37.4958701, 127.0274141);
insert into jjim values('aa', 1000, '폴바셋 강남삼성타운점', 10, 105, '서초구', '아이스크림');

insert into maindb values(1001, '에그드랍 강남본점', 10, 104, '서초구', '서울 서초구 강남대로55길 24 풍림아이원 매직오피스텔 1층', '07:00', '22:00', '02-598-8833', '혼밥가능', '에그드랍_강남본점.png');
insert into mapdb values(1001, 37.4954415, 127.0256231);
insert into jjim values('aa', 1001, '에그드랍 강남본점', 10, 104, '서초구', '달걀 샌드위치');

insert into maindb values(1002, '카카오프렌즈 강남 플래그십 스토어', 30, 304, '서초구', '서울 서초구 강남대로 429 유창빌딩 1~2층', '10:30', '22:00', '02-6494-1100', ' ', '카카오프렌즈 강남스토어.png');
insert into mapdb values(1002, 37.500821, 127.0257906);
insert into jjim values('aa', 1002, '카카오프렌즈 강남 플래그십 스토어', 30, 304, '서초구', '노티드 입점');

insert into maindb values(1003, '역삼소나무공원', 20, 202, '서초구', '서울 강남구 역삼동 836-21', ' ', ' ', ' ', ' ', 'noImg.jpg');
insert into mapdb values(1003, 37.4909452, 127.033686);
insert into jjim values('aa', 1003, '역삼소나무공원', 20, 202, '서초구', '노티드 입점');

--insert into maindb values(1004, '올림픽공원 올림픽홀', 40, 403, '송파구', '서울 송파구 방이동 88-2', ' ', ' ', ' ', '주차, 예약, 남/녀 화장실 구분', 'Olympic_Hall.jpg');
--insert into mapdb values(1004, 37.5147044, 127.1275107);
--insert into jjim values('aa', 1004, '역삼소나무공원', 40, 403, '서초구', '노티드 입점');

commit;
s
select user_pw, user_nick from userboard where user_id = 'aa';

select * from jjim where user_id = 'aa';
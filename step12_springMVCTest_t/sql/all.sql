
drop table users cascade constraints;
drop table city_country cascade constraints;
drop table theme cascade constraints;
drop table festival cascade constraints;


create table users(
	id varchar2(20) primary key not null,
	pw varchar2(20) not null,
	name varchar2(20) not null,
	phone varchar2(20) not null
);

create table city_country(
	city varchar2(20) primary key not null,
	country varchar2(20) not null
);

create table theme(
	themeNum varchar2(20) primary key not null,
	themeName varchar2(20) not null
);

create table festival(
	festivalNum varchar2(20) primary key not null,
	festivalName varchar2(50) not null,
	city varchar2(50) not null,
	summary varchar2(1000) not null,
	festivalStartDay date not null,
	festivalEndDay date not null,
	mapUrl varchar2(2000) not null,
	homepage varchar2(2000) not null,
	adress varchar2(1000) not null,
	detail varchar2(4000) not null
);

insert into users values('test@google.com', '0000', '관리자', '010-7105-9326');



insert into festival values(
'02001', 
'2015 도쿄 오토살롱', 
'일본지바 현', 
'프랑크푸르트, 디트로이트, 파리 오토살롱과 함께 세계 4대 모터쇼에 속한다.',
'2015-01-09', 
'2015-01-11', 
'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d3242.2274154759743!2d140.03671634999998!3d35.646768249999994!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6022821e2aaddae1%3A0x3ce2ffc5298f27f!2z7J2867O4IOOAkjI2MS0wMDIzIENoaWJhLWtlbiwgQ2hpYmEtc2hpLCBNaWhhbWEta3UsIE5ha2FzZSwgMiBDaG9tZSDluZXlvLXjg6Hjg4Pjgrs!5e0!3m2!1sko!2skr!4v1423633149187', 
'http://www.tokyoautosalon.jp/2015/', 
'〒261-0023 Chiba-ken, Chiba-shi, Mihama-ku, Nakase, 2 Chome', 
'도쿄오토살롱은 아시아 최대 자동차 부품 및 튜닝 박람회로 완성차와 튜닝카는 물론 각종 차량 부품과 튜닝 용품이 전시된다. 글로벌 타이어 메이커 및 완성차 업체, 부품업체 등 총 1100여개의 업체가 참가해 다양한 신제품과 기술력을 선보인다. 일본의 튜닝산업 시장 규모는 지난해 기준 14조원에 달할 정도로 활성화돼 있으며, 다양한 튜닝 및 커스텀 용품을 볼 수 있는 도쿄오토살롱에는 매년 약 25만~30만명의 관람객이 찾으며 큰 관심을 모으고 있다.'
);
insert into festival values(
'02002', 
'삿포로 눈 축제', 
'일본훗카이도삿포로', 
'홋카이도(北海道) 삿포로(札幌)에서 매년 2월에 열리는 겨울 축제',
'2015-02-05', 
'2015-02-11', 
'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d3242.2274154759743!2d140.03671634999998!3d35.646768249999994!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6022821e2aaddae1%3A0x03ce2ffc5298f27f!2z7J2867O4IOOAkjI2MS0wMDIzIENoaWJhLWtlbiwgQ2hpYmEtc2hpLCBNaWhhbWEta3UsIE5ha2FzZSwgMiBDaG9tZSDluZXlvLXjg6Hjg4Pjgrs!5e0!3m2!1sko!2skr!4v1423632422308',
'http://www.snowfes.com/', 
'Odori Park Odorinishi Chuo Ward, Sapporo, Hokkaido Prefecture', 
'삿포로 눈 축제(さっぽろ雪まつり, Sapporo Snow Festival)는 매년 2월 5일부터 7일간 일본 홋카이도 삿포로에서 열리는 일본 최대의 겨울 축제다. 축제는 1950년 삿포로의 중 · 고등학생들이 오도리 공원(大通公園)에 눈 조각 작품을 만든 데서 시작해 2013년에 제64회를 맞이했다.'
);
insert into festival values(
'02003', 
'후지 락 페스티벌', 
'일본니카타 현', 
'일본 혼슈 니카타현 유자와지방에서 매년 7월 열리는 음악 축제',
'2015-07-24', 
'2015-07-26', 
'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d3242.2274154759743!2d140.03671634999998!3d35.646768249999994!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6022821e2aaddae1%3A0x03ce2ffc5298f27f!2z7J2867O4IOOAkjI2MS0wMDIzIENoaWJhLWtlbiwgQ2hpYmEtc2hpLCBNaWhhbWEta3UsIE5ha2FzZSwgMiBDaG9tZSDluZXlvLXjg6Hjg4Pjgrs!5e0!3m2!1sko!2skr!4v1423632422308',
'http://www.snowfes.com/', 
'Odori Park Odorinishi Chuo Ward, Sapporo, Hokkaido Prefecture', 
'일본 혼슈 니카타현 유자와 지방에서 매년 7월 열리는 락음악 축제로 3일간 진행된다. 200명이상의 뮤지션이 참여하는 국제적인 축제로 1997년 1회 축제가 후지산에서 시작되어 이름이 후지 락 페스티벌이다. 1999년부터는 내바리조트에서 실시되고 있다. 교외 산속에서 진행되는 특수한 형태의 축제로 '독립','협동','자연에 대한 존경'을 주제로 진행된다.'
);
insert into festival values(
'02004', 
'서머 소닉 페스티벌', 
'일본오사카 부오사카', 
'일본 혼슈 지바지방과 오사카지방에서 매년 8월 개최되는 음악축제',
'2015-08-16', 
'2015-08-17', 
'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d26252.341020091575!2d135.398684!3d34.666252!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0000000000000000%3A0x05b625253bfb03aa!2z6Iie5rSy44OZ44O844K544Oc44O844Or44K544K_44K444Ki44Og!5e0!3m2!1sja!2sus!4v1423636102817',
'http://www.summersonic.com/2015/', 
'오사카', 
'일본 혼슈 지바현 지바지방과 세토나이카이 동쪽 오사카지방에서 매년 8월 개최되는 음악축제이다. 2000년부터 시작되었다. 이틀간 지바와 오사카에서 동시에 공연이 진행된다. 산, 하늘, 해변 등의 자연을 테마로 한 무대가 구성되고, 음식점과 댄스 공간도 마련되어 있다. 무대에는 30개 이상의 일본의 주요 락밴드들과 인디밴드들이 참여하며, 세계적인 가수들도 함께 한다.'
);
insert into festival values(
'02005', 
'오봉', 
'일본', 
'매년 양력 8월 15일을 중심으로 지내는 일본 최대의 명절',
'2015-08-11', 
'2015-08-19', 
'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d207444.30298532968!2d139.74138045!3d35.66919!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x60188b857628235d%3A0xcdd8aef709a2b520!2z7J2867O4IOuPhOy_hA!5e0!3m2!1sko!2skr!4v1424074821585',
' ', 
'japan', 
'오봉(お盆)은 매년 양력 8월 15일을 중심으로 치러지는 일본의 명절로, 조상의 영혼을 맞아들여 대접하고 모두의 건강과 행복을 기원하는 날이다. 새해 첫날인 오쇼가츠(お正月)와 함께 일본 최대의 명절로 꼽히며 귀성 인파와 휴가 행렬이 장관을 이룬다.'
);
insert into festival values(
'02006', 
'간다 마츠리', 
'일본도쿄 도', 
'매년 5월 15일에 가장 가까운 주말, 도쿄 간다묘진신사를 중심으로 열리는 민속 축제',
'2015-05-16', 
'2015-05-17', 
'https://www.google.com/maps/embed?pb=!1m16!1m12!1m3!1d3239.9861676981377!2d139.76793199999997!3d35.701958000000005!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!2m1!1zKOelnueUsOaYjuelnuelnuekvik!5e0!3m2!1sko!2skr!4v1424075002903',
' ', 
'Kanda Shrine 2-16-2 Sotokanda Chiyoda, Tokyo 101-0021', 
'간다 마츠리(神田祭)는 일본 도쿄(東京) 치요다구(千代田區) 간다(神田) 지역에서 매년 5월 15일경에 열리는 민속 축제로, 에도막부(江戶幕府)의 초대 쇼군(將軍, 장군)인 도쿠가와 이에야스(德川家康)가 1603년 세키가하라 전투(関が原の戦い)에서 승리한 것을 기념해 개최한 축제에서 비롯됐다. 매년 열리던 축제는 1681년부터 격년제로 바뀌어 홀수 해에만 열리게 됐고, 9월이던 개최 시기는 1892년부터 5월로 변경됐다. 1940년부터 다시 짝수 해에도 간다 마츠리가 열리고는 있지만, 주요 행사는 홀수 해에 펼쳐진다.'
);
insert into festival values(
'02007', 
'하카타 기온 야마카사', 
'일본후쿠오카 현하카타 역', 
'매년 7월 1일부터 15일에 걸쳐 후쿠오카 구시다신사를 중심으로 열리는 민속 축제',
'2015-07-01', 
'2015-07-16', 
'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d3323.5896547052184!2d130.42062199999998!3d33.590002!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x354191c7e42f040d%3A0x168a4ca32b854693!2z7ZWY7Lm07YOAIOyXrSDvvIhGdWt1b2thIFByZWZlY3R1cmXvvIk!5e0!3m2!1sko!2skr!4v1424075207347',
' ', 
'후쿠오카 시 하카타 구 구시다신사(櫛田神社) 및 하카타 시내', 
'하카타 기온 야마카사(博多祇園山笠)는 일본 후쿠오카(福岡)에서 매년 7월 1일에서 15일까지 개최되는 민속 축제로, 구시다신사(櫛田神社, 헤이안 시대인 757년에 세워진 신사로 후쿠오카 하카타 역 근처에 위치)를 중심으로 지역 주민들이 자발적으로 참여해 펼치는 제례 행사다. 1241년에 처음 시작한 이래 770년 넘게 이어진 하카타 기온 야마카사는 후쿠오카 지역 최대 축제이자 일본의 주요무형민속문화재다.'
);
insert into festival values(
'02002', 
'삿포로 눈 축제', 
'일본훗카이도삿포로', 
'홋카이도(北海道) 삿포로(札幌)에서 매년 2월에 열리는 겨울 축제',
'2015-02-05', 
'2015-02-11', 
'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d3242.2274154759743!2d140.03671634999998!3d35.646768249999994!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6022821e2aaddae1%3A0x03ce2ffc5298f27f!2z7J2867O4IOOAkjI2MS0wMDIzIENoaWJhLWtlbiwgQ2hpYmEtc2hpLCBNaWhhbWEta3UsIE5ha2FzZSwgMiBDaG9tZSDluZXlvLXjg6Hjg4Pjgrs!5e0!3m2!1sko!2skr!4v1423632422308',
'http://www.snowfes.com/', 
'Odori Park Odorinishi Chuo Ward, Sapporo, Hokkaido Prefecture', 
'삿포로 눈 축제(さっぽろ雪まつり, Sapporo Snow Festival)는 매년 2월 5일부터 7일간 일본 홋카이도 삿포로에서 열리는 일본 최대의 겨울 축제다. 축제는 1950년 삿포로의 중 · 고등학생들이 오도리 공원(大通公園)에 눈 조각 작품을 만든 데서 시작해 2013년에 제64회를 맞이했다.'
);
insert into festival values(
'02002', 
'삿포로 눈 축제', 
'일본훗카이도삿포로', 
'홋카이도(北海道) 삿포로(札幌)에서 매년 2월에 열리는 겨울 축제',
'2015-02-05', 
'2015-02-11', 
'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d3242.2274154759743!2d140.03671634999998!3d35.646768249999994!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6022821e2aaddae1%3A0x03ce2ffc5298f27f!2z7J2867O4IOOAkjI2MS0wMDIzIENoaWJhLWtlbiwgQ2hpYmEtc2hpLCBNaWhhbWEta3UsIE5ha2FzZSwgMiBDaG9tZSDluZXlvLXjg6Hjg4Pjgrs!5e0!3m2!1sko!2skr!4v1423632422308',
'http://www.snowfes.com/', 
'Odori Park Odorinishi Chuo Ward, Sapporo, Hokkaido Prefecture', 
'삿포로 눈 축제(さっぽろ雪まつり, Sapporo Snow Festival)는 매년 2월 5일부터 7일간 일본 홋카이도 삿포로에서 열리는 일본 최대의 겨울 축제다. 축제는 1950년 삿포로의 중 · 고등학생들이 오도리 공원(大通公園)에 눈 조각 작품을 만든 데서 시작해 2013년에 제64회를 맞이했다.'
);
insert into festival values(
'02002', 
'삿포로 눈 축제', 
'일본훗카이도삿포로', 
'홋카이도(北海道) 삿포로(札幌)에서 매년 2월에 열리는 겨울 축제',
'2015-02-05', 
'2015-02-11', 
'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d3242.2274154759743!2d140.03671634999998!3d35.646768249999994!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6022821e2aaddae1%3A0x03ce2ffc5298f27f!2z7J2867O4IOOAkjI2MS0wMDIzIENoaWJhLWtlbiwgQ2hpYmEtc2hpLCBNaWhhbWEta3UsIE5ha2FzZSwgMiBDaG9tZSDluZXlvLXjg6Hjg4Pjgrs!5e0!3m2!1sko!2skr!4v1423632422308',
'http://www.snowfes.com/', 
'Odori Park Odorinishi Chuo Ward, Sapporo, Hokkaido Prefecture', 
'삿포로 눈 축제(さっぽろ雪まつり, Sapporo Snow Festival)는 매년 2월 5일부터 7일간 일본 홋카이도 삿포로에서 열리는 일본 최대의 겨울 축제다. 축제는 1950년 삿포로의 중 · 고등학생들이 오도리 공원(大通公園)에 눈 조각 작품을 만든 데서 시작해 2013년에 제64회를 맞이했다.'
);


commit;
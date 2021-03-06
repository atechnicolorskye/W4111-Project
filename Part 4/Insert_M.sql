INSERT INTO Artist VALUES(06, 'Bananas', '{"y":1993, "m":6, "d":6}', 'USA');
INSERT INTO Artist VALUES(07, 'Jackson', '{"y":1996, "m":3, "d":23}', 'England');
INSERT INTO Artist VALUES(08, 'Rahman', '{"y":2013, "m":5, "d":31}', 'India');
INSERT INTO Artist VALUES(09, 'Apples', '{"y":2003, "m":8, "d":21}', 'China');
INSERT INTO Artist VALUES(10, 'Eminem', '{"y":1999, "m":7, "d":11}', 'USA');

INSERT INTO Album VALUES(06, 'Hits', '{"h":0, "m": 58, "s": 06}', 8);
INSERT INTO Album VALUES(07, 'Welcome', '{"m": 45, "s": 45}', 5);
INSERT INTO Album VALUES(08, 'Hits', '{"m": 55, "s": 30}', 6);
INSERT INTO Album VALUES(09, 'Hits', '{"h": 1, "m": 33, "s": 26}', 7);
INSERT INTO Album VALUES(10, 'Hits', '{"h": 1, "m": 54, "s": 46}', 10);

INSERT INTO Song VALUES(06, 'singer', 3, '{"h":0, "m":5, "s":6', 'Bananas');
INSERT INTO Song VALUES(07, 'hello', 5, '{"m": 5, "s": 45}', 'Jackson');
INSERT INTO Song VALUES(08, 'uptown', 6, '0:04:56', 'Rahman');
INSERT INTO Song VALUES(09, 'funk', 2, '0:07:23', 'Apples');
INSERT INTO Song VALUES(10, 'purple hills', 4, '0:05:06', 'Eminem');

INSERT INTO Genre VALUES(06,'Punk rock');
INSERT INTO Genre VALUES(07,'Alternate rock');
INSERT INTO Genre VALUES(08,'Metal');
INSERT INTO Genre VALUES(09,'Blues');
INSERT INTO Genre VALUES(10,'Jazz');

INSERT INTO Label VALUES(06, 'Alters');
INSERT INTO Label VALUES(07, 'Future');
INSERT INTO Label VALUES(08, 'Past');
INSERT INTO Label VALUES(09, 'Present');
INSERT INTO Label VALUES(10, 'Every');

INSERT INTO Playlist VALUES(06, 'play6', '2016-01-11', 10, '1:23:23', 'Maruthi');
INSERT INTO Playlist VALUES(07, 'play7', '2016-04-12', 9, '56:23', 'Sky');
INSERT INTO Playlist VALUES(08, 'play8', '2016-05-23', 8, '1:43:00', 'Evan');
INSERT INTO Playlist VALUES(09, 'play9', '2016-02-13', 12, '59:59', 'Ethan');
INSERT INTO Playlist VALUES(10, 'play10', '2015-09-10', 6, '56:40', 'Boyu');

INSERT INTO Concert VALUES(06,'Tour 6', '2015-02-17 09:38:53.556804+00', 'Atlanta');
INSERT INTO Concert VALUES(07,'Tour 7', '2014-01-07 09:38:53.556804+00', 'New York');
INSERT INTO Concert VALUES(08,'Tour 8', '2013-06-27 15:48:53.556804+00', 'Chicago');
INSERT INTO Concert VALUES(09,'Tour 9', '2014-05-19 18:00:00.556804+00', 'Dallas');
INSERT INTO Concert VALUES(10,'Tour 10', '2015-02-04 21:30:00.556804+00', 'Atlanta');

INSERT INTO performs_at VALUES(06, 06);
INSERT INTO performs_at VALUES(07, 08);
INSERT INTO performs_at VALUES(08, 09);
INSERT INTO performs_at VALUES(09, 10);
INSERT INTO performs_at VALUES(10, 07);

INSERT INTO contributes_to VALUES(06, 06, 06);
INSERT INTO contributes_to VALUES(07, 08, 09);
INSERT INTO contributes_to VALUES(09, 07, 08);
INSERT INTO contributes_to VALUES(08, 09, 10);
INSERT INTO contributes_to VALUES(10, 10, 07);

INSERT INTO belongs_to VALUES(06, 07);
INSERT INTO belongs_to VALUES(08, 09);
INSERT INTO belongs_to VALUES(09, 10);
INSERT INTO belongs_to VALUES(10, 06);
INSERT INTO belongs_to VALUES(07, 08);

INSERT INTO release_ VALUES(06, 07, '2014-09-07');
INSERT INTO release_ VALUES(07, 08, '2015-03-19');
INSERT INTO release_ VALUES(08, 10, '2013-02-25');
INSERT INTO release_ VALUES(09, 08, '2012-10-23');
INSERT INTO release_ VALUES(10, 09, '2014-06-12');

INSERT INTO has_signed VALUES(06,07);
INSERT INTO has_signed VALUES(07,08);
INSERT INTO has_signed VALUES(08,09);
INSERT INTO has_signed VALUES(09,10);
INSERT INTO has_signed VALUES(10,06);

INSERT INTO contains_ VALUES(06,10);
INSERT INTO contains_ VALUES(07,09);
INSERT INTO contains_ VALUES(09,07);
INSERT INTO contains_ VALUES(10,08);
INSERT INTO contains_ VALUES(08,06);


select * from artist a, label l, has_signed h where a.a_id=h.a_id and l.l_id=h.l_id and (a.a_year->>'y')::int >2000; 
select * from artist a, album al, contributes_to c where a.a_id=c.a_id and c.al_id=al.al_id and ( (al.al_dur->>'m')::int >58 or (al.al_dur->>'h')::int >=1 );
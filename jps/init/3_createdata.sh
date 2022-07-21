psql -U jps_user -d jpsdb<<“EOSQL”

CREATE SEQUENCE jps_user.kaiin_id_seq MAXVALUE 99999999 CYCLE;
CREATE SEQUENCE jps_user.uke_no_seq MAXVALUE 99999999 CYCLE;
CREATE SEQUENCE jps_user.pt_no_seq MAXVALUE 99999999 CYCLE;
CREATE SEQUENCE jps_user.pp_no_seq MAXVALUE 99999999 CYCLE;
CREATE SEQUENCE jps_user.linum_no_seq MAXVALUE 99999999 CYCLE;
CREATE SEQUENCE jps_user.sz_no_seq MAXVALUE 99999999 CYCLE;


CREATE TABLE jps_user.member_master
(
kaiin_id			integer NOT NULL,
gd_name			varchar(10)		,
tel_no			varchar(15)		,
add_no			varchar(10)		,
add1_name		varchar(32)		,
add2_name		varchar(32)		,
add3_name		varchar(32)		,
CONSTRAINT member_master_pk PRIMARY KEY(kaiin_id)
);

CREATE TABLE jps_user.memberclient_master
(
kaiin_id			integer NOT NULL,
pp_no  		integer NOT NULL,
pp_name			varchar(50)		,
tel_no			varchar(15)		,
add_no			varchar(10)		,
add1_name		varchar(32)		,
add2_name		varchar(32)		,
add3_name		varchar(32)		,
CONSTRAINT memberclient_master_pk PRIMARY KEY(pp_no,kaiin_id)
);


CREATE TABLE jps_user.order_tran
(
uke_no			integer NOT NULL,
receipt_date	timestamp without time zone			,
delivery_date	timestamp without time zone			,
kaiin_id			integer,
nos_no			varchar(4)		,
sz_date			varchar(200)		,
add_no			varchar(10)		,
add1_name		varchar 	,
add2_name		varchar 		,
add3_name		varchar 		,
tel_no			varchar(11)		,
CONSTRAINT order_tran_pk PRIMARY KEY(uke_no)
);

CREATE TABLE jps_user.orderdetail_tran
(
uke_no			integer NOT NULL,
linum_no	    integer NOT NULL,			
sz_no	        integer NOT NULL,
nos_date			varchar(4) ,
unipri_no			varchar(200)	,
orice_no		varchar(5) 	,
pos_no		varchar(4)		,
CONSTRAINT orderdetail_tran_pk PRIMARY KEY(sz_no,uke_no,linum_no)
);


CREATE TABLE jps_user.unitprice_tran
(
sz_no       integer NOT NULL    ,
sz_date     varchar(200)    ,
unipri_no   varchar(200)     ,
CONSTRAINT unitprice_tran_pk PRIMARY KEY(sz_no)
);

commit;


INSERT INTO jps_user.member_master(kaiin_id,gd_name,tel_no,add_no,add1_name,add2_name,add3_name) VALUES(1,'広報','03-3252-5571','101-004','東京都','千代田区鍛治町','鍛治町1617');
INSERT INTO jps_user.member_master(kaiin_id,gd_name,tel_no,add_no,add1_name,add2_name,add3_name) VALUES(2,'ヤカ','047-385-6111','270-2255','千葉県','松戸市','中新田55');
INSERT INTO jps_user.member_master(kaiin_id,gd_name,tel_no,add_no,add1_name,add2_name,add3_name) VALUES(3,'ALIVE','03-5845-9410','121-0012','東京都','足立区','青井6－11－12グランシャリオ1F');
INSERT INTO jps_user.member_master(kaiin_id,gd_name,tel_no,add_no,add1_name,add2_name,add3_name) VALUES(4.,'CFY柏営業所','04-7170-2096','277-0005','千葉県','柏市','柏2－5－8セントラルビル5階');
INSERT INTO jps_user.member_master(kaiin_id,gd_name,tel_no,add_no,add1_name,add2_name,add3_name) VALUES(5,'広報','03-3252-5571','101-004','東京都','千代田区鍛治町','鍛治町1617');


INSERT INTO jps_user.memberclient_master(kaiin_id,pp_no,pp_name,tel_no,add_no,add1_name,add2_name,add3_name) VALUES(1,1,'やすだ幕張店','043-276-5510','262-0032','千葉県','千葉市花見川区','幕張77103');
INSERT INTO jps_user.memberclient_master(kaiin_id,pp_no,pp_name,tel_no,add_no,add1_name,add2_name,add3_name) VALUES(1,2,'やすだ南流山店','04-7158-0163','270-0163','千葉県','流山市','南流山1-9-17');
INSERT INTO jps_user.memberclient_master(kaiin_id,pp_no,pp_name,tel_no,add_no,add1_name,add2_name,add3_name)VALUES(1,3,'やすだ戸田店','048-447-7525','335-0021','埼玉県','戸田市','新曽750');
INSERT INTO jps_user.memberclient_master(kaiin_id,pp_no,pp_name,tel_no,add_no,add1_name,add2_name,add3_name) VALUES(1,4,'やすだ三郷店','048-952-0723','341-0031','埼玉県','三郷市','岩野木1－1');
INSERT INTO jps_user.memberclient_master(kaiin_id,pp_no,pp_name,tel_no,add_no,add1_name,add2_name,add3_name) VALUES(1,5,'やすだ相模原店','042-752-0961','229-0039','神奈川県','相模原市','中央区中央1－13－7');
INSERT INTO jps_user.memberclient_master(kaiin_id,pp_no,pp_name,tel_no,add_no,add1_name,add2_name,add3_name) VALUES(2,1,'キコーナ平井店','03-6657-4333','132-0035','東京都','江戸川区','平井779');
INSERT INTO jps_user.memberclient_master(kaiin_id,pp_no,pp_name,tel_no,add_no,add1_name,add2_name,add3_name) VALUES(2,2,'キコーナ草加店','048-944-8777','340-0055','埼玉県','草加市','清門3－1－13');
INSERT INTO jps_user.memberclient_master(kaiin_id,pp_no,pp_name,tel_no,add_no,add1_name,add2_name,add3_name) VALUES(2,3,'キコーナ柏店','04-7131-0337','277-0871','千葉県','柏市','若柴358');
INSERT INTO jps_user.memberclient_master(kaiin_id,pp_no,pp_name,tel_no,add_no,add1_name,add2_name,add3_name) VALUES(2,4,'キコーナ溝の口店','044-829-2301','213-0001','神奈川県','川崎市','高津区溝口1－12－1');
INSERT INTO jps_user.memberclient_master(kaiin_id,pp_no,pp_name,tel_no,add_no,add1_name,add2_name,add3_name) VALUES(2,5,'キコーナ大船店','0467-42-1801','247-0061','神奈川県','鎌倉市','台1－13－32');
INSERT INTO jps_user.memberclient_master(kaiin_id,pp_no,pp_name,tel_no,add_no,add1_name,add2_name,add3_name) VALUES(3,1,'ビーム昭島店','042-543-4594','196-0021','東京都','昭島市','武蔵野2－9－3');
INSERT INTO jps_user.memberclient_master(kaiin_id,pp_no,pp_name,tel_no,add_no,add1_name,add2_name,add3_name) VALUES(3,2,'ビーム東大和店','042-563-1244','207-0021','東京都','東大和市','立野4－486');
INSERT INTO jps_user.memberclient_master(kaiin_id,pp_no,pp_name,tel_no,add_no,add1_name,add2_name,add3_name) VALUES(3,3,'ビーム高倉店','042-646-3849','192-0033','東京都','八王子市','高倉町51－11');
INSERT INTO jps_user.memberclient_master(kaiin_id,pp_no,pp_name,tel_no,add_no,add1_name,add2_name,add3_name) VALUES(4,1,'キズナエイト柏店','04-7148-7111','277-0861','千葉県','柏市','高田1332－5');
INSERT INTO jps_user.memberclient_master(kaiin_id,pp_no,pp_name,tel_no,add_no,add1_name,add2_name,add3_name) VALUES(4,2,'チャレンジャー流山店','04-7159-9993','270-0172','千葉県','流山市','桐ヶ谷241－1');
INSERT INTO jps_user.memberclient_master(kaiin_id,pp_no,pp_name,tel_no,add_no,add1_name,add2_name,add3_name) VALUES(5,1,'やすだ幕張店','043-276-5510','262-0032','千葉県','千葉市花見川区','幕張77103');
INSERT INTO jps_user.memberclient_master(kaiin_id,pp_no,pp_name,tel_no,add_no,add1_name,add2_name,add3_name) VALUES(5,2,'やすだ南流山店','04-7158-0163','270-0163','千葉県','流山市','南流山1-9-17');


INSERT INTO jps_user.order_tran(uke_no,receipt_date,delivery_date,kaiin_id,nos_no,sz_date,add_no,add1_name,add2_name,add3_name,tel_no) VALUES(1,'2022-02-13','2022-02-15','1',null,'B0(1456×1030)''B1(1030×728)''B2(728×515)''B3(515×364)''B4(364×257)''A0(1189×841)''A1(841×594)''A2(594×420)''A3(420×297)''A4(297×210)''その他(変形)',null,null,null,null,'tel');
INSERT INTO jps_user.order_tran(uke_no,receipt_date,delivery_date,kaiin_id,nos_no,sz_date,add_no,add1_name,add2_name,add3_name,tel_no) VALUES(2,'2022-03-13','2022-03-15','2',null,'B0(1456×1030)''B1(1030×728)''B2(728×515)''B3(515×364)''B4(364×257)''A0(1189×841)''A1(841×594)''A2(594×420)''A3(420×297)''A4(297×210)''その他(変形)',null,null,null,null,'tel');
INSERT INTO jps_user.order_tran(uke_no,receipt_date,delivery_date,kaiin_id,nos_no,sz_date,add_no,add1_name,add2_name,add3_name,tel_no) VALUES(3,'2022-05-13','2022-05-15','3',null,'B0(1456×1030)''B1(1030×728)''B2(728×515)''B3(515×364)''B4(364×257)''A0(1189×841)''A1(841×594)''A2(594×420)''A3(420×297)''A4(297×210)''その他(変形)',null,null,null,null,'tel');
INSERT INTO jps_user.order_tran(uke_no,receipt_date,delivery_date,kaiin_id,nos_no,sz_date,add_no,add1_name,add2_name,add3_name,tel_no) VALUES(4,'2022-07-01','2022-07-15','1',null,'B0(1456×1030)''B1(1030×728)''B2(728×515)''B3(515×364)''B4(364×257)''A0(1189×841)''A1(841×594)''A2(594×420)''A3(420×297)''A4(297×210)''その他(変形)',null,null,null,null,'tel');
INSERT INTO jps_user.order_tran(uke_no,receipt_date,delivery_date,kaiin_id,nos_no,sz_date,add_no,add1_name,add2_name,add3_name,tel_no) VALUES(5,'2022-07-02','2022-07-16','2',null,'B0(1456×1030)''B1(1030×728)''B2(728×515)''B3(515×364)''B4(364×257)''A0(1189×841)''A1(841×594)''A2(594×420)''A3(420×297)''A4(297×210)''その他(変形)',null,null,null,null,'tel');
INSERT INTO jps_user.order_tran(uke_no,receipt_date,delivery_date,kaiin_id,nos_no,sz_date,add_no,add1_name,add2_name,add3_name,tel_no) VALUES(6,'2022-07-03','2022-07-17','3',null,'B0(1456×1030)''B1(1030×728)''B2(728×515)''B3(515×364)''B4(364×257)''A0(1189×841)''A1(841×594)''A2(594×420)''A3(420×297)''A4(297×210)''その他(変形)',null,null,null,null,'tel');
INSERT INTO jps_user.order_tran(uke_no,receipt_date,delivery_date,kaiin_id,nos_no,sz_date,add_no,add1_name,add2_name,add3_name,tel_no) VALUES(7,'2022-07-04','2022-07-18','1',null,'B0(1456×1030)''B1(1030×728)''B2(728×515)''B3(515×364)''B4(364×257)''A0(1189×841)''A1(841×594)''A2(594×420)''A3(420×297)''A4(297×210)''その他(変形)',null,null,null,null,'tel');
INSERT INTO jps_user.order_tran(uke_no,receipt_date,delivery_date,kaiin_id,nos_no,sz_date,add_no,add1_name,add2_name,add3_name,tel_no) VALUES(8,'2022-10-13','2022-10-15','2',null,'B0(1456×1030)''B1(1030×728)''B2(728×515)''B3(515×364)''B4(364×257)''A0(1189×841)''A1(841×594)''A2(594×420)''A3(420×297)''A4(297×210)''その他(変形)',null,null,null,null,'tel');
INSERT INTO jps_user.order_tran(uke_no,receipt_date,delivery_date,kaiin_id,nos_no,sz_date,add_no,add1_name,add2_name,add3_name,tel_no) VALUES(9,'2022-12-13','2022-12-15','3',null,'B0(1456×1030)''B1(1030×728)''B2(728×515)''B3(515×364)''B4(364×257)''A0(1189×841)''A1(841×594)''A2(594×420)''A3(420×297)''A4(297×210)''その他(変形)',null,null,null,null,'tel');
INSERT INTO jps_user.order_tran(uke_no,receipt_date,delivery_date,kaiin_id,nos_no,sz_date,add_no,add1_name,add2_name,add3_name,tel_no) VALUES(10,'2023-01-13','2023-01-15','1',null,'B0(1456×1030)''B1(1030×728)''B2(728×515)''B3(515×364)''B4(364×257)''A0(1189×841)''A1(841×594)''A2(594×420)''A3(420×297)''A4(297×210)''その他(変形)',null,null,null,null,'tel');
INSERT INTO jps_user.order_tran(uke_no,receipt_date,delivery_date,kaiin_id,nos_no,sz_date,add_no,add1_name,add2_name,add3_name,tel_no) VALUES(11,'2023-02-13','2023-02-15','2',null,'B0(1456×1030)''B1(1030×728)''B2(728×515)''B3(515×364)''B4(364×257)''A0(1189×841)''A1(841×594)''A2(594×420)''A3(420×297)''A4(297×210)''その他(変形)',null,null,null,null,'tel');
INSERT INTO jps_user.order_tran(uke_no,receipt_date,delivery_date,kaiin_id,nos_no,sz_date,add_no,add1_name,add2_name,add3_name,tel_no) VALUES(12,'2023-03-13','2023-03-15','3',null,'B0(1456×1030)''B1(1030×728)''B2(728×515)''B3(515×364)''B4(364×257)''A0(1189×841)''A1(841×594)''A2(594×420)''A3(420×297)''A4(297×210)''その他(変形)',null,null,null,null,'tel');
INSERT INTO jps_user.order_tran(uke_no,receipt_date,delivery_date,kaiin_id,nos_no,sz_date,add_no,add1_name,add2_name,add3_name,tel_no) VALUES(13,'2023-04-13','2023-04-15','1',null,'B0(1456×1030)''B1(1030×728)''B2(728×515)''B3(515×364)''B4(364×257)''A0(1189×841)''A1(841×594)''A2(594×420)''A3(420×297)''A4(297×210)''その他(変形)',null,null,null,null,'tel');
INSERT INTO jps_user.order_tran(uke_no,receipt_date,delivery_date,kaiin_id,nos_no,sz_date,add_no,add1_name,add2_name,add3_name,tel_no) VALUES(14,'2022-07-03','2022-07-07','4',null,'B0(1456×1030)''B1(1030×728)''B2(728×515)''B3(515×364)''B4(364×257)''A0(1189×841)''A1(841×594)''A2(594×420)''A3(420×297)''A4(297×210)''その他(変形)',null,null,null,null,'tel');
INSERT INTO jps_user.order_tran(uke_no,receipt_date,delivery_date,kaiin_id,nos_no,sz_date,add_no,add1_name,add2_name,add3_name,tel_no) VALUES(15,'2022-07-03','2022-07-15',5,null,'B0(1456×1030)''B1(1030×728)''B2(728×515)''B3(515×364)''B4(364×257)''A0(1189×841)''A1(841×594)''A2(594×420)''A3(420×297)''A4(297×210)''その他(変形)',null,null,null,null,'tel');

INSERT INTO jps_user.orderdetail_tran(uke_no,linum_no,sz_no,nos_date,unipri_no,orice_no,pos_no) VALUES(1,1,1,null,'B0(4,500円)''B1(2,300円)''B2(1,400円)''B3(1,000円)''B4(800円)''A0(3,400円)''A1(1,800円)''A2(1,200円)''A3(900円)''A4(600円)''変形サイズ(応相談)',null,null);
INSERT INTO jps_user.orderdetail_tran(uke_no,linum_no,sz_no,nos_date,unipri_no,orice_no,pos_no) VALUES(2,2,2,null,'B0(4,500円)''B1(2,300円)''B2(1,400円)''B3(1,000円)''B4(800円)''A0(3,400円)''A1(1,800円)''A2(1,200円)''A3(900円)''A4(600円)''変形サイズ(応相談)',null,null);
INSERT INTO jps_user.orderdetail_tran(uke_no,linum_no,sz_no,nos_date,unipri_no,orice_no,pos_no) VALUES(3,3,3,null,'B0(4,500円)''B1(2,300円)''B2(1,400円)''B3(1,000円)''B4(800円)''A0(3,400円)''A1(1,800円)''A2(1,200円)''A3(900円)''A4(600円)''変形サイズ(応相談)',null,null);
INSERT INTO jps_user.orderdetail_tran(uke_no,linum_no,sz_no,nos_date,unipri_no,orice_no,pos_no) VALUES(4,4,4,null,'B0(4,500円)''B1(2,300円)''B2(1,400円)''B3(1,000円)''B4(800円)''A0(3,400円)''A1(1,800円)''A2(1,200円)''A3(900円)''A4(600円)''変形サイズ(応相談)',null,null);
INSERT INTO jps_user.orderdetail_tran(uke_no,linum_no,sz_no,nos_date,unipri_no,orice_no,pos_no) VALUES(5,5,5,null,'B0(4,500円)''B1(2,300円)''B2(1,400円)''B3(1,000円)''B4(800円)''A0(3,400円)''A1(1,800円)''A2(1,200円)''A3(900円)''A4(600円)''変形サイズ(応相談)',null,null);
INSERT INTO jps_user.orderdetail_tran(uke_no,linum_no,sz_no,nos_date,unipri_no,orice_no,pos_no) VALUES(6,6,6,null,'B0(4,500円)''B1(2,300円)''B2(1,400円)''B3(1,000円)''B4(800円)''A0(3,400円)''A1(1,800円)''A2(1,200円)''A3(900円)''A4(600円)''変形サイズ(応相談)',null,null);
INSERT INTO jps_user.orderdetail_tran(uke_no,linum_no,sz_no,nos_date,unipri_no,orice_no,pos_no) VALUES(7,7,7,null,'B0(4,500円)''B1(2,300円)''B2(1,400円)''B3(1,000円)''B4(800円)''A0(3,400円)''A1(1,800円)''A2(1,200円)''A3(900円)''A4(600円)''変形サイズ(応相談)',null,null);
INSERT INTO jps_user.orderdetail_tran(uke_no,linum_no,sz_no,nos_date,unipri_no,orice_no,pos_no) VALUES(8,8,8,null,'B0(4,500円)''B1(2,300円)''B2(1,400円)''B3(1,000円)''B4(800円)''A0(3,400円)''A1(1,800円)''A2(1,200円)''A3(900円)''A4(600円)''変形サイズ(応相談)',null,null);
INSERT INTO jps_user.orderdetail_tran(uke_no,linum_no,sz_no,nos_date,unipri_no,orice_no,pos_no) VALUES(9,9,9,null,'B0(4,500円)''B1(2,300円)''B2(1,400円)''B3(1,000円)''B4(800円)''A0(3,400円)''A1(1,800円)''A2(1,200円)''A3(900円)''A4(600円)''変形サイズ(応相談)',null,null);
INSERT INTO jps_user.orderdetail_tran(uke_no,linum_no,sz_no,nos_date,unipri_no,orice_no,pos_no) VALUES(10,10,10,null,'B0(4,500円)''B1(2,300円)''B2(1,400円)''B3(1,000円)''B4(800円)''A0(3,400円)''A1(1,800円)''A2(1,200円)''A3(900円)''A4(600円)''変形サイズ(応相談)',null,null);
INSERT INTO jps_user.orderdetail_tran(uke_no,linum_no,sz_no,nos_date,unipri_no,orice_no,pos_no) VALUES(11,11,11,null,'B0(4,500円)''B1(2,300円)''B2(1,400円)''B3(1,000円)''B4(800円)''A0(3,400円)''A1(1,800円)''A2(1,200円)''A3(900円)''A4(600円)''変形サイズ(応相談)',null,null);
INSERT INTO jps_user.orderdetail_tran(uke_no,linum_no,sz_no,nos_date,unipri_no,orice_no,pos_no) VALUES(12,12,12,null,'B0(4,500円)''B1(2,300円)''B2(1,400円)''B3(1,000円)''B4(800円)''A0(3,400円)''A1(1,800円)''A2(1,200円)''A3(900円)''A4(600円)''変形サイズ(応相談)',null,null);
INSERT INTO jps_user.orderdetail_tran(uke_no,linum_no,sz_no,nos_date,unipri_no,orice_no,pos_no) VALUES(13,13,13,null,'B0(4,500円)''B1(2,300円)''B2(1,400円)''B3(1,000円)''B4(800円)''A0(3,400円)''A1(1,800円)''A2(1,200円)''A3(900円)''A4(600円)''変形サイズ(応相談)',null,null);
INSERT INTO jps_user.orderdetail_tran(uke_no,linum_no,sz_no,nos_date,unipri_no,orice_no,pos_no) VALUES(14,14,14,null,'B0(4,500円)''B1(2,300円)''B2(1,400円)''B3(1,000円)''B4(800円)''A0(3,400円)''A1(1,800円)''A2(1,200円)''A3(900円)''A4(600円)''変形サイズ(応相談)',null,null);
INSERT INTO jps_user.orderdetail_tran(uke_no,linum_no,sz_no,nos_date,unipri_no,orice_no,pos_no) VALUES(15,15,15,null,'B0(4,500円)''B1(2,300円)''B2(1,400円)''B3(1,000円)''B4(800円)''A0(3,400円)''A1(1,800円)''A2(1,200円)''A3(900円)''A4(600円)''変形サイズ(応相談)',null,null);



INSERT INTO jps_user.unitprice_tran(sz_no,sz_date,unipri_no) VALUES(1,'B0(1456×1030)''B1(1030×728)''B2(728×515)''B3(515×364)''B4(364×257)''A0(1189×841)''A1(841×594)''A2(594×420)''A3(420×297)''A4(297×210)''その他(変形)','B0(4,500円)''B1(2,300円)''B2(1,400円)''B3(1,000円)''B4(800円)''A0(3,400円)''A1(1,800円)''A2(1,200円)''A3(900円)''A4(600円)''変形サイズ(応相談)');
INSERT INTO jps_user.unitprice_tran(sz_no,sz_date,unipri_no) VALUES(2,'B0(1456×1030)''B1(1030×728)''B2(728×515)''B3(515×364)''B4(364×257)''A0(1189×841)''A1(841×594)''A2(594×420)''A3(420×297)''A4(297×210)''その他(変形)','B0(4,500円)''B1(2,300円)''B2(1,400円)''B3(1,000円)''B4(800円)''A0(3,400円)''A1(1,800円)''A2(1,200円)''A3(900円)''A4(600円)''変形サイズ(応相談)');
INSERT INTO jps_user.unitprice_tran(sz_no,sz_date,unipri_no) VALUES(3,'B0(1456×1030)''B1(1030×728)''B2(728×515)''B3(515×364)''B4(364×257)''A0(1189×841)''A1(841×594)''A2(594×420)''A3(420×297)''A4(297×210)''その他(変形)','B0(4,500円)''B1(2,300円)''B2(1,400円)''B3(1,000円)''B4(800円)''A0(3,400円)''A1(1,800円)''A2(1,200円)''A3(900円)''A4(600円)''変形サイズ(応相談)');
INSERT INTO jps_user.unitprice_tran(sz_no,sz_date,unipri_no) VALUES(4,'B0(1456×1030)''B1(1030×728)''B2(728×515)''B3(515×364)''B4(364×257)''A0(1189×841)''A1(841×594)''A2(594×420)''A3(420×297)''A4(297×210)''その他(変形)','B0(4,500円)''B1(2,300円)''B2(1,400円)''B3(1,000円)''B4(800円)''A0(3,400円)''A1(1,800円)''A2(1,200円)''A3(900円)''A4(600円)''変形サイズ(応相談)');
INSERT INTO jps_user.unitprice_tran(sz_no,sz_date,unipri_no) VALUES(5,'B0(1456×1030)''B1(1030×728)''B2(728×515)''B3(515×364)''B4(364×257)''A0(1189×841)''A1(841×594)''A2(594×420)''A3(420×297)''A4(297×210)''その他(変形)','B0(4,500円)''B1(2,300円)''B2(1,400円)''B3(1,000円)''B4(800円)''A0(3,400円)''A1(1,800円)''A2(1,200円)''A3(900円)''A4(600円)''変形サイズ(応相談)');
INSERT INTO jps_user.unitprice_tran(sz_no,sz_date,unipri_no) VALUES(6,'B0(1456×1030)''B1(1030×728)''B2(728×515)''B3(515×364)''B4(364×257)''A0(1189×841)''A1(841×594)''A2(594×420)''A3(420×297)''A4(297×210)''その他(変形)','B0(4,500円)''B1(2,300円)''B2(1,400円)''B3(1,000円)''B4(800円)''A0(3,400円)''A1(1,800円)''A2(1,200円)''A3(900円)''A4(600円)''変形サイズ(応相談)');
INSERT INTO jps_user.unitprice_tran(sz_no,sz_date,unipri_no) VALUES(7,'B0(1456×1030)''B1(1030×728)''B2(728×515)''B3(515×364)''B4(364×257)''A0(1189×841)''A1(841×594)''A2(594×420)''A3(420×297)''A4(297×210)''その他(変形)','B0(4,500円)''B1(2,300円)''B2(1,400円)''B3(1,000円)''B4(800円)''A0(3,400円)''A1(1,800円)''A2(1,200円)''A3(900円)''A4(600円)''変形サイズ(応相談)');
INSERT INTO jps_user.unitprice_tran(sz_no,sz_date,unipri_no) VALUES(8,'B0(1456×1030)''B1(1030×728)''B2(728×515)''B3(515×364)''B4(364×257)''A0(1189×841)''A1(841×594)''A2(594×420)''A3(420×297)''A4(297×210)''その他(変形)','B0(4,500円)''B1(2,300円)''B2(1,400円)''B3(1,000円)''B4(800円)''A0(3,400円)''A1(1,800円)''A2(1,200円)''A3(900円)''A4(600円)''変形サイズ(応相談)');
INSERT INTO jps_user.unitprice_tran(sz_no,sz_date,unipri_no) VALUES(9,'B0(1456×1030)''B1(1030×728)''B2(728×515)''B3(515×364)''B4(364×257)''A0(1189×841)''A1(841×594)''A2(594×420)''A3(420×297)''A4(297×210)''その他(変形)','B0(4,500円)''B1(2,300円)''B2(1,400円)''B3(1,000円)''B4(800円)''A0(3,400円)''A1(1,800円)''A2(1,200円)''A3(900円)''A4(600円)''変形サイズ(応相談)');
INSERT INTO jps_user.unitprice_tran(sz_no,sz_date,unipri_no) VALUES(10,'B0(1456×1030)''B1(1030×728)''B2(728×515)''B3(515×364)''B4(364×257)''A0(1189×841)''A1(841×594)''A2(594×420)''A3(420×297)''A4(297×210)''その他(変形)','B0(4,500円)''B1(2,300円)''B2(1,400円)''B3(1,000円)''B4(800円)''A0(3,400円)''A1(1,800円)''A2(1,200円)''A3(900円)''A4(600円)''変形サイズ(応相談)');
INSERT INTO jps_user.unitprice_tran(sz_no,sz_date,unipri_no) VALUES(11,'B0(1456×1030)''B1(1030×728)''B2(728×515)''B3(515×364)''B4(364×257)''A0(1189×841)''A1(841×594)''A2(594×420)''A3(420×297)''A4(297×210)''その他(変形)','B0(4,500円)''B1(2,300円)''B2(1,400円)''B3(1,000円)''B4(800円)''A0(3,400円)''A1(1,800円)''A2(1,200円)''A3(900円)''A4(600円)''変形サイズ(応相談)');
INSERT INTO jps_user.unitprice_tran(sz_no,sz_date,unipri_no) VALUES(12,'B0(1456×1030)''B1(1030×728)''B2(728×515)''B3(515×364)''B4(364×257)''A0(1189×841)''A1(841×594)''A2(594×420)''A3(420×297)''A4(297×210)''その他(変形)','B0(4,500円)''B1(2,300円)''B2(1,400円)''B3(1,000円)''B4(800円)''A0(3,400円)''A1(1,800円)''A2(1,200円)''A3(900円)''A4(600円)''変形サイズ(応相談)');
INSERT INTO jps_user.unitprice_tran(sz_no,sz_date,unipri_no) VALUES(13,'B0(1456×1030)''B1(1030×728)''B2(728×515)''B3(515×364)''B4(364×257)''A0(1189×841)''A1(841×594)''A2(594×420)''A3(420×297)''A4(297×210)''その他(変形)','B0(4,500円)''B1(2,300円)''B2(1,400円)''B3(1,000円)''B4(800円)''A0(3,400円)''A1(1,800円)''A2(1,200円)''A3(900円)''A4(600円)''変形サイズ(応相談)');
INSERT INTO jps_user.unitprice_tran(sz_no,sz_date,unipri_no) VALUES(14,'B0(1456×1030)''B1(1030×728)''B2(728×515)''B3(515×364)''B4(364×257)''A0(1189×841)''A1(841×594)''A2(594×420)''A3(420×297)''A4(297×210)''その他(変形)','B0(4,500円)''B1(2,300円)''B2(1,400円)''B3(1,000円)''B4(800円)''A0(3,400円)''A1(1,800円)''A2(1,200円)''A3(900円)''A4(600円)''変形サイズ(応相談)');
INSERT INTO jps_user.unitprice_tran(sz_no,sz_date,unipri_no) VALUES(15,'B0(1456×1030)''B1(1030×728)''B2(728×515)''B3(515×364)''B4(364×257)''A0(1189×841)''A1(841×594)''A2(594×420)''A3(420×297)''A4(297×210)''その他(変形)','B0(4,500円)''B1(2,300円)''B2(1,400円)''B3(1,000円)''B4(800円)''A0(3,400円)''A1(1,800円)''A2(1,200円)''A3(900円)''A4(600円)''変形サイズ(応相談)');



commit;

EOSQL
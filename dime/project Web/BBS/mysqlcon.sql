CREATE TABLE BBS( -- bbs 테이블 
    bbsID int,
    bbsTitle varchar(50),
    userID varchar(20),
    bbsDate DATETIME,
    bbsContent VARCHAR(3000),
    bbsCheeck INT,PRIMARY KEY(bbsID));
    
  create table user( -- user 테이블
  id varchar(20) PRIMARY KEY not null,
  pw varchar(20) not null,
  name varchar(20) not null,
  email varchar(20) not null,
  phone varchar(13) not null,
  reg_date datatime not null,
  ip varchar(25) not null,
   );
  
  
  

  
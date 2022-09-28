select * from member;
insert into MEMBER (id, pass, name, regidate) values ('admin','admin1234','관리자',sysdate);
delete from member where id='admin';
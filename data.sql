delete from tbl_todoitem;
insert into tbl_todoitem(id, desc, is_done, target_date, user)  values (null, 'Description1', false, CURRENT_TIMESTAMP(), 'robin');
insert into tbl_todoitem(id, desc, is_done, target_date, user)  values (null, 'Description2', false, CURRENT_TIMESTAMP(), 'robin');
insert into tbl_todoitem(id, desc, is_done, target_date, user)  values (null, 'Description3', false, CURRENT_TIMESTAMP(), 'robin');
insert into tbl_todoitem(id, desc, is_done, target_date, user)  values (null, 'Description4', false, CURRENT_TIMESTAMP(), 'robin');
insert into tbl_todoitem(id, desc, is_done, target_date, user)  values (null, 'Description5', false, CURRENT_TIMESTAMP(), 'robin');


delete from tbl_customer;
insert into tbl_customer(id, name, job, company, rating, rating_score, detail)  values (null, 'Luke Chen', 'IT Manager', 'Chinasoft', '2', '495', 'More');
insert into tbl_customer(id, name, job, company, rating, rating_score, detail)  values (null, 'Sam Ma', 'Entrepreneur', 'Midea', '4', '833', 'More');
insert into tbl_customer(id, name, job, company, rating, rating_score, detail)  values (null, 'Stan Yu', 'Singer', 'UC', '3', '516', 'More');
insert into tbl_customer(id, name, job, company, rating, rating_score, detail)  values (null, 'Yong liu', 'hodman', 'Tencent', '4', '739', 'More');
insert into tbl_customer(id, name, job, company, rating, rating_score, detail)  values (null, 'Shui Bian', 'Teacher', 'Tibco', '4', '749', 'More');
insert into tbl_customer(id, name, job, company, rating, rating_score, detail)  values (null, 'Adele Adkins', 'Political ', 'Twitter', '5', '900', 'More');

use dranapp;

delimiter //
begin not atomic
FOR ii IN 0..64
DO 
-- insert into dd_downloads (download_app_id,download_sale_occurred) values(f_random_integer(331,466),now());
do sleep(0.2);
-- insert into dd_downloads (download_app_id,download_sale_occurred) values(f_random_enum('345,372,367,375'),now());
do sleep(0.2);
insert into dd_downloads (download_app_id,download_sale_occurred) values(f_random_integer(331,466),now());	
do sleep(1);
end for;
end;
//
delimiter ;


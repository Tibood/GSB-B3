use gsb_b3;

ALTER TABLE visiteur ADD email TEXT NULL;
SET SQL_SAFE_UPDATES=0;
UPDATE visiteur SET email = CONCAT(login,"@swiss-galaxy.com");
SET SQL_SAFE_UPDATES=1;
ALTER TABLE visiteur ADD codea2f CHAR(4);
select * from visiteur
--------------------------------------------------------
--  File created - вторник-окт€бр€-03-2023   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence PRODUCT_CODE_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "LAB3"."PRODUCT_CODE_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 47 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Table PRODUCT
--------------------------------------------------------

  CREATE TABLE "LAB3"."PRODUCT" 
   (	"CODE" NUMBER, 
	"NAME" CHAR(255 BYTE), 
	"GROUP_CODE" NUMBER, 
	"INCOMING_PRICE" FLOAT(126), 
	"RETAIL_PRICE" FLOAT(126), 
	"COUNT" NUMBER DEFAULT 0
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
  GRANT SELECT ON "LAB3"."PRODUCT" TO "LAB5_MANAGER";
  GRANT INSERT ON "LAB3"."PRODUCT" TO "LAB5_MANAGER";
--------------------------------------------------------
--  DDL for Table PRODUCT_GROUP
--------------------------------------------------------

  CREATE TABLE "LAB3"."PRODUCT_GROUP" 
   (	"CODE" NUMBER, 
	"NAME" CHAR(255 BYTE), 
	"COUNT" NUMBER, 
	"SUM_PRICE" FLOAT(126), 
	"MARGIN" FLOAT(126)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
  GRANT SELECT ON "LAB3"."PRODUCT_GROUP" TO "LAB5_MANAGER";
--------------------------------------------------------
--  DDL for View PRODUCT_VIEW
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "LAB3"."PRODUCT_VIEW" ("PRODUCT_CODE", "PRODUCT_NAME", "GROUP_NAME", "INCOMING_PRICE", "COUNT") AS 
  SELECT p.code as product_code, p.name as product_name, pg.name as group_name, p.incoming_price, p.count from product p 
	left join product_group pg ON pg.code = p.group_code WITH CHECK OPTION
;
  GRANT SELECT ON "LAB3"."PRODUCT_VIEW" TO "LAB5_MANAGER";
REM INSERTING into LAB3.PRODUCT
SET DEFINE OFF;
Insert into LAB3.PRODUCT (CODE,NAME,GROUP_CODE,INCOMING_PRICE,RETAIL_PRICE,COUNT) values ('8','test                                                                                                                                                                                                                                                           ','3','12333','14182,95','2');
Insert into LAB3.PRODUCT (CODE,NAME,GROUP_CODE,INCOMING_PRICE,RETAIL_PRICE,COUNT) values ('29','test                                                                                                                                                                                                                                                           ','3','12333','14182,95','2');
Insert into LAB3.PRODUCT (CODE,NAME,GROUP_CODE,INCOMING_PRICE,RETAIL_PRICE,COUNT) values ('35','test2                                                                                                                                                                                                                                                          ','3','12333','14182,95','2');
Insert into LAB3.PRODUCT (CODE,NAME,GROUP_CODE,INCOMING_PRICE,RETAIL_PRICE,COUNT) values ('37','test2                                                                                                                                                                                                                                                          ','3','12333','14182,95','2');
Insert into LAB3.PRODUCT (CODE,NAME,GROUP_CODE,INCOMING_PRICE,RETAIL_PRICE,COUNT) values ('40','test2                                                                                                                                                                                                                                                          ','3','12333','14182,95','2');
Insert into LAB3.PRODUCT (CODE,NAME,GROUP_CODE,INCOMING_PRICE,RETAIL_PRICE,COUNT) values ('42','test2                                                                                                                                                                                                                                                          ','3','12333','14182,95','2');
Insert into LAB3.PRODUCT (CODE,NAME,GROUP_CODE,INCOMING_PRICE,RETAIL_PRICE,COUNT) values ('44','test2                                                                                                                                                                                                                                                          ','3','12333','14182,95','2');
Insert into LAB3.PRODUCT (CODE,NAME,GROUP_CODE,INCOMING_PRICE,RETAIL_PRICE,COUNT) values ('45','test2                                                                                                                                                                                                                                                          ','3','12333','14182,95','2');
Insert into LAB3.PRODUCT (CODE,NAME,GROUP_CODE,INCOMING_PRICE,RETAIL_PRICE,COUNT) values ('46','test2                                                                                                                                                                                                                                                          ','3','122333','140682,95','2');
Insert into LAB3.PRODUCT (CODE,NAME,GROUP_CODE,INCOMING_PRICE,RETAIL_PRICE,COUNT) values ('1','Philips телевизор                                                                                                                                                                                                                                     ','1','10000','92000','3');
Insert into LAB3.PRODUCT (CODE,NAME,GROUP_CODE,INCOMING_PRICE,RETAIL_PRICE,COUNT) values ('2','Philips телевизор 2                                                                                                                                                                                                                                   ','1','10000','12000','5');
Insert into LAB3.PRODUCT (CODE,NAME,GROUP_CODE,INCOMING_PRICE,RETAIL_PRICE,COUNT) values ('3','Philips телевизор 3                                                                                                                                                                                                                                   ','1','4000','4800','5');
Insert into LAB3.PRODUCT (CODE,NAME,GROUP_CODE,INCOMING_PRICE,RETAIL_PRICE,COUNT) values ('4','Philips телевизор 3                                                                                                                                                                                                                                   ','3','4000','4800','5');
Insert into LAB3.PRODUCT (CODE,NAME,GROUP_CODE,INCOMING_PRICE,RETAIL_PRICE,COUNT) values ('5','Philips телевизор 314                                                                                                                                                                                                                                 ','1','420','50400','1');
REM INSERTING into LAB3.PRODUCT_GROUP
SET DEFINE OFF;
Insert into LAB3.PRODUCT_GROUP (CODE,NAME,COUNT,SUM_PRICE,MARGIN) values ('1','телевизоры                                                                                                                                                                                                                                           ','12','234700','0,2');
Insert into LAB3.PRODUCT_GROUP (CODE,NAME,COUNT,SUM_PRICE,MARGIN) values ('2','фотоаппараты                                                                                                                                                                                                                                       ','25','212000','0,3');
Insert into LAB3.PRODUCT_GROUP (CODE,NAME,COUNT,SUM_PRICE,MARGIN) values ('3','холодильники                                                                                                                                                                                                                                       ','10','831200','0,15');
--------------------------------------------------------
--  DDL for Trigger CASCADE_DELETE_PRODUCT_GROUP
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "LAB3"."CASCADE_DELETE_PRODUCT_GROUP" before delete on product_group for each row
    declare pragma autonomous_transaction;
        begin
        execute IMMEDIATE 'alter trigger update_product_group_margin_trigger disable';
        commit;

        --удал€ем сначала продукты с этой группой
        for product_cascade_deleted in (select * from product where product.group_code = :old.code)
        loop 
            begin
            delete from product where product.code = product_cascade_deleted.code;
            end;
        end loop;

        execute IMMEDIATE 'alter trigger update_product_group_margin_trigger enable';
        commit;
end cascade_delete_product_group;
/
ALTER TRIGGER "LAB3"."CASCADE_DELETE_PRODUCT_GROUP" ENABLE;
--------------------------------------------------------
--  DDL for Trigger INSERT_NEW_PRODUCT_TRIGGER
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "LAB3"."INSERT_NEW_PRODUCT_TRIGGER" 
  before insert on product for each row
  declare margin number;
  begin
        select margin into margin from product_group pg where pg.code = :new.group_code;
        :new.retail_price := :new.incoming_price * (1 + (margin));
end insert_new_product_trigger;
/
ALTER TRIGGER "LAB3"."INSERT_NEW_PRODUCT_TRIGGER" ENABLE;
--------------------------------------------------------
--  DDL for Trigger SMART_UPDATE_VIEW
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "LAB3"."SMART_UPDATE_VIEW" instead of insert or update or delete on product_view for each row
        declare product_group_code number;
        begin


        case
            when deleting then begin 
                DBMS_OUTPUT.PUT_LINE('”спешно удалено');
                delete from product where product.code = :old.product_code;           
            end;
            when updating then begin 
                if updating('group_name') then begin 
                    check_group_name(:new.group_name); 
                    select product_group.code into product_group_code from product_group where product_group.name = :new.group_name;
                    update product set product.group_code = product_group_code where product.code = :new.product_code;
                end;
                end if;
                if updating('product_name') then 
                    update product set product.name = :new.product_name where product.code = :new.product_code; end if;
                if updating('incoming_price') and :new.incoming_price > 0 then 
                    update product set product.incoming_price = :new.incoming_price where product.code = :new.product_code; end if;
                if updating('count') and :new.count > -1 then 
                    update product set product.count = :new.count where product.code = :new.product_code; end if;
            end;

            when inserting then begin 
                if :new.incoming_price > 0 and :new.count > -1 then begin
                    check_group_name(:new.group_name);
                    select product_group.code into product_group_code from product_group where product_group.name = :new.group_name;
                    INSERT INTO product (code, name, group_code, incoming_price, count)
                        VALUES (product_code_seq.NEXTVAL, :new.product_name, product_group_code, :new.incoming_price, :new.count); 
                    exception when NO_DATA_FOUND then DBMS_OUTPUT.PUT_LINE('√руппа не найдена');
                end;
                end if;
            end;
        end case;
end smart_update_view;
/
ALTER TRIGGER "LAB3"."SMART_UPDATE_VIEW" ENABLE;
--------------------------------------------------------
--  DDL for Trigger UPDATE_PRODUCT_COUNT_TRIGGER
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "LAB3"."UPDATE_PRODUCT_COUNT_TRIGGER" 
  before update on product
    for each row begin
    if updating('count') then
          update product_group
             set product_group.sum_price = product_group.sum_price + (:new.retail_price * (:new.count - :old.count)),
             product_group.count = product_group.count + (:new.count - :old.count)
           where product_group.code = :new.group_code;
    end if;
end update_product_count_trigger;
/
ALTER TRIGGER "LAB3"."UPDATE_PRODUCT_COUNT_TRIGGER" ENABLE;
--------------------------------------------------------
--  DDL for Trigger UPDATE_PRODUCT_GROUP_MARGIN_TRIGGER
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "LAB3"."UPDATE_PRODUCT_GROUP_MARGIN_TRIGGER" 
  for update of margin on product_group
  compound trigger
    updated_group_code number;
    new_margin float;

    before each row is
        begin
               updated_group_code := :new.code;
               new_margin := :new.margin;
    end before each row;

    after statement is
         begin
        for product_with_updated_margin in (select * from product where product.group_code = updated_group_code)
        loop 
            begin
                 update product
                    set product.retail_price = product.incoming_price * (1 + (new_margin))
                    where product.code = product_with_updated_margin.code;
            end;
        end loop;
    end after statement;
end update_product_group_margin_trigger;
/
ALTER TRIGGER "LAB3"."UPDATE_PRODUCT_GROUP_MARGIN_TRIGGER" ENABLE;
--------------------------------------------------------
--  DDL for Trigger UPDATE_PRODUCT_RETAIL_PRICE_TRIGGER
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "LAB3"."UPDATE_PRODUCT_RETAIL_PRICE_TRIGGER" 
  for update of retail_price on product
  compound trigger
    updated_group_code number;
    delta_retail_price float;

    before each row is
        begin
               updated_group_code := :new.group_code;
               delta_retail_price := :new.count * (:new.retail_price - :old.retail_price);
    end before each row;

    after statement is
        begin
            update product_group
                 set product_group.sum_price = product_group.sum_price + delta_retail_price
               where product_group.code = updated_group_code;
    end after statement;
end update_product_retail_price_trigger;
/
ALTER TRIGGER "LAB3"."UPDATE_PRODUCT_RETAIL_PRICE_TRIGGER" ENABLE;
--------------------------------------------------------
--  DDL for Procedure CHECK_GROUP_NAME
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "LAB3"."CHECK_GROUP_NAME" (group_name char) is not_correct_name_exception exception;
    count_group_name number;
    begin
    select count(*) into count_group_name from product_group where product_group.name = group_name;
    if(count_group_name = 0) then raise not_correct_name_exception; end if;
    exception when not_correct_name_exception then raise_application_error(-20001, '»мени такой группы не существует');
end;

/
--------------------------------------------------------
--  DDL for Procedure DISABLE_TRIGGER_UPDATE_PRODUCT_RETAIL_PRICE
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "LAB3"."DISABLE_TRIGGER_UPDATE_PRODUCT_RETAIL_PRICE" 
AS
    PRAGMA AUTONOMOUS_TRANSACTION;
BEGIN
    execute IMMEDIATE 'alter trigger update_product_retail_price_trigger disable';
    COMMIT;
END;

/
--------------------------------------------------------
--  DDL for Procedure ENABLE_TRIGGER_UPDATE_PRODUCT_RETAIL_PRICE
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "LAB3"."ENABLE_TRIGGER_UPDATE_PRODUCT_RETAIL_PRICE" 
AS
    PRAGMA AUTONOMOUS_TRANSACTION;
BEGIN
    execute IMMEDIATE 'alter trigger update_product_retail_price_trigger disable';
    COMMIT;
END;

/
--------------------------------------------------------
--  Constraints for Table PRODUCT_GROUP
--------------------------------------------------------

  ALTER TABLE "LAB3"."PRODUCT_GROUP" MODIFY ("CODE" NOT NULL ENABLE);
  ALTER TABLE "LAB3"."PRODUCT_GROUP" ADD PRIMARY KEY ("CODE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PRODUCT
--------------------------------------------------------

  ALTER TABLE "LAB3"."PRODUCT" MODIFY ("CODE" NOT NULL ENABLE);
  ALTER TABLE "LAB3"."PRODUCT" ADD PRIMARY KEY ("CODE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PRODUCT
--------------------------------------------------------

  ALTER TABLE "LAB3"."PRODUCT" ADD CONSTRAINT "FK_PRODUCT_GROUP_CODE" FOREIGN KEY ("GROUP_CODE")
	  REFERENCES "LAB3"."PRODUCT_GROUP" ("CODE") ENABLE;

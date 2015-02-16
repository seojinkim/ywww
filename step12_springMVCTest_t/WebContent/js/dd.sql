-- 재고 테이블

CREATE TABLE s_inventory
(product_id                NUMBER(7)  	CONSTRAINT nn_s_inventory_product_id NOT NULL,
 warehouse_id              NUMBER(7)	CONSTRAINT nn_s_inventory_warehouse_id NOT NULL,
 amount_in_stock           NUMBER(9)	CONSTRAINT nn_s_inventory_amount_in_stock NOT NULL,
 reorder_point             NUMBER(9)		CONSTRAINT nn_s_inventory_reorder_point NOT NULL,
 max_in_stock              NUMBER(9)  CONSTRAINT nn_s_inventory_max_in_stock NOT NULL,
 out_of_stock_explanation  VARCHAR2(255),
 restock_date              DATE 	CONSTRAINT nn_s_inventory_restock_date NOT NULL,
                           CONSTRAINT pk_s_inventory_pro_ware_id PRIMARY KEY (product_id, warehouse_id)
                           	USING INDEX TABLESPACE sales
                           )
						   TABLESPACE SALES
                           ;


-- 주문항목 테이블

CREATE TABLE s_item
(ord_id               NUMBER(7) CONSTRAINT nn_s_item_ord_id NOT NULL,
 item_id              NUMBER(7) CONSTRAINT nn_s_item_item_id NOT NULL,
 product_id           NUMBER(7) CONSTRAINT nn_s_item_product_id NOT NULL,
 price                NUMBER(11, 2),
 quantity             NUMBER(9),
 quantity_shipped     NUMBER(9),
                      CONSTRAINT pk_s_item_ord_id_item_id PRIMARY KEY (ord_id, item_id),
                      CONSTRAINT uk_s_item_ord_id_product_id UNIQUE (ord_id, product_id)
                      USING INDEX TABLESPACE sales
                      )
                      TABLESPACE SALES
                      ;
                      
                      
-- 주문 테이블

CREATE TABLE s_ord
(id                NUMBER(7) CONSTRAINT nn_s_ord_id NOT NULL,
 customer_id       NUMBER(7),
 date_ordered      DATE,
 date_shipped      DATE,
 sales_rep_id      NUMBER(7),
 total             NUMBER(11, 2),
 payment_type      VARCHAR2(6),
 order_filled      VARCHAR2(1),
                   CONSTRAINT pk_s_ord_id PRIMARY KEY (id)
                   USING INDEX TABLESPACE sales
                   )
                   TABLESPACE SALES
                   ;
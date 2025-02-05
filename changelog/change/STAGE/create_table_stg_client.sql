--liquibase formatted sql
--changeset nivethidhas:4
--liquibase tag:v1.4
CREATE OR REPLACE SCHEMA STAGE;

--rollback DROP SCHEMA STAGE;

--changeset nivethidhas:5
--liquibase tag:v1.5
CREATE OR REPLACE TABLE STG_CLIENT
(
    ClientID INT,
    DateKey DATE NOT NULL,
    ProductKey INT NOT NULL,
    CustomerKey INT NOT NULL,
    StoreKey INT NOT NULL,
    SalesAmount DECIMAL(10, 2) NOT NULL,
    Quantity INT NOT NULL
);

--rollback DROP TABLE STG_CLIENT;

--changeset nivethidhas:6
--liquibase tag:v1.6
INSERT INTO STG_CLIENT (ClientID,DateKey,ProductKey,CustomerKey,StoreKey,SalesAmount,Quantity) VALUES (1,current_date,1,1,1,1000,1);

--rollback DELETE FROM TABLE STG_CLIENT;

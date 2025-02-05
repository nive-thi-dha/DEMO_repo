--liquibase formatted sql
--changeset nivethidhas:1
--liquibase tag:v1.1
CREATE OR REPLACE SCHEMA EDW;

--rollback DROP SCHEMA EDW;

--changeset nivethidhas:2
--liquibase tag:v1.2
CREATE OR REPLACE TABLE DIM_CLIENT
(
    ClientID INT,
    DateKey DATE NOT NULL,
    ProductKey INT NOT NULL,
    CustomerKey INT NOT NULL,
    StoreKey INT NOT NULL,
    SalesAmount DECIMAL(10, 2) NOT NULL,
    Quantity INT NOT NULL
);

--rollback DROP TABLE DIM_CLIENT;

--changeset nivethidhas:3
--liquibase tag:v1.3
INSERT INTO DIM_CLIENT (ClientID,DateKey,ProductKey,CustomerKey,StoreKey,SalesAmount,Quantity) VALUES (1,current_date,1,1,1,1000,1);

--rollback DELETE FROM TABLE DIM_CLIENT;

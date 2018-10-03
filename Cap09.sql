----- Capitulo 09

CREATE TABLE TESTE
(
  CODIGO INTEGER NOT NULL PRIMARY KEY,
  DATA DATE DEFAULT SYSDATE
);


INSERT INTO TESTE (CODIGO) VALUES (1);

INSERT INTO TESTE (CODIGO,DATA) VALUES (2,'03/08/2013');

SELECT * FROM TESTE;


--Tipos de Dados

VARCHAR2(10) -> 'MARCIO'
CHAR(10);    -> 'MARCIO    '

NUMBER(5,2)  -> 999.99


--tabelas criadas pelo usuario - USER_TABLES (View)
SELECT * FROM USER_TABLES;

SELECT * FROM ALL_TABLES;


CREATE TABLE TCONTRATO_VIP
AS
 SELECT * FROM TCONTRATO WHERE TOTAL > 500;


SELECT * FROM TCONTRATO_VIP;

--add coluna na tabela
ALTER TABLE TCONTRATO_VIP ADD VALOR NUMBER(5,2); -- 999,99

--alterar coluna
ALTER TABLE TCONTRATO_VIP MODIFY VALOR NUMBER(8,2); --

--alterar coluna
ALTER TABLE TCONTRATO_VIP MODIFY VALOR NUMBER(12,2) DEFAULT 0;

--renomear coluna
ALTER TABLE TCONTRATO_VIP RENAME COLUMN VALOR TO VALOR2;

--excluir coluna
ALTER TABLE TCONTRATO_VIP DROP COLUMN VALOR2;

--excluir tabela
DROP TABLE TCONTRATO_VIP;


--Renomear tabela
RENAME TCONTRATO TO TCONTRATO_TOP;

SELECT * FROM TCONTRATO_TOP;

RENAME TCONTRATO_TOP TO TCONTRATO;

SELECT * FROM TCONTRATO;




--comentario na tabela -
COMMENT ON TABLE TCONTRATO IS 'Informa��es de Contratos';

--comentario na coluna da tabela
COMMENT ON COLUMN TCONTRATO.COD_CONTRATO IS 'C�digo do Contrato';

COMMENT ON COLUMN TCONTRATO.DATA IS 'Data de emiss�o do Contrato';

SELECT * FROM USER_COL_COMMENTS WHERE TABLE_NAME='TCONTRATO'

SELECT * FROM USER_TAB_COMMENTS WHERE TABLE_NAME='TCONTRATO'




--Desabilita a coluna
ALTER TABLE TCONTRATO ADD TOTAL2 NUMERIC(8,2);

ALTER TABLE TCONTRATO SET UNUSED (TOTAL2)

SELECT * FROM TCONTRATO

--Excluir colunas nao usadas
ALTER TABLE TCONTRATO DROP UNUSED COLUMNS;



--TRUNCATE TABLE EXCLUI TODOS REGISTROS DA TABELA
--NAO TEM WHERE E NAO TEM COMMIT/ROLLBACK
TRUNCATE TABLE TABELA;


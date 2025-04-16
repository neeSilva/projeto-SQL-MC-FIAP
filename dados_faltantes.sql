--DADOS DE CLIENTE
--A)
--inserção de daddos clientes gerais
INSERT INTO MC_CLIENTE(
    nm_cliente,
    qt_estrelas,
    vl_medio_compra,
    st_cliente,
    ds_email,
    nr_telefone,
    nm_login,
    ds_senha
)
VALUES ('Adriano Imperador Batista', '5',12900.80,'A','adidico@gmail.com','21912641010','Adriano imperador ofc','fla123456@');

INSERT INTO MC_CLIENTE(
    nm_cliente,
    qt_estrelas,
    vl_medio_compra,
    st_cliente,
    ds_email,
    nr_telefone,
    nm_login,
    ds_senha
)
VALUES ('Alan Turing', '3' ,560.55,'A','alanturing@hotmail.com','+5511921217343','Aturing','gow131300');

INSERT INTO MC_CLIENTE(
    nm_cliente,
    qt_estrelas,
    vl_medio_compra,
    st_cliente,
    ds_email,
    nr_telefone,
    nm_login,
    ds_senha
)
VALUES ('Galapagos bg', '4',187000.70,'A','financeiro@galapagos.com.br','+558195003388','gBOARDGAME','ludo2025');

INSERT INTO MC_CLIENTE(
    nm_cliente,
    qt_estrelas,
    vl_medio_compra,
    st_cliente,
    ds_email,
    nr_telefone,
    nm_login,
    ds_senha
)
VALUES ('Barretos churrasco','4',10468.75,'A','rhbarretos@churrasco.com.br','+5521980085573','churrasbarts','Nelore30@');


--inserção de dados cliente fisico
INSERT INTO mc_cli_fisica(
    nr_cliente,
    dt_nascimento,
    fl_sexo_biologico,
    ds_genero,
    nr_cpf
)
VALUES (1,to_date('08/11/1985', 'DD/MM/YYYY'),'m','Homem Cisgênero','444.555.666-77');

INSERT INTO mc_cli_fisica(
    nr_cliente,
    dt_nascimento,
    fl_sexo_biologico,
    ds_genero,
    nr_cpf
)
VALUES (2,to_date('10/07/1945', 'DD/MM/YYYY'),'m','Homem Cisgênero','101.253.888-77');

--inserção de dados cliente juridico
INSERT INTO mc_cli_juridica(
       nr_cliente,
       dt_fundacao,
       nr_cnpj,
       nr_inscr_est
)
VALUES (3, to_date('09/12/2000','DD/MM/YYYY'),'07.179.206/0001-70','123.456.789.110');

INSERT INTO mc_cli_juridica(
       nr_cliente,
       dt_fundacao,
       nr_cnpj,
       nr_inscr_est
)
VALUES (4, to_date('01/01/2024','DD/MM/YYYY'),'19.979.999/0001-80','444.888.999.110');


--INSERINDO ENDEREÇO PARA CADA CLIENTE 

INSERT INTO MC_END_CLI(
    nr_cliente,
    cd_logradouro_cli,
    nr_end,
    ds_complemento_end,
    dt_inicio,
    dt_termino,
    st_end
)VALUES (1,1,'325','casa laranja',TO_DATE('08/10/2025 13:10:30','DD/MM/YYYY HH24:MI:SS'),null,'A');

--endere nulo
INSERT INTO MC_END_CLI(
    nr_cliente,
    cd_logradouro_cli,
    nr_end,
    ds_complemento_end,
    dt_inicio,
    dt_termino,
    st_end
)VALUES (1,2,'10',NULL,TO_DATE('08/10/2020 14:58:11','DD/MM/YYYY HH24:MI:SS'),TO_DATE('31/12/2024 23:15:54','DD/MM/YYYY HH24:MI:SS'),'I');

INSERT INTO MC_END_CLI(
    nr_cliente,
    cd_logradouro_cli,
    nr_end,
    ds_complemento_end,
    dt_inicio,
    dt_termino,
    st_end
)VALUES (2,8,'1939',null,TO_DATE('02/01/2020 06:00:00','DD/MM/YYYY HH24:MI:SS'),null,'A');

INSERT INTO MC_END_CLI(
    nr_cliente,
    cd_logradouro_cli,
    nr_end,
    ds_complemento_end,
    dt_inicio,
    dt_termino,
    st_end
)VALUES (3,3,'12550','2 ANDAR',TO_DATE('08/12/2018 18:43:22','DD/MM/YYYY HH24:MI:SS'),null,'A');

INSERT INTO MC_END_CLI(
    nr_cliente,
    cd_logradouro_cli,
    nr_end,
    ds_complemento_end,
    dt_inicio,
    dt_termino,
    st_end
)VALUES (4,6,'4040','Esquina praça redonda',TO_DATE('01/02/2021 11:00:30','DD/MM/YYYY HH24:MI:SS'),null,'A');


--B)
--CADASTRO DE UM NOVO CLIENTE COM UM MESMO LOGIN JÁ LOGADO
INSERT INTO MC_CLIENTE(
       nm_cliente,
    qt_estrelas,
    vl_medio_compra,
    st_cliente,
    ds_email,
    nr_telefone,
    nm_login,
    ds_senha
)
VALUES ('barretos churrascos RJ', '3 ',760,89,'A','adm.barretos@bchurras.com.br','+552170019880','barretos_churrasco','nelore40@')


--C)
-- Selecione um específico funcionário e atualize o Cargo e aplique 12% de aumento de salário.
--Escolhemos o funcionario Gavin Edward Mitchell para ter essa promoção e aumento de salario

UPDATE MC_FUNCIONARIO
    SET 
        DS_CARGO = 'Vendedor(a) IV', --atualização de cargo
        VL_SALARIO = VL_SALARIO * 1.12 --aumento do salario
    WHERE CD_FUNCIONARIO = 3;



--D)
-- Selecione um endereço de cliente e coloque o status como I(nativo) e preencha a data de término como sendo a data limite de entrega do trabalho na plataforma da Fiap. 
--Utilize a função to_date para registrar esse novo valor da data.

UPDATE MC_END_CLI
    SET
        ST_END = 'I',
        DT_TERMINO = TO_DATE('22/04/2024 23:59:59','DD/MM/YYYY HH24:MI:SS')
    WHERE NR_CLIENTE = 4 AND CD_LOGRADOURO_CLI = 6;
    
    
--E
-- TENTE ELIMINAR UM ESTADO QUE TENHA UMA CIDADE CADASTRADA
DELETE FROM MC_ESTADO
    WHERE SG_ESTADO = 'SP';


--F
-- Selecione um produto e tente atualizar o status do produto com o status X
UPDATE MC_PRODUTO
    SET
        ST_PRODUTO = 'X'
    WHERE CD_PRODUTO = 1;

/*
CREATE TABLE mc_sgv_visualizacao_video (
    cd_visualizacao_video  NUMBER(10) GENERATED ALWAYS AS IDENTITY NOT NULL,
    nr_cliente             NUMBER(10),
    cd_produto             NUMBER(10) NOT NULL,
    nr_sequencia           NUMBER(3) NOT NULL,
    dt_visualizacao        DATE NOT NULL,
    nr_hora_visualizacao   NUMBER(2) NOT NULL,
    nr_minuto_video        NUMBER(2),
    nr_segundo_video       NUMBER(2)
);
*/
INSERT INTO mc_sgv_visualizacao_video (
    nr_sequencia,
    dt_visualizacao,
    nr_hora_visualizacao,
    nr_minuto_video,
    nr_segundo_video    
) VALUES (1, TO_DATE('15/04/2025 21:40:00', 'DD/MM/YYYY HH24:MI:SS'), 21, 40,  0);

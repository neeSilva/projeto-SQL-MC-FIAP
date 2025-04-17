--Resposta do Comando SQL item a) 
--inserção de dados cliente	
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

--inserção de dados endereço do cliente
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

--Resposta do comando SQL item b)

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

--Resposta do comando SQL item c)
UPDATE MC_FUNCIONARIO
    SET 
        DS_CARGO = 'Vendedor(a) IV', 
        VL_SALARIO = VL_SALARIO * 1.12 
    WHERE CD_FUNCIONARIO = 3;


--Resposta do comando SQL item d)
UPDATE MC_END_CLI
    SET
        ST_END = 'I',
        DT_TERMINO = TO_DATE('22/04/2024 23:59:59','DD/MM/YYYY HH24:MI:SS')
    WHERE NR_CLIENTE = 4 AND CD_LOGRADOURO_CLI = 6;
    
    
--Resposta do comando SQL item e)
DELETE FROM MC_ESTADO
    WHERE SG_ESTADO = 'SP';


--Resposta do comando SQL item f)
UPDATE MC_PRODUTO
    SET
        ST_PRODUTO = 'X'
    WHERE CD_PRODUTO = 1;

-- INSERINDO DOIS VALORES NA TABELA mc_sgv_visualizacao_video:
INSERT INTO mc_sgv_visualizacao_video (
    nr_cliente,
    cd_produto,
    nr_sequencia,
    dt_visualizacao,
    nr_hora_visualizacao,
    nr_minuto_video,
    nr_segundo_video    
) VALUES (1, 3, 1, TO_DATE('15/04/2025 21:40:15', 'DD/MM/YYYY HH24:MI:SS'), 21, 40, 15);

INSERT INTO mc_sgv_visualizacao_video (
    nr_cliente,
    cd_produto,
    nr_sequencia,
    dt_visualizacao,
    nr_hora_visualizacao,
    nr_minuto_video,
    nr_segundo_video    
) VALUES (2, 3, 2, TO_DATE('01/04/2025 08:03:46', 'DD/MM/YYYY HH24:MI:SS'), 8, 3, 46);


-- INSERINDO DOIS VALORES NA TABELA mc_sgv_sac:
INSERT INTO mc_sgv_sac (
    nr_cliente,
    cd_produto,
    cd_funcionario,
    ds_detalhada_sac,
    dt_abertura_sac,
    hr_abertura_sac,
    dt_atendimento,
    hr_atendimento_sac,
    nr_tempo_total_sac,
    ds_detalhada_retorno_sac,
    tp_sac,
    st_sac,
    nr_indice_satisfacao
) VALUES ( 1, 3, 8,'Produto com defeito', TO_DATE('15/04/2025 13:40:15', 'DD/MM/YYYY HH24:MI:SS'), 2, TO_DATE('15/04/2025 15:40:46', 'DD/MM/YYYY HH24:MI:SS'), 15, 2, 'Ciente informou que seu produto esta com defeito porem não havia visto o video completo de como usar', 'D','F',8 );

INSERT INTO mc_sgv_sac (
    nr_cliente,
    cd_produto,
    cd_funcionario,
    ds_detalhada_sac,
    dt_abertura_sac,
    hr_abertura_sac,
    dt_atendimento,
    hr_atendimento_sac,
    nr_tempo_total_sac,
    ds_detalhada_retorno_sac,
    tp_sac,
    st_sac,
    nr_indice_satisfacao
) VALUES ( 2, 1, 9,'Otimo notebook, rapido, bonito e barato', TO_DATE('01/04/2025 02:40:15', 'DD/MM/YYYY HH24:MI:SS'), 2, null, null, null, null, 'E','F',10 );

# Script INEP

create database dw_inep;
use dw_inep;

drop table if exists dim_ano;
create table dim_ano
(
	tf_ano bigint,
    ano varchar(225)
);

drop table if exists dim_uf;
create table dim_uf
(
	tf_uf bigint,
    uf varchar(225)
);

drop table if exists dim_municipio;
create table dim_municipio
(
	tf_municipio bigint,
    municipio varchar(225)
);

drop table if exists dim_curso;
create table dim_curso
(
	tf_curso bigint,
    curso varchar(225)
);

drop table if exists dim_modalidade;
create table dim_modalidade
(
	tf_modalidade bigint,
    modalidade varchar(225)
);

drop table if exists dim_ies;
create table dim_ies
(
	tf_ies bigint,
    ies varchar(225)
);

############################
create table fact_matriculas
(
	matriculas int,
    tf_ano bigint,
    tf_curso bigint,
    tf_ies bigint,
    tf_uf bigint,
    tf_municipio bigint,
    tf_modalidade bigint
);
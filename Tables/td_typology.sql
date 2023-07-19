-- carto.td_typology definition

-- Drop table

-- DROP TABLE carto.td_typology;

CREATE TABLE carto.td_typology (
	typology_name varchar(50) NULL,
	id_typology int2 NOT NULL,
	id_style int2 NULL,
	geom_type varchar NULL,
	CONSTRAINT tr_features_pkey PRIMARY KEY (id_typology)
);
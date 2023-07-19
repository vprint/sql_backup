-- carto.td_features definition

-- Drop table

-- DROP TABLE carto.td_features;

CREATE TABLE carto.td_features (
	commentaire varchar(200) NULL,
	id_typology int4 NULL,
	geom public.geometry(geometry, 3857) NULL,
	id varchar NOT NULL,
	CONSTRAINT td_features_pkey PRIMARY KEY (id)
);
CREATE INDEX td_features_geom_168366118274 ON carto.td_features USING gist (geom);
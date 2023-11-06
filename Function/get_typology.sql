CREATE OR REPLACE FUNCTION carto.get_typology() RETURNS TABLE(
              typology_name text,
              id_style double precision,
              id_typology double precision,
              geom_type text
       ) LANGUAGE plpgsql STABLE STRICT AS $function$ BEGIN RETURN QUERY
SELECT t.typology_name::text,
       t.id_style::float,
       t.id_typology::float,
       t.geom_type::text
FROM carto.td_typology t;
END;
$function$;
CREATE OR REPLACE FUNCTION carto.get_bbox(ids text) RETURNS TABLE(id text, bbox geometry) LANGUAGE plpgsql STABLE PARALLEL SAFE AS $function$ begin RETURN QUERY
SELECT f.id::text,
  ST_Envelope(f.geom) AS bbox
FROM carto.td_features f
WHERE f.id = ANY(string_to_array(ids, ','));
END;
$function$;
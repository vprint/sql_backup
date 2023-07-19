CREATE OR REPLACE FUNCTION carto.get_styles()
 RETURNS TABLE(id_typology text, stroke_color text, stroke_width text, fill_color text, line_dash integer[])
 LANGUAGE plpgsql
 STABLE STRICT
AS $function$ 
	BEGIN 
		RETURN QUERY
			SELECT
			  t.id_typology :: text,
			  s.stroke_color :: text,
			  s.stroke_width :: text,
			  s.fill_color :: text,
			  s.line_dash
			FROM
			  carto.td_typology t
			  INNER JOIN carto.td_style s ON s.id_style = t.id_style;
	END;
$function$
;

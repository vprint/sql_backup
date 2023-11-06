CREATE OR REPLACE FUNCTION carto.get_styles() RETURNS TABLE(
              id_typology double precision,
              stroke_color text,
              stroke_width double precision,
              fill_color text,
              line_dash integer [],
              layer_name text
       ) LANGUAGE plpgsql STABLE STRICT AS $ function $ BEGIN RETURN QUERY
SELECT t.id_typology::float,
       s.stroke_color::text,
       s.stroke_width::float,
       s.fill_color::text,
       s.line_dash::integer [],
       s.layer_name::text
FROM carto.td_typology t
       INNER JOIN carto.td_style s ON s.id_style = t.id_style;
END;
$ function $;
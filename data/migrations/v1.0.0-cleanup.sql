-- remove old "output" functions returning HSTORE in favour of new ones which
-- return JSONB. but existing queries may be using the "output" versions, so
-- only do this after the code has been updated.
--
DROP FUNCTION IF EXISTS mz_calculate_output_boundaries(ne_10m_admin_0_boundary_lines_land);
DROP FUNCTION IF EXISTS mz_calculate_output_boundaries(ne_10m_admin_1_states_provinces_lines);
DROP FUNCTION IF EXISTS mz_calculate_output_boundaries(ne_110m_admin_0_boundary_lines_land);
DROP FUNCTION IF EXISTS mz_calculate_output_boundaries(ne_50m_admin_0_boundary_lines_land);
DROP FUNCTION IF EXISTS mz_calculate_output_boundaries(ne_50m_admin_1_states_provinces_lines);
DROP FUNCTION IF EXISTS mz_calculate_output_boundaries(planet_osm_line);
DROP FUNCTION IF EXISTS mz_calculate_output_boundaries(planet_osm_polygon);
DROP FUNCTION IF EXISTS mz_calculate_output_boundaries_(featurecla text, admin_level text, barrier text, boundary text, historic text, man_made text, waterway text, tags hstore);
DROP FUNCTION IF EXISTS mz_calculate_output_buildings(planet_osm_point);
DROP FUNCTION IF EXISTS mz_calculate_output_buildings(planet_osm_polygon);
DROP FUNCTION IF EXISTS mz_calculate_output_buildings_("addr:housenumber" text, "addr:street" text, building text, "building:levels" text, "building:min_levels" text, "building:part" text, height text, layer text, min_height text, "roof:color" text, "roof:height" text, "roof:material" text, "roof:orientation" text, "roof:shape" text, way_area real, tags hstore);
DROP FUNCTION IF EXISTS mz_calculate_output_earth(land_polygons);
DROP FUNCTION IF EXISTS mz_calculate_output_earth(ne_10m_land);
DROP FUNCTION IF EXISTS mz_calculate_output_earth(ne_110m_land);
DROP FUNCTION IF EXISTS mz_calculate_output_earth(ne_50m_land);
DROP FUNCTION IF EXISTS mz_calculate_output_earth(planet_osm_line);
DROP FUNCTION IF EXISTS mz_calculate_output_earth(planet_osm_point);
DROP FUNCTION IF EXISTS mz_calculate_output_earth(planet_osm_polygon);
DROP FUNCTION IF EXISTS mz_calculate_output_earth_(gid integer, name text, "natural" text, place text, fid integer, tags hstore);
DROP FUNCTION IF EXISTS mz_calculate_output_landuse(planet_osm_line);
DROP FUNCTION IF EXISTS mz_calculate_output_landuse(planet_osm_point);
DROP FUNCTION IF EXISTS mz_calculate_output_landuse(planet_osm_polygon);
DROP FUNCTION IF EXISTS mz_calculate_output_landuse_(aeroway text, amenity text, barrier text, boundary text, highway text, historic text, landuse text, leisure text, man_made text, "natural" text, power text, tourism text, waterway text, tags hstore);
DROP FUNCTION IF EXISTS mz_calculate_output_landuse_(aeroway text, amenity text, barrier text, boundary text, highway text, historic text, landuse text, leisure text, man_made text, "natural" text, power text, tourism text, waterway text, tags hstore, way_area real);
DROP FUNCTION IF EXISTS mz_calculate_output_landuse_(aeroway text, amenity text, boundary text, highway text, historic text, landuse text, leisure text, man_made text, "natural" text, power text, tourism text, waterway text, tags hstore);
DROP FUNCTION IF EXISTS mz_calculate_output_places(ne_10m_populated_places);
DROP FUNCTION IF EXISTS mz_calculate_output_places(planet_osm_point);
DROP FUNCTION IF EXISTS mz_calculate_output_places_(featurecla text, scalerank smallint, name text, place text, tags hstore);
DROP FUNCTION IF EXISTS mz_calculate_output_pois(planet_osm_point);
DROP FUNCTION IF EXISTS mz_calculate_output_pois(planet_osm_polygon);
DROP FUNCTION IF EXISTS mz_calculate_output_pois_(access text, aerialway text, aeroway text, amenity text, barrier text, covered text, craft text, disused text, ele text, emergency text, height text, highway text, historic text, leisure text, lock text, man_made text, "natural" text, office text, operator text, power text, public_transport text, railway text, ref text, shop text, tourism text, waterway text, tags hstore);
DROP FUNCTION IF EXISTS mz_calculate_output_pois_(access text, aerialway text, aeroway text, amenity text, barrier text, covered text, craft text, disused text, emergency text, height text, highway text, historic text, leisure text, lock text, man_made text, "natural" text, office text, operator text, power text, public_transport text, railway text, ref text, shop text, tourism text, waterway text, tags hstore);
DROP FUNCTION IF EXISTS mz_calculate_output_pois_(aerialway text, aeroway text, amenity text, barrier text, craft text, disused text, emergency text, height text, highway text, historic text, leisure text, lock text, man_made text, "natural" text, office text, operator text, power text, public_transport text, railway text, shop text, tourism text, waterway text, tags hstore);
DROP FUNCTION IF EXISTS mz_calculate_output_roads(ne_10m_roads);
DROP FUNCTION IF EXISTS mz_calculate_output_roads(planet_osm_line);
DROP FUNCTION IF EXISTS mz_calculate_output_roads_(featurecla text, labelrank smallint, level text, namealt text, namealtt text, scalerank smallint, type text, aerialway text, aeroway text, bicycle text, bridge text, foot text, highway text, horse text, layer text, leisure text, man_made text, oneway text, operator text, railway text, ref text, route text, service text, sport text, tracktype text, tunnel text, osm_id bigint, name text, tags hstore);
DROP FUNCTION IF EXISTS mz_calculate_output_roads_(featurecla text, labelrank smallint, level text, namealt text, namealtt text, scalerank smallint, type text, aerialway text, aeroway text, bicycle text, bridge text, foot text, highway text, horse text, layer text, leisure text, man_made text, oneway text, operator text, railway text, ref text, route text, service text, sport text, tunnel text, osm_id bigint, name text, tags hstore);
DROP FUNCTION IF EXISTS mz_calculate_output_transit(planet_osm_line);
DROP FUNCTION IF EXISTS mz_calculate_output_transit(planet_osm_polygon);
DROP FUNCTION IF EXISTS mz_calculate_output_transit_(highway text, public_transport text, railway text, route text, service text, tags hstore);
DROP FUNCTION IF EXISTS mz_calculate_output_water(ne_10m_coastline);
DROP FUNCTION IF EXISTS mz_calculate_output_water(ne_10m_lakes);
DROP FUNCTION IF EXISTS mz_calculate_output_water(ne_10m_ocean);
DROP FUNCTION IF EXISTS mz_calculate_output_water(ne_10m_playas);
DROP FUNCTION IF EXISTS mz_calculate_output_water(ne_110m_coastline);
DROP FUNCTION IF EXISTS mz_calculate_output_water(ne_110m_lakes);
DROP FUNCTION IF EXISTS mz_calculate_output_water(ne_110m_ocean);
DROP FUNCTION IF EXISTS mz_calculate_output_water(ne_50m_coastline);
DROP FUNCTION IF EXISTS mz_calculate_output_water(ne_50m_lakes);
DROP FUNCTION IF EXISTS mz_calculate_output_water(ne_50m_ocean);
DROP FUNCTION IF EXISTS mz_calculate_output_water(ne_50m_playas);
DROP FUNCTION IF EXISTS mz_calculate_output_water(planet_osm_line);
DROP FUNCTION IF EXISTS mz_calculate_output_water(planet_osm_point);
DROP FUNCTION IF EXISTS mz_calculate_output_water(planet_osm_polygon);
DROP FUNCTION IF EXISTS mz_calculate_output_water(water_polygons);
DROP FUNCTION IF EXISTS mz_calculate_output_water_(featurecla text, amenity text, intermittent text, landuse text, leisure text, name text, "natural" text, place text, waterway text, gid integer, tags hstore);
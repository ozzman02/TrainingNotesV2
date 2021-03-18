/*
    Containment operator: is the value on right contained in left hand side

        Field @> '{"iso_country": "BR"}'

    Grab the field and compare

        Field->>'iso_country' = 'BR'
*/

SELECT * FROM airports_json
WHERE airports @> '{"iso_country": "BR"}';

SELECT COUNT(*) FROM airports_json
WHERE airports->>'iso_country' = 'BR';


SELECT COUNT(*) FROM airports_json
WHERE airports->>'iso_region' = 'US-AR';

SELECT COUNT(*) FROM airports_json
WHERE airports @> '{"iso_region": "US-AR"}';

SELECT COUNT(*) FROM airports_json
WHERE airports->'runways'-> 0 @> '{"length_ft": 2000}';

SELECT COUNT(*) FROM airports_json
WHERE airports->'navaids'-> 1 @> '{"frequency_khz": 400}';

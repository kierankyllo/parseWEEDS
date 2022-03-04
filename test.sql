use cweeds;

SELECT lat, lng, station_id, Location_name, SQRT(
    POW(111.139 * (lat - '45.4211'), 2) +
    POW(111.139 * ('-75.69' - lng) * COS(lat / 57.3), 2)) AS distance
FROM station HAVING distance < 100 ORDER BY distance;

/*lat - x; y - lng) st x and y are latitude and longitude and are degrees

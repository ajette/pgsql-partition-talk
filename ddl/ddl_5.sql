
DROP TABLE ddl.trips_0;
DROP TABLE ddl.trips_1;
DROP TABLE ddl.trips_2;
DROP TABLE ddl.trips_3;

CREATE TABLE ddl.trips_0 ( CHECK (driver_id % 4 = 0) ) inherits (ddl.trips);
CREATE TABLE ddl.trips_1 ( CHECK (driver_id % 4 = 1) ) inherits (ddl.trips);
CREATE TABLE ddl.trips_2 ( CHECK (driver_id % 4 = 2) ) inherits (ddl.trips);
CREATE TABLE ddl.trips_3 ( CHECK (driver_id % 4 = 3) ) inherits (ddl.trips);


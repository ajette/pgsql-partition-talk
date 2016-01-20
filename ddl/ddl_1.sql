CREATE SCHEMA ddl;

CREATE TABLE ddl.drivers (driver_id bigserial primary key,
   first_name text,
   last_name text);

CREATE TABLE ddl.trips (trip_id bigserial primary key,
   driver_id bigint REFERENCES ddl.drivers not null,
   tripdate timestamp with time zone not null,
   cost money not null);

CREATE TABLE ddl.trips_0 () INHERITS (ddl.trips);
CREATE TABLE ddl.trips_1 () INHERITS (ddl.trips);
CREATE TABLE ddl.trips_2 () INHERITS (ddl.trips);
CREATE TABLE ddl.trips_3 () INHERITS (ddl.trips);


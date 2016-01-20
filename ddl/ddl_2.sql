
CREATE OR REPLACE FUNCTION ddl.trips_insert_trigger ()
  RETURNS TRIGGER AS $$
  BEGIN
  EXECUTE format('INSERT INTO %s SELECT $1.*', 'ddl.trips_' || NEW.driver_id % 4)
  USING NEW;
  RETURN NULL;
END;
$$
LANGUAGE plpgsql;

CREATE TRIGGER insert_trips_trigger 
  BEFORE INSERT ON ddl.trips
  FOR EACH ROW EXECUTE PROCEDURE ddl.trips_insert_trigger();


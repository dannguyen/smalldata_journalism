

## Inventory

Garage Lot: empty
Location: delete

## Preparing table:

### Make a copy
INSERT INTO nyc_requests_copy
SELECT * FROM nyc_requests
LIMIT 24000


### Remove columns

### Add columns
  ALTER TABLE nyc_requests
    ADD COLUMN(`created_date_parsed` DATETIME)




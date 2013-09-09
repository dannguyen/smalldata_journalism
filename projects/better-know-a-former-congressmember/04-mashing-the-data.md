---
layout: project
project: former-congressmembers
project_order: 4
title: Mashing the Data
tagline: "How to connect different datasets together"
header_image: about-nyu-washingtonsquare.jpg
guff: "Finding answers is now a matter of joining together all the spreadsheets we've created."
---

### What's a foreign key?

### Querying the data as a programmer

#### Indexing the database

The indices for former congressmembers


The index on the lobbying data

    CREATE INDEX lobbyist_name_index ON lobbyists(LobbyistName);

    CREATE INDEX filing_ids_on_clients ON clients(filing_id);
    CREATE INDEX filing_ids_on_entities ON entities(filing_id);
    CREATE INDEX filing_ids_on_govents ON government_entities(filing_id);
    CREATE INDEX filing_ids_on_issues ON issues(filing_id);
    CREATE INDEX filing_ids_on_lobbyists ON lobbyists(filing_id);
    CREATE INDEX filing_ids_on_orgs ON orgs(filing_id);
    CREATE INDEX filing_ids_on_registrants ON registrants(filing_id);

Use last name as the foreign key

    ALTER TABLE lobbyists ADD COLUMN last_name VARCHAR(255);
    UPDATE lobbyists 
      SET last_name = UPPER(SUBSTRING_INDEX(`LobbyistName`, ',', 1));
    CREATE INDEX last_name_on_lobbyists ON orgs(last_name);




### Sample queries
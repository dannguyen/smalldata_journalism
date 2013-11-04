
### Cluster

Make a copy of a column



    SELECT `Created Date`, `Closed Date`, `Agency`, `Agency Name`, `Complaint Type`, `Descriptor`, `Location Type`, `Incident Zip`, `Incident Address`, `Street Name`, `Cross Street 1`, `Cross Street 2`, `Intersection Street 1`, `Intersection Street 2`, `Address Type`, `Status`, `Due Date`, `Latitude`, `Longitude` from nyc_requests where `incident zip` = 10001

### Useful transformations
- Convert Created Date and Closed Date to Time
- value.replace(' PM', '').toDate() to get remaining dates
- get hours: toString(value, 'HH')
-


Delete all dates at 1900
DROP SCHEMA IF EXISTS USAirlineFlights2;
CREATE DATABASE IF NOT EXISTS USAirlineFlights2;
use USAirlineFlights2;

CREATE TABLE usairports (
	IATA			VARCHAR(32) NOT NULL PRIMARY KEY,
	Airport			VARCHAR(80),
	City			VARCHAR(32),
	State			VARCHAR(32),
	Country			VARCHAR(32),
	Latitude		FLOAT,
	Longitude		FLOAT,
    Dest            VARCHAR(32),
    Origin         VARCHAR(32)
	

	);
    
CREATE TABLE carriers (
	CarrierCode		VARCHAR(32) NOT NULL PRIMARY KEY,
	Description		VARCHAR(120),
	UniqueCarrier    VARCHAR(32)

	
);


CREATE TABLE IF NOT EXISTS flights(
flightID		INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
colYear			SMALLINT,
colMonth		SMALLINT,
DayOfMonths		SMALLINT,
DayOfWeek		SMALLINT,
DepTime			SMALLINT,
CRSDepTime		SMALLINT,
ArrTime			SMALLINT,
CRSArrTime		SMALLINT,
UniqueCarrier	VARCHAR(32),
FlightNum		VARCHAR(32),
TailNum			VARCHAR(32),
ActualElapsedTime SMALLINT,
CRSElapsedTime	SMALLINT,
AirTime			SMALLINT,
ArrDelay		SMALLINT,
DepDelay		SMALLINT,
Origin			VARCHAR(32),
Dest			VARCHAR(32),
Distance		SMALLINT,
TaxiIn			SMALLINT,
TaxiOut			SMALLINT,
Cancelled		BOOLEAN,
CancellationCode VARCHAR(32),
Diverted		BOOLEAN,
CarrierDelay SMALLINT,
WatherDelay  SMALLINT,
NASDelay      SMALLINT,
SecurityDelay  SMALLINT,
LateAircraftDelay  SMALLINT
);


ALTER TABLE flights ADD
 CONSTRAINT  FOREIGN KEY (Dest)
	 REFERENCES usairportsDest (IATA)
	 ON DELETE CASCADE
    ON UPDATE CASCADE;

ALTER TABLE flights ADD        
	CONSTRAINT FOREIGN KEY (Origin)
	 REFERENCES usairports(IATA)
	 ON DELETE CASCADE
    ON UPDATE CASCADE;
 
ALTER TABLE carriers ADD 
CONSTRAINT FOREIGN KEY (UniqueCarrier)
		REFERENCES carriers(CarrierCode)
		ON DELETE CASCADE
    ON UPDATE CASCADE;

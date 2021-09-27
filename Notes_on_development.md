Issues found on Setting up the Web:

Making sure Ruby 3.0 is installed
making sure all gems are included (had to add manually puma, thin, falcon and webrick )
After "rackup" cheching that the basic message could be seen in http://localhost:9292

DEVELOPMENT 1: viewing
http://localhost:9292/peeps


Entering in postgress DB
psql -U postgres chitter


 CREATE TABLE peeps(id SERIAL PRIMARY KEY, peep VARCHAR(60), date DATE NOT NULL DEFAULT CURRENT_DATE, time TIMESTAMP);


 INSERT INTO peeps(peep, date, time) VALUES ('Its a beautiful day','2021-09-20','2021-09-20 19:00:00-00') RETURNING id;


 CURRENT_TIMESTAMP

 INSERT INTO peeps(peep, date, time) VALUES ('Wake me up when September ends',CURRENT_DATE,CURRENT_TIMESTAMP) RETURNING id;

 ALTER TABLE peeps DROP COLUMN date;


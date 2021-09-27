Issues found on Setting up the Web:

Making sure Ruby 3.0 is installed
making sure all gems are included (had to add manually puma, thin, falcon and webrick )
After "rackup" cheching that the basic message could be seen in http://localhost:9292

DEVELOPMENT 1: viewing
http://localhost:9292/peeps


Entering in postgress DB
psql -U postgres chitter


 CREATE TABLE peeps(id SERIAL PRIMARY KEY, url VARCHAR(60), date DATE NOT NULL DEFAULT CURRENT_DATE, time TIMESTAMP);

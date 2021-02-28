CREATE TABLE athletes (
  id int,
  identifier varchar(50),
  created timestamp,
  modified timestamp,
  name varchar(50),
  dob date,
  identified_gender varchar(6),
  PRIMARY KEY (id)
);

CREATE TABLE schema_migrations (
 migration varchar(255),
 migrated_at time,
 PRIMARY KEY (migration)
);

CREATE TABLE competitions(
        competitionid int NOT NULL,
        name varchar(50),
        venue varchar(50),
        start_date_time DATETIME,
        end_date_time DATETIME,
        duration VARCHAR(50),
        PRIMARY KEY (competitionid)
);

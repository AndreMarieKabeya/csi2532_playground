CREATE TABLE schema_migrations (
 migration varchar(255),
 migrated_at time,
 PRIMARY KEY (migration)
);

INSERT INTO schema_migrations (migration, migrated_at) VALUES
('202102220609000-create-athletes.sql', '2021-02-22 19:00:00');

INSERT INTO schema_migrations (migration, migrated_at) VALUES
('202102220650000-create-migrations.sql', '2021-02-22 19:00:00');

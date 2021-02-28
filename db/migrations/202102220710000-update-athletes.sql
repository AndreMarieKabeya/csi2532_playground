ALTER TABLE athletes
RENAME COLUMN identified_gender TO gender;

INSERT INTO schema_migrations (migration, migrated_at) VALUES
('202102220710000-update-athletes.sql', '2021-02-22 19:30:00');

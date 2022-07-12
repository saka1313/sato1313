psql -U root -d jpsdb << "EOSQL"
ALTER ROLE jps_user WITH SUPERUSER;
CREATE SCHEMA jps_user;
EOSQL
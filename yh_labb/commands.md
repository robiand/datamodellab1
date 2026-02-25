--Commands used in terminal for project (in order):

cd yh_labb

--In yh_labb dir:

docker compose up -d

docker exec -it postgres bash

cd var/lib/postgresql

psql -U postgres -d yrk_db -f /sql/01_ddl.sql

psql -U postgres -d yrk_db -f /sql/02_insert_data.sql

psql -U postgres -d yrk_db -f /sql/03_queries.sql


--To clean up:

docker compose down -v
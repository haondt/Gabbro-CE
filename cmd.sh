cat overrides.yml base.yml services/db.yml > tmp.yml &&
docker compose -f tmp.yml config && rm tmp.yml
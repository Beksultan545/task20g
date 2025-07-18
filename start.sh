#!/bin/bash

# Postgres дайын болғанша күту
./wait-for-it.sh db:5432 --timeout=30 --strict -- echo "Postgres is up"

# FastAPI-ды іске қосу
uvicorn main:app --host 0.0.0.0 --port 8000

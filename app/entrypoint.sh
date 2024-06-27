#!/bin/bash

# Alembicを使ってデータベースマイグレーションを実行
# alembic upgrade head

# Uvicornでアプリケーションを起動
exec uvicorn main:app --reload --host 0.0.0.0 --port 8000

#!/bin/bash

exec /app/.local/bin/gunicorn wsgi:app -b 0.0.0.0:8000

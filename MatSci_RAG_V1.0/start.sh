#!/usr/bin/env sh
set -eu
cd "$(dirname "$0")"
exec python3 -m streamlit run app.py --server.address 127.0.0.1 --server.port 8501 --server.headless false

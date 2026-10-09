@echo off
cd /d "%~dp0"
python -c "import streamlit" >nul 2>&1
if errorlevel 1 (
  echo Streamlit is missing. Run: python -m pip install -r requirements-ui.txt
  pause
  exit /b 1
)
python -m streamlit run app.py --server.address 127.0.0.1 --server.port 8501 --server.headless false
pause

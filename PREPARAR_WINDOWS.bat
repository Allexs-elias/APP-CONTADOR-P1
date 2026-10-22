@echo off
setlocal
cd /d "%~dp0"
where flutter >nul 2>nul
if errorlevel 1 (
  echo Flutter no se encuentra en PATH. Instala y configura Flutter primero.
  pause
  exit /b 1
)
call flutter create --project-name app_contador --platforms=android,web .
if errorlevel 1 goto error
call flutter pub get
if errorlevel 1 goto error
echo.
echo Proyecto preparado. Ejecuta: flutter run -d chrome
pause
exit /b 0
:error
echo No se pudo preparar el proyecto. Revisa el mensaje de Flutter.
pause
exit /b 1

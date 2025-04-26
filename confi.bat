@echo off

echo Installing required packages...
pip install -r requirements.txt

echo Launching Flask app...
start "" python main.py
timeout /t 2 >nul

REM Detect default browser from registry
for /f "tokens=2*" %%A in ('reg query "HKEY_CURRENT_USER\Software\Microsoft\Windows\Shell\Associations\UrlAssociations\http\UserChoice" /v ProgId 2^>nul') do set BROWSER=%%B

echo Default browser detected: %BROWSER%

REM Launch in private/incognito based on browser
if /I "%BROWSER%"=="ChromeHTML" (
    start "" chrome --incognito http://127.0.0.1:5000
) else if /I "%BROWSER%"=="MSEdgeHTM" (
    start "" msedge --inprivate http://127.0.0.1:5000
) else if /I "%BROWSER%"=="FirefoxURL" (
    start "" firefox --private-window http://127.0.0.1:5000
) else if /I "%BROWSER%"=="OperaStable" (
    start "" opera --private http://127.0.0.1:5000
) else if /I "%BROWSER%"=="BraveHTML" (
    start "" brave --incognito http://127.0.0.1:5000
) else if /I "%BROWSER%"=="VivaldiHTM" (
    start "" vivaldi --incognito http://127.0.0.1:5000
) else (
    echo Unrecognized browser. Opening in normal mode...
    start "" http://127.0.0.1:5000
)

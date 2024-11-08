@echo off
:: Advanced Weather Display App using wttr.in API

:START
echo Welcome to the Advanced Weather Display App!
echo.

:: Prompt user to enter a location
set /p location="Enter a location (e.g., India, New York, Tokyo): "
if "%location%"=="" (
    echo Location cannot be empty. Please try again.
    goto START
)

:: Offer options for different weather views
echo.
echo Select the type of forecast:
echo 1. Simple forecast (Current weather only)
echo 2. Detailed forecast (3-day weather overview)
set /p forecast_type="Enter choice (1 or 2): "

:: Set wttr.in options based on user choice
if "%forecast_type%"=="1" (
    set options="?format=3"
) else if "%forecast_type%"=="2" (
    set options=""
) else (
    echo Invalid choice. Defaulting to simple forecast.
    set options="?format=3"
)

:: Fetch and display weather information
echo.
echo Fetching weather information for %location%...
curl wttr.in/%location%%options%

:: Allow user to repeat or exit
echo.
pause
echo Would you like to check another location? (Y/N)
set /p choice="> "
if /I "%choice%"=="Y" goto START
echo Thank you for using the Advanced Weather Display App!
exit

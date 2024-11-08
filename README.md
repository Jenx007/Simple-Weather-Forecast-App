# Simple-Weather-Forecast-App

### Overview
This project is a command-line weather forecast application created with a batch script. It fetches and displays weather information for any location using the [wttr.in API](https://wttr.in/). The script provides two forecast options: a simple summary or a 3-day detailed overview.

### Features
- **Location Input**: Prompts the user to enter any location (city, state, country).
- **Forecast Options**:
  - **Simple Forecast**: Shows a quick summary of the current weather.
  - **3-Day Forecast**: Displays a detailed 3-day weather forecast.
- **Interactive**: Option to check multiple locations in one session.

### Project Structure
- `weather_display.bat`: The batch script containing the full code for fetching and displaying weather data.

### Prerequisites
- **curl**: Ensure that `curl` is installed and accessible in your system’s PATH.

### Usage Instructions
1. **Clone the Repository**:
   ```bash
   git clone https://github.com/Jenx007/Simple-Weather-Forecast-App.git
   cd Simple-Weather-Forecast-App
   ```

2. **Run the Script**:
   - Double-click `weather_display.bat`, or run it from the command line:
     ```bash
     weather_display.bat
     ```

3. **Follow the Prompts**:
   - Enter a location (e.g., "Goa", "New York", "Tokyo").
   - Choose the forecast type (1 for simple, 2 for 3-day forecast).
   - View the weather data, and opt to check another location or exit.

### Code Overview
- **User Input**: Prompts the user to enter a location and select a forecast type.
- **Data Retrieval**: Uses `curl` to fetch weather data from the wttr.in API based on the user’s choices.
- **Loop**: Allows the user to repeat the process for multiple locations.

### Example Output
Running the script will display the weather forecast in your command prompt, with details like temperature, wind, and precipitation for the specified location.
Weather report: goa

      \   /     Clear
       .-.      +25(27) °C
    ― (   ) ―   ↙ 6 km/h
       `-’      10 km
      /   \     0.0 mm
                                    

![Screenshot 2024-11-08 225752](https://github.com/user-attachments/assets/40ef5c1c-9a43-4440-9544-eb496970843f)

### Notes
- To get a detailed forecast, use `curl wttr.in/location?format=3` for more customization options.
- For more information on customization, refer to the [wttr.in documentation](https://github.com/chubin/wttr.in#usage).


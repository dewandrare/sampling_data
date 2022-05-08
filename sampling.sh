#!/usr/bin/bash

# download file xlsx
wget -P ./data data: https://github.com/labusiam/dataset/raw/main/weather_data.xlsx

# convert tiap sheet dalam file xlsx menjadi csv
cd data
in2csv weather_data.xlsx --sheet "weather_2014" > weather_2014.csv
in2csv weather_data.xlsx --sheet "weather_2015" > weather_2015.csv

# digabung dan hapus data
csvstack weather_2014.csv weather_2015.csv > weather.csv
rm weather_data.xlsx

# sampling
cat weather.csv | sample -r 0.3 > sample_weather.csv | csvlook

# sampling.sh

`!/usr/bin/bash`

`wget -P ./data data: https://github.com/labusiam/dataset/raw/main/weather_data.xlsx`
download file xlsx di link yang tersedia dan disimpan dalam folder **data** 


`cd data` pindah directory ke folder data
`in2csv weather_data.xlsx --sheet "weather_2014" > weather_2014.csv` 
`in2csv weather_data.xlsx --sheet "weather_2015" > weather_2015.csv`
convert tiap sheet dalam file xlsx menjadi csv

`csvstack weather_2014.csv weather_2015.csv > weather.csv` file csv yang terbentuk tadi digabung

`rm weather_data.xlsx` hapus file weather_data.xlsx yang 

`cat weather.csv | sample -r 0.3 > sample_weather.csv | csvlook` read file weather.csv lalu dilakukan sample dan disimpan dalam file baru sample_weather.csv

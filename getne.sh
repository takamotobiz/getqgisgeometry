#!/bin/bash -e
if [ ! -e ./data/naturalearth/110m_physical/110m_physical.zip ]; then
    mkdir -p ./data/naturalearth/110m_physical
    curl -L https://naciscdn.org/naturalearth/110m/physical/110m_physical.zip -o ./data/naturalearth/110m_physical/110m_physical.zip
    unzip -o ./data/naturalearth/110m_physical/110m_physical.zip -d ./data/naturalearth/110m_physical
fi
if [ ! -e ./data/naturalearth/110m_cultural/110m_cultural.zip ]; then
    mkdir -p ./data/naturalearth/110m_cultural
    curl -L https://naciscdn.org/naturalearth/110m/cultural/110m_cultural.zip -o ./data/naturalearth/110m_cultural/110m_cultural.zip
    unzip -o ./data/naturalearth/110m_cultural/110m_cultural.zip -d ./data/naturalearth/110m_cultural
fi
if [ ! -e ./data/naturalearth/50m_physical/50m_physical.zip ]; then
    mkdir -p ./data/naturalearth/50m_physical
    curl -L https://naciscdn.org/naturalearth/50m/physical/50m_physical.zip -o ./data/naturalearth/50m_physical/50m_physical.zip
    unzip -o ./data/naturalearth/50m_physical/50m_physical.zip -d ./data/naturalearth/50m_physical
fi
if [ ! -e ./data/naturalearth/50m_cultural/50m_cultural.zip ]; then
    mkdir -p ./data/naturalearth/50m_cultural
    curl -L https://naciscdn.org/naturalearth/50m/cultural/50m_cultural.zip -o ./data/naturalearth/50m_cultural/50m_cultural.zip
    unzip -o ./data/naturalearth/50m_cultural/50m_cultural.zip -d ./data/naturalearth/50m_cultural
fi
if [ ! -e ./data/naturalearth/10m_physical/10m_physical.zip ]; then
    mkdir -p ./data/naturalearth/10m_physical
    curl -L https://naciscdn.org/naturalearth/10m/physical/10m_physical.zip -o ./data/naturalearth/10m_physical/10m_physical.zip
    unzip -o ./data/naturalearth/10m_physical/10m_physical.zip -d ./data/naturalearth/10m_physical
fi
if [ ! -e ./data/naturalearth/10m_cultural/10m_cultural.zip ]; then
    mkdir -p ./data/naturalearth/10m_cultural
    curl -L https://naciscdn.org/naturalearth/10m/cultural/10m_cultural.zip -o ./data/naturalearth/10m_cultural/10m_cultural.zip
    unzip -o ./data/naturalearth/10m_cultural/10m_cultural.zip -d ./data/naturalearth/10m_cultural
    mv ./data/naturalearth/10m_cultural/10m_cultural/* ./data/naturalearth/10m_cultural/.
fi
if [ ! -e ./data/naturalearth/10m_physical/ne_10m_bathymetry_all.zip ]; then
    mkdir -p ./data/naturalearth/10m_physical
    curl -L https://www.naturalearthdata.com/http//www.naturalearthdata.com/download/10m/physical/ne_10m_bathymetry_all.zip -o ./data/naturalearth/10m_physical/ne_10m_bathymetry_all.zip
    unzip -o ./data/naturalearth/10m_physical/ne_10m_bathymetry_all.zip -d ./data/naturalearth/10m_physical
fi

# cp ./data/naturalearth/shp2geojson.yaml /app
# python3 /app/shp2geojson.py
# tippecanoe -P -z7 -f -n oceanus -o ./data/naturalearth/oceanus.mbtiles ./data/naturalearth/shp2geojson.json

# # merge japan border
# tile-join -f -o ./data/naturalearth/oceanus2.mbtiles /app/japan-bl/japanborder.mbtiles ./data/naturalearth/oceanus.mbtiles
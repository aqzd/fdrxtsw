#!/bin/sh
if [ ! -f UUID ]; then
  UUID="07330303-7f28-4e35-a1c5-5b5da66ccff7"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"


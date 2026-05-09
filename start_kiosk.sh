DISPLAY=:0 pkill chromuim
sleep 3
DISPLAY=:0 chromium \
  --kiosk \
  --disable-gpu \
  --disable-software-rasterizer \
  --disable-dev-shm-usage \
  --window-size=480,320 \
  --window-position=0,0 \
  --noerrdialogs \
  --disable-infobars \
  --password-store=basic \
  --no-sandbox \
  http://localhost:5000 &

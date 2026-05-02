DISPLAY=:0 pkill chromuim && DISPLAY=:0 chromium --kiosk http://127.0.0.1:5000 \
  --noerrdialogs \
  --disable-infobars \
  --password-store=basic \
  --no-sandbox \
  --disable-gpu &

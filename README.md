# Introduction

## Installation Steps in Raspberry Pi

### Get link from
https://processing.org/download

### Install Processing
```
cd ~/Downloads
wget https://github.com/processing/processing4/releases/download/processing-1284-4.0b9/processing-4.0b9-linux-arm64.tgz
tar xvzf processing-4.0b9-linux-arm64.tgz
```

### Setup sketch
```
cd ~/Documents
git clone https://github.com/jasmohan-narula/display_logo_with_rainbow_bg.git
cd display_logo_with_rainbow_bg/
chmod +x start_logo_sketch.sh
```

## Add following line in crontab of user to enable sketch to run on reboot of Raspberry Pi
```
crontab -e
@reboot sh /home/pi/Documents/display_logo_with_rainbow_bg/start_logo_sketch.sh > /home/pi/Documents/display_logo_with_rainbow_bg/startup.log 2>&1 &
```

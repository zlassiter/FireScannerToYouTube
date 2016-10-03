# FireScannerToYouTube

A ffmpeg command line command running on Raspberry Pi with a linux operating system.

## Hardware Requirements

* Raspberry Pi http://amzn.to/2dlj6yV
* 16GB Class 10 SD Card http://amzn.to/2dCBQMl
* Power Supply for Raspberry Pi http://amzn.to/2dL0R4k
* USB Sound Card http://amzn.to/2djBACl
* Audio Cable (make sure it fits your radio) http://amzn.to/2dlhIwa
* Micro SD to USB Card Reader/Writer http://amzn.to/2dCDWfw

## Optional Hardware

* Raspberry Pi Case http://amzn.to/2dohseu
* Ethernet Cable To Stay Off Wifi http://amzn.to/2dohz9J

## Setup

1. Install an Ubuntu Image on for Raspberry Pi onto the SD Card
2. Install ffmpeg
3. chmod stream.sh to +x
4. Add your boot crontab to start the stream on boot
5. I recommend adding a crontab to reboot every three hours.

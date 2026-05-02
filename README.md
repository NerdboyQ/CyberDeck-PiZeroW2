# Cyberdeck PiZero W 2

This project is meant to act as practice for a Cyber Deck with limited 
resources (Rasberry Pi Zero W 2). The main UI will be implemented using 
a flask webapp running in Kiosk Mode (full screen, no address bar).

## Terms:   
* Cyber Deck :  A popular term to describe any computer usually with a 
distopian cyber-punk futuristic aesthetic.
* SBC : Single Board Computer, such as any raspberry pi model


## Starting the Webapp
* After cloning the repository, cd into the directory and run:
`python app.py`
> NOTE: This starts the webapp server, the IP address will be 
provided once it successfully starts, and users can navigate 
to it by copying it and placing it into a web-browser address bar.
* To start the kiosk mode
   * a user with admin privileges must make the _start_kiosk.sh_ 
     file executable with `sudo +x start_kiosk.sh`
   * then in the same directory, the user can execute the script:
     `./start_kiosk.sh`
   > NOTE: This starts the kiosk mode on the Pi Zero W 2, and a prompt 
           will be displayed with a warning for using a browser on a 
           system w/ less than 1GB of RAM. Click *Launch Anyway*



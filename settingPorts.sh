#!/bin/bash  
#***********************************
# Variables for setup
#***********************************
time=5
#***********************************
# Get Updates
#***********************************
echo "******************************************"
echo "Setting ports... \n"
ufw allow 80
ufw allow 81
ufw allow 82
ufw allow 83
ufw allow 84
ufw allow 85
ufw allow 8080
ufw allow 9090
ufw status
echo "\nDone with setting the ports. \n"
sleep "$time"
#***********************************
# End of the Script
#***********************************
echo "END OF THE SCRIPT"
sleep "$time"

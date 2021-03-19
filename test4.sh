#!/bin/bash

# ungrip
./tecan init
# ./tecan fake_init
# ./tecan init_l
# ./tecan firmware
# ./tecan report_system_devices

# sleep 2

# ./tecan fawa_init
./tecan go_fl_waste

# sleep 2

./tecan delu_flush 1600 5400 500 1500 2840 60
#./tecan wash_on 10
# ./tecan wash_on 10
#./tecan delu_br
#./tecan wash_on 20
#./tecan delu_iv 600 600
#./tecan delu_ov 600 600
#./tecan delu_init 1600 1600

#!/bin/bash

grep '-' ../Player_Analysis/0310* | awk -F '\t' '{print $1}' > Losses_0310
grep '-' ../Player_Analysis/0312* | awk -F '\t' '{print $1}' > Losses_0312
grep '-' ../Player_Analysis/0315* | awk -F '\t' '{print $1}' > Losses_0315
grep -f Losses_0310 0310* | awk -F '\t' '{print "3/10 "$1,$3}' > Dealer_working_during_losses
grep -f Losses_0312 0312* | awk -F '\t' '{print "3/12 "$1,$3}' >> Dealer_working_during_losses
grep -f Losses_0315 0315* | awk -F '\t' '{print "3/15 "$1,$3}' >> Dealer_working_during_losses
rm Losses_0310
rm Losses_0312
rm Losses_0315
wc -l Dealer_working_during_losses

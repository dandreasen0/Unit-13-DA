#!/bin/bash

echo "What date? (MMDD)"
read varDate

echo "What Time? (##:##:## AM/PM) (e.g. 03:00:00 PM)"
read varTime

grep -i "${varTime}" ~/Documents/Lucky_Duck_Investigations/Roulette_Loss_Investigation/Dealer_Analysis/"$varDate"* | awk -F '\t' '{print $3}'

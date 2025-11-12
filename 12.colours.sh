#!/bin/bash

R="\e[31m" # Red color
G="\e[32m" # Green color
Y="\e[0;33m" # Yellow color]
B="\e[1;33M" # Bold Yellow color
O="\e[1;34m" # Bold Blue color
N="\e[0m"  # No Color
echo -e "$R i love red colour $N" 
#RED COLOUR next line ki shift avvakunda undadaniki $N is added
echo -e "$G my mother  love green colour "
#even if u dont add $N it will work only for next line
echo -e "$Y my father love yellow colour $N"
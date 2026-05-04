#!/bin/bash
pi_version=`python -V`
primary_version=`echo $pi_version | cut -d " " -f 2 | cut -d "." -f 1`
secondary_version=`echo $pi_version | cut -d " " -f 2 | cut -d "." -f 2`

os=`uname -s`
is_linux=0
if [[ "$os" == "Linux" ]]; then
    is_linux=1
fi

# if python version greater than 3.13, install pygame-ce instead of pygame
if [[ primary_version -gt 2 && secondary_version -gt 13 ]]; then
    cat requirements.txt > tmp.txt
    sed '/pygame/d' -i tmp.txt
    echo "pygame-ce==2.5.7" >> tmp.txt

    # if on linux, install dependencies using apt
    if [[ $is_linux -eq 1 ]]; then
        sed 's/==/=/g' -i tmp.txt
        for package in $(cat tmp.txt); do
            sudo apt install python3-$package -y
        done
    else
        python -m pip install -r tmp.txt
    fi
    rm -f tmp.txt
else
    python -m pip install -r requirements.txt
fi

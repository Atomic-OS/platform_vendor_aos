#!/bin/bash
# Specify colors utilized in the terminal
    red=$(tput setaf 1)             #  red
    grn=$(tput setaf 2)             #  green
    ylw=$(tput setaf 3)             #  yellow
    blu=$(tput setaf 4)             #  blue
    ppl=$(tput setaf 5)             #  purple
    cya=$(tput setaf 6)             #  cyan
    txtbld=$(tput bold)             #  Bold
    bldred=${txtbld}$(tput setaf 1) #  red
    bldgrn=${txtbld}$(tput setaf 2) #  green
    bldylw=${txtbld}$(tput setaf 3) #  yellow
    bldblu=${txtbld}$(tput setaf 4) #  blue
    bldppl=${txtbld}$(tput setaf 5) #  purple
    bldcya=${txtbld}$(tput setaf 6) #  cyan
    txtrst=$(tput sgr0)             #  Reset
    rev=$(tput rev)                 #  Reverse color
    pplrev=${rev}$(tput setaf 5)
    cyarev=${rev}$(tput setaf 6)
    ylwrev=${rev}$(tput setaf 3)
    blurev=${rev}$(tput setaf 4)
    normal='tput sgr0'

echo -e "";
tput setaf 2
echo -e " Thanks for choosing Atomis-OS , Now go ahead and build this cool shit ";
echo -e "";
echo -e ${ylw}"\n\n ▼ Which build-type do you want to choose?\n"${txtrst}
echo -e "";
echo -e ${cya}" 〉 1- SUPPORTED "${txtrst}${red}"    ︱ Only for the official builds by the maintainers"${txtrst}
echo -e "";
echo -e ${cya}" 〉 2- UNSUPPORTED "${txtrst}${red}"  ︱ For the unofficial builds"${txtrst}
echo -e "";
echo -e ${cya}" 🕑  30/sec Time-out"${txtrst}${red}"︱ Default option"${txtrst}
echo -e "";
echo -e ${cya}" ▼ Pick a number"${txtrst}
echo -e "";
$normal
read -t 30 askvariant
sleep 1
if [ "$askvariant" == "1" ]
then
echo -e "";
echo -e ${blu}" ▪ Building SUPPORTED variant "${txtrst}
export AOS_BUILD_TYPE=SUPPORTED
echo -e "";
echo -e "";
$normal
sleep 1
fi
if [ "$askvariant" == "2" ]
then
echo -e "";
echo -e ${blu}" ▪ Building UNSUPPORTED variant "${txtrst}
export AOS_BUILD_TYPE=UNSUPPORTED
echo -e "";
echo -e "";
$normal
sleep 1
fi

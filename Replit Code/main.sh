#!/bin/bash

echo please report any error in the comments thx and if you want to suggest things go ahead

PS3="Select item with numbers: "

items=("Chrome" "Firefox" "Salwyrr Client" "Wine (run .exe files)")

while true; do
    select item in "${items[@]}" Quit
    do
        case $REPLY in
            1) chromium-browser --no-sandbox;;
            2) nix-env -i /nix/store/f55bnm8q1giaxpb8rw615l0zflcx8n6x-firefox-78.13.0esr
firefox; break;;
            3) cd client && bash Start.sh; break;;
            4) cd wine && bash Start.sh; break;;
            $((${#items[@]}+1))) echo "Hope to see you later!"; break 2;;
            *) echo "Ooops - unknown choice $REPLY"; break;
        esac
    done
done
#!/bin/bash
echo debian in replit was created by @jscraft so go check out his repls aswell

echo please report any error in the comments thx and if you want to suggest things go ahead

PS3="Select item with numbers: "

items=("Chrome" "Firefox" "(Minecraft) Salwyrr Client" "Ubuntu (less nerds but still)" "Debian (nerd people)")

while true; do
    select item in "${items[@]}" Quit
    do
        case $REPLY in
            1) chromium-browser --no-sandbox;;
            2) nix-env -i /nix/store/f55bnm8q1giaxpb8rw615l0zflcx8n6x-firefox-78.13.0esr
firefox; break;;
            3) cd client && bash Start.sh; break;;
            4) cd ubuntu && python start.py break;;
            5) cd debian && bash Start.sh;;
            $((${#items[@]}+1))) echo "Hope to see you later!"; break 2;;
            *) echo killing pid 0 && kill 0; break;
        esac
    done
done
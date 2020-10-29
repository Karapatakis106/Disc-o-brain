#! bin/bash

echo "Input your address 1,x,x:"
    read address
LXTerminal cdrecord -scanbus && sudo cdrecord blank=fast dev=$address && echo "Process done! " && eject /dev/cd && eject /dev/cdrom && eject /dev/cdrw && sleep 10;
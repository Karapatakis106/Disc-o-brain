#! /bin/bash

  fcd="Format CD disc"

  burniso="Burn an ISO image"
  
  ripdata="Rip data disc"
  
  whatiscd="See your cd drive address"
  
  fdvd="Format DVD disc"

  tools="Install required tools"
  
  eject="Eject your Disc"
  
  bootUSB="Make a bootable USB drive"
  
  formatUSB="Format your usb"

echo "Select your option: "
  read SELECTED

if $SELECTED=fcd
  then cdrecord -scanbus && sudo cdrecord blank=fast dev=1,0,0 && echo "Process done! " && eject /dev/cd && eject /dev/cdrom && eject /dev/cdrw && sleep 10;
else
  echo "Select an option please.. "

if $SELECTED=fdvd
  then sudo dvd+rw-format -force /dev/dvd && echo "Process done! "&& eject /dev/dvd && eject /dev/dvdrom && eject /dev/dvdrw && sleep 10;
else
  echo "Select an option please.."

if $SELECTED=burniso
  then dialog --title "Select an ISO image.." --fselect /path/to/dir height width echo "${FILE} Image Chosen!." && cdrecord -v -dao dev=$address $FILE && echo "Process Done! " && sleep 6;
else
  echo "Select an option please.."

if $SELECTED=whatiscd
  then cdrecord -scanbus
else
  echo "Select an option please.."
  
if $SELECTED=tools
  then sudo apt update && apt-get install dvd+rw-format && apt-get install cdrecord && apt-get install eject && apt-get install python3-pip && sudo apt-get python && pip install playsound && pip install PyQtWebKit && pip install pymedia
else
  echo "Select an option please.."

if $SELECTED=eject
  then eject
else
  echo "Select an option please.."
  
if $SELECTED=USBformat
  then
  lsblk
  sleep 10;
  echo "Select your USB's address from the list that appeared /xxx/xxx "
  read usbaddress
  echo "So, you typed this address $USBADDRESS"
  while true; do
    read -p "Do you want to start the process? **WARNING: MAKE SURE THAT YOUR DRIVE ADDRESS IS CORRECT! EVERYTHING WILL BE DELETED!** " yn
    case $yn in
        [Yy]* ) sudo unmount $USBADDRESS; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done

echo "Select the filesystem that you want to format vfat, ntfs, fat, fat32"
  read fsselected
  
if $fsselected=vfat
  then sudo mkfs.vfat $USBADDRESS
else 
  echo "Select the filesystem that you want to format"

if $fsselected=ntfs
  then sudo mkfs.ntfs $USBADDRESS
else 
  echo "Select the filesystem that you want to format"
  
if $fsselected=fat32
  then sudo mkfs.fat32 $USBADDRESS
else 
  echo "Select the filesystem that you want to format"

if $fsselected=fat
  then sudo mkfs.fat $USBADDRESS
else 
  echo "Select the filesystem that you want to format"
  


if $SELECTED=bootUSB
  then 
  lsblk
  sleep 10;
  echo "Select your USB's address from the list that appeared /xxx/xxx "
  read usbaddress
  echo "So, you typed this address $USBADDRESS"
  while true; do
    read -p "Do you want to start the process? **WARNING: MAKE SURE THAT YOUR DRIVE ADDRESS IS CORRECT! EVERYTHING WILL BE DELETED!** " yn
    case $yn in
        [Yy]* )

FILE=`zenity --file-selection --title="Select a file"`

case $? in
         0)
                echo "\"$FILE\" selected.";;
         1)
                echo "No file selected.. ";;
        -1)
                echo "An error occoured";;
esac

 sudo dd bs=4M if=$FILE of=$USBADDRESS status=progress oflag=sync
 }; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done
else
  echo "Select an option please......"

if $SELECTED=ripdata
  then 
    echo "Select your Type of disc that you have inserted: 1. DVD-RW 2. CD-RW 3. CD-ROM 4. DVD-ROM "
      read seldisc
if $SELDISC=DVD-ROM
  then 
cd /mnt/dvdrom
FILE=`zenity --file-selection --title="Select a File to copy it"`

case $? in
         0)
                echo "\"$FILE\" selected.";;
         1)
                echo "No file selected.";;
        -1)
                echo "An unexpected error has occurred.";;
esac
cp $FILE /home/$USER/Desktop
cd /home/$USER/Desktop && xdg-open /Desktop
else
  echo "Your type is not found.. "


if $SELDISC=4
  then 
cd /mnt/dvdrom
FILE=`zenity --file-selection --title="Select a File to copy it"`

case $? in
         0)
                echo "\"$FILE\" selected.";;
         1)
                echo "No file selected.";;
        -1)
                echo "An unexpected error has occurred.";;
esac
cp $FILE /home/$USER/Desktop
cd /home/$USER/Desktop && xdg-open /Desktop
else
  echo "Your type is not found.. "


if $SELDISC=DVD-RW
  then 
cd /mnt/dvdrw
FILE=`zenity --file-selection --title="Select a File to copy it"`

case $? in
         0)
                echo "\"$FILE\" selected.";;
         1)
                echo "No file selected.";;
        -1)
                echo "An unexpected error has occurred.";;
esac
cp $FILE /home/$USER/Desktop
cd /home/$USER/Desktop && xdg-open /Desktop
else
  echo "Your type is not found.. "


if $SELDISC=1
  then 
cd /mnt/dvdrw
FILE=`zenity --file-selection --title="Select a File to copy it"`

case $? in
         0)
                echo "\"$FILE\" selected.";;
         1)
                echo "No file selected.";;
        -1)
                echo "An unexpected error has occurred.";;
esac
cp $FILE /home/$USER/Desktop
cd /home/$USER/Desktop && xdg-open /Desktop
else
  echo "Your type is not found.. "


if $SELDISC=CD-ROM
  then 
cd /mnt/cdrom
FILE=`zenity --file-selection --title="Select a File to copy it"`

case $? in
         0)
                echo "\"$FILE\" selected.";;
         1)
                echo "No file selected.";;
        -1)
                echo "An unexpected error has occurred.";;
esac
cp $FILE /home/$USER/Desktop
cd /home/$USER/Desktop && xdg-open /Desktop
else
  echo "Your type is not found.. "


if $SELDISC=3
  then 
cd /mnt/cdrom
FILE=`zenity --file-selection --title="Select a File to copy it"`

case $? in
         0)
                echo "\"$FILE\" selected.";;
         1)
                echo "No file selected.";;
        -1)
                echo "An unexpected error has occurred.";;
esac
cp $FILE /home/$USER/Desktop
cd /home/$USER/Desktop && xdg-open /Desktop
else
  echo "Your type is not found.. "


if $SELDISC=CD-RW
  then 
cd /mnt/cdrw
FILE=`zenity --file-selection --title="Select a File to copy it"`

case $? in
         0)
                echo "\"$FILE\" selected.";;
         1)
                echo "No file selected.";;
        -1)
                echo "An unexpected error has occurred.";;
esac
cp $FILE /home/$USER/Desktop
cd /home/$USER/Desktop && xdg-open /Desktop
else
  echo "Your type is not found.. "


if $SELDISC=2
  then 
cd /mnt/cdrw
FILE=`zenity --file-selection --title="Select a File to copy it"`

case $? in
         0)
                echo "\"$FILE\" selected.";;
         1)
                echo "No file selected.";;
        -1)
                echo "An unexpected error has occurred.";;
esac
cp $FILE /home/$USER/Desktop
cd /home/$USER/Desktop && xdg-open /Desktop
else
  echo "Your type is not found.. "


else
  echo "Select an option please.. "

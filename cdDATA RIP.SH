
cd /mnt/cdrom
FILE=`zenity --file-selection --title="Select a File by CD to copy it"`

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


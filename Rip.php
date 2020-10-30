<?php
    $command = escapeshellcmd('/usr/custom/ripCD.py')
    $output = shell_exec($command);
    echo $output;
    
?>
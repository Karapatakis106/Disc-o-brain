function ButtonStart(){
console.log ('discobrain');

var exec = require('child_process').exec, child;

child = exec('/bin/bash','-lc', '/home/$USER/Disc-o-brain Data/tools/CDformat.sh',
        function (error, stdout, stderr) {
    console.log('stdout: ' + stdout);
    console.log('stderr: ' + stderr);
    if (error !== null) {
         console.log('exec error: ' + error);
    }
});
child();
  
  
   console.log('Pushed')
}
function ButtonStart(){
console.log ('discobrain');

var exec = require('child_process').exec, child;

child = exec('/bin/bash','-lc', '/home/$USER/Disc-o-brain Data/tools/DVDformat.sh',
        function (error, stdout, stderr) {
    console.log('stdout: ' + stdout);
    console.log('stderr: ' + stderr);
    if (error !== null) {
         console.log('exec error: ' + error);
    }
});
child();
  
  
   console.log('Pushed')
}
function ButtonStart(){
console.log ('discobrain');

var exec = require('child_process').exec, child;

child = exec('/bin/bash','-lc', '/home/$USER/Disc-o-brain Data/tools/ISOburn.sh',
        function (error, stdout, stderr) {
    console.log('stdout: ' + stdout);
    console.log('stderr: ' + stderr);
    if (error !== null) {
         console.log('exec error: ' + error);
    }
});
child();
  
  
   console.log('Pushed')
}
function ButtonStart(){
console.log ('discobrain');

var exec = require('child_process').exec, child;

child = exec('/bin/bash','-lc', '/home/$USER/Disc-o-brain Data/tools/eject.sh',
        function (error, stdout, stderr) {
    console.log('stdout: ' + stdout);
    console.log('stderr: ' + stderr);
    if (error !== null) {
         console.log('exec error: ' + error);
    }
});
child();
  
  
   console.log('Pushed')
}
a:48:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:12:"Shell-tricks";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:21:"various tricks shells";}i:2;i:29;}i:5;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:50;}i:6;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:52;}i:7;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:64:"Execute a command in the background and detach it from the shell";i:1;i:2;i:2;i:52;}i:2;i:52;}i:8;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:52;}i:9;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:52;}i:10;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:143:"This trick is useful for commands in a ssh connection because the command persist even if the ssh connection is closed or if CTRL+C is pressed.";}i:2;i:130;}i:11;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:273;}i:12;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:139:"
This is mainly achieved by putting the output of the command in a temporary file and accessing that file by tail with the follow option -f";}i:2;i:275;}i:13;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:414;}i:14;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:416;}i:15;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:32:"The TESTED script (not-oneline):";i:1;i:3;i:2;i:416;}i:2;i:416;}i:16;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:416;}i:17;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:87:"TEMP_LOG_FILE=tmp.log

nohup ./process &> "$TEMP_LOG_FILE" & tail -f "$TEMP_LOG_FILE" &";}i:2;i:458;}i:18;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:458;}i:19;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:27:"To restart a closed script:";}i:2;i:554;}i:20;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:581;}i:21;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:64:"
Go in the directory in which the script was started and execute";}i:2;i:583;}i:22;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:647;}i:23;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:649;}i:24;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:15:"tail -f tmp.log";}i:2;i:649;}i:25;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:669;}i:26;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:32:"The NOT TESTED script (oneliner)";i:1;i:3;i:2;i:669;}i:2;i:669;}i:27;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:669;}i:28;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:86:"TEMP_LOG_FILE=tmp.log;nohup ./process &> "$TEMP_LOG_FILE" & tail -f "$TEMP_LOG_FILE" &";}i:2;i:711;}i:29;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:711;}i:30;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:72:"The process of restarting a closed script is the same as described above";}i:2;i:802;}i:31;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:874;}i:32;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:876;}i:33;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:42:"Remove all the files in a parent directory";i:1;i:2;i:2;i:876;}i:2;i:876;}i:34;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:876;}i:35;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:876;}i:36;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:278:"If you have a parent directory that contains a set of files and the child directory contains a subset of the parent directory files and you want to remove the files that the parent directory and the child directory contains from  the parent directory this is the script for you.";}i:2;i:932;}i:37;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1210;}i:38;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1210;}i:39;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:25:"TLDR: example environment";}i:2;i:1212;}i:40;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1237;}i:41;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:189:"mkdir a; cd a/
touch 1.mp4
touch 2.mp4
touch 3.mp4
mkdir aa; cd aa/
touch 1.mp4
touch 2.mp4
for i in *.mp4; do rm ../"$i"; done
  
result:
cd a/aa; ls -> 1.mp4 2.mp4
cd ..; ls   -> 3.mp4
  ";}i:2;i:1237;}i:42;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1454;}i:43;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:26:"The TESTED script (online)";i:1;i:3;i:2;i:1454;}i:2;i:1454;}i:44;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:1454;}i:45;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:34:"for i in *.mp4; do rm ../"$i";done";}i:2;i:1491;}i:46;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1491;}i:47;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:1491;}}
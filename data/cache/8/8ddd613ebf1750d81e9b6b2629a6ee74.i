a:53:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:34:"Batch transcode videos with ffmpeg";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:56:"for now there is just one, but hopefully i will add more";}i:2;i:51;}i:5;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:107;}i:6;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:109;}i:7;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:64:"Script to convert ALL file in the same level directory to H.264.";i:1;i:3;i:2;i:109;}i:2;i:109;}i:8;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:109;}i:9;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:109;}i:10;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:36:"This script is tested and it works, ";}i:2;i:185;}i:11;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:221;}i:12;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:80:"however it requires all file to transcode in the same directory AND a directory ";}i:2;i:223;}i:13;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:303;}i:14;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:8:"newfiles";}i:2;i:304;}i:15;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:312;}i:16;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:313;}i:17;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:111:".
The preset can be modified in order to speed up the encoding or slow it down to obtain better quality footage";}i:2;i:315;}i:18;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:427;}i:19;a:3:{i:0;s:10:"quote_open";i:1;a:0:{}i:2;i:427;}i:20;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:29:"for i in *.mp4; do ffmpeg -i ";}i:2;i:429;}i:21;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:458;}i:22;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:2:"$i";}i:2;i:459;}i:23;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:461;}i:24;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:59:" -c:v libx264 -preset ultrafast -crf 20 -c:a aac -b:a 128k ";}i:2;i:462;}i:25;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:521;}i:26;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:20:"newfiles/${i%.*}.mp4";}i:2;i:522;}i:27;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:542;}i:28;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:6:"; done";}i:2;i:543;}i:29;a:3:{i:0;s:11:"quote_close";i:1;a:0:{}i:2;i:549;}i:30;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:551;}i:31;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:16:"Untested scripts";i:1;i:4;i:2;i:551;}i:2;i:551;}i:32;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:4;}i:2;i:551;}i:33;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:551;}i:34;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:50:"this should remove the need to create a directory ";}i:2;i:577;}i:35;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:627;}i:36;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:8:"newfiles";}i:2;i:628;}i:37;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:636;}i:38;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:0:"";}i:2;i:637;}i:39;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:638;}i:40;a:3:{i:0;s:10:"quote_open";i:1;a:0:{}i:2;i:638;}i:41;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:45:"mkdir newfiles; for i in *.mp4; do ffmpeg -i ";}i:2;i:640;}i:42;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:685;}i:43;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:2:"$i";}i:2;i:686;}i:44;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:688;}i:45;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:59:" -c:v libx264 -preset ultrafast -crf 20 -c:a aac -b:a 128k ";}i:2;i:689;}i:46;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:748;}i:47;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:20:"newfiles/${i%.*}.mp4";}i:2;i:749;}i:48;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:769;}i:49;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:6:"; done";}i:2;i:770;}i:50;a:3:{i:0;s:11:"quote_close";i:1;a:0:{}i:2;i:776;}i:51;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:778;}i:52;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:778;}}
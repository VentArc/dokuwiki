a:59:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:12:"Shell-tricks";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:21:"various tricks shells";}i:2;i:29;}i:5;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:50;}i:6;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:52;}i:7;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:64:"Execute a command in the background and detach it from the shell";i:1;i:2;i:2;i:52;}i:2;i:52;}i:8;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:52;}i:9;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:52;}i:10;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:143:"This trick is useful for commands in a ssh connection because the command persist even if the ssh connection is closed or if CTRL+C is pressed.";}i:2;i:130;}i:11;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:273;}i:12;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:139:"
This is mainly achieved by putting the output of the command in a temporary file and accessing that file by tail with the follow option -f";}i:2;i:275;}i:13;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:414;}i:14;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:416;}i:15;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:32:"The TESTED script (not-oneline):";i:1;i:3;i:2;i:416;}i:2;i:416;}i:16;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:416;}i:17;a:3:{i:0;s:10:"quote_open";i:1;a:0:{}i:2;i:458;}i:18;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:21:"TEMP_LOG_FILE=tmp.log";}i:2;i:460;}i:19;a:3:{i:0;s:11:"quote_close";i:1;a:0:{}i:2;i:481;}i:20;a:3:{i:0;s:10:"quote_open";i:1;a:0:{}i:2;i:482;}i:21;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:19:"nohup ./process &> ";}i:2;i:484;}i:22;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:503;}i:23;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:14:"$TEMP_LOG_FILE";}i:2;i:504;}i:24;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:518;}i:25;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:11:" & tail -f ";}i:2;i:519;}i:26;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:530;}i:27;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:14:"$TEMP_LOG_FILE";}i:2;i:531;}i:28;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:545;}i:29;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:2:" &";}i:2;i:546;}i:30;a:3:{i:0;s:11:"quote_close";i:1;a:0:{}i:2;i:548;}i:31;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:548;}i:32;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:27:"To restart a closed script:";}i:2;i:550;}i:33;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:577;}i:34;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:64:"
Go in the directory in which the script was started and execute";}i:2;i:579;}i:35;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:643;}i:36;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:645;}i:37;a:3:{i:0;s:10:"quote_open";i:1;a:0:{}i:2;i:645;}i:38;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:15:"tail -f tmp.log";}i:2;i:647;}i:39;a:3:{i:0;s:11:"quote_close";i:1;a:0:{}i:2;i:662;}i:40;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:664;}i:41;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:32:"The NOT TESTED script (oneliner)";i:1;i:3;i:2;i:664;}i:2;i:664;}i:42;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:664;}i:43;a:3:{i:0;s:10:"quote_open";i:1;a:0:{}i:2;i:706;}i:44;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:41:"TEMP_LOG_FILE=tmp.log;nohup ./process &> ";}i:2;i:708;}i:45;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:749;}i:46;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:14:"$TEMP_LOG_FILE";}i:2;i:750;}i:47;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:764;}i:48;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:11:" & tail -f ";}i:2;i:765;}i:49;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:776;}i:50;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:14:"$TEMP_LOG_FILE";}i:2;i:777;}i:51;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:791;}i:52;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:2:" &";}i:2;i:792;}i:53;a:3:{i:0;s:11:"quote_close";i:1;a:0:{}i:2;i:794;}i:54;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:794;}i:55;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:72:"The process of restarting a closed script is the same as described above";}i:2;i:796;}i:56;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:868;}i:57;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:868;}i:58;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:868;}}
SYSTIME
 NEW PH
 SET PH=$PIECE($HOROLOG,",",2)
 WRITE "The system time is ",PH\3600,":",PH\60#60,":",PH#60
 KILL PH
 QUIT
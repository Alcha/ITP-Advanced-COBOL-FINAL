      *******************************************************************
      * AUTHOR       : DEVIN LEAMAN                                     *
      * EDITED BY    : HENRY HURLOCKER                                  *
      * CREATION DATE: 4/9/14                                           *
      * LAST EDIT    : 4/18/14                                          *
      * PURPOSE      : SCREEN FOR ACCOUNT SIGN UP                       *
      *******************************************************************           
       01  BLANK-SCREEN.
           03  BLANK SCREEN.
       01  INVALID-MSG.
           03  LINE 21 COL 29 FROM WS-ERROR.
       01  ACCT-SIGNUP.
           03  BLANK SCREEN.
           03  HEAD.
               05  LINE 1 COL 1 PIC X(20)  FROM CAP1-M-PROG.
               05  LINE 01 COL 38 VALUE "TEAM 3".
               05  LINE 01 COL 71 PIC X(2) FROM WS-MONTH.
               05  LINE 01 COL 73 VALUE "/".
               05  LINE 01 COL 74 PIC X(2) FROM WS-DAY.
               05  LINE 01 COL 76 VALUE "/".
               05  LINE 01 COL 77 PIC X(4) FROM WS-YEAR.
               05  LINE 02 COL 76 PIC X(2) FROM WS-HOUR.
               05  LINE 02 COL 78 VALUE ":".
               05  LINE 02 COL 79 PIC X(2) FROM WS-MINUTE.
               05  LINE 06 COL 35 VALUE "CAPITAL ONE SIGNUP".
           03  FORM.
               05  FORM-ID.
                   07  LINE 10 COL 17 VALUE "ID: ".
                   07  LINE 10 COL 32 PIC 9(8) TO WS-ACCNT-NUM AUTO.
               05  FORM-FNAME.
                   07  LINE 11 COL 17 VALUE "FIRST NAME: ".
                   07  LINE 11 COL 32 PIC X(20) TO WS-FNAME.
               05  FORM-LNAME.
                   07  LINE 12 COL 17 VALUE "LAST NAME: ".
                   07  LINE 12 COL 32 PIC X(20) TO WS-LNAME.
               05  FORM-STREET.
                   07  LINE 13 COL 17 VALUE "ADDRESS: ".
                   07  LINE 13 COL 32 PIC X(20) TO WS-ADDRESS.
               05  FORM-ZIP.
                   07  LINE 14 COL 17 VALUE "ZIP-CODE: ".
                   07  LINE 14 COL 32 PIC 9(5) TO WS-ZIP AUTO.
               05  FORM-EMAIL.
                   07  LINE 15 COL 17 VALUE "EMAIL: ".
                   07  LINE 15 COL 32 PIC X(30) TO WS-EMAIL.
               05 FORM-SEL.
                   07  LINE 20 COL 27 PIC X TO CAP1-M-SEL AUTO.
                   07  LINE 20 COL 29 VALUE "Press 'S' to save changes".
                   

               
               
               
               
               
               
               
               
               
               
               
               
               

               
               
               
               
               
               
               
               
               
               
               
               
               
               
               
               

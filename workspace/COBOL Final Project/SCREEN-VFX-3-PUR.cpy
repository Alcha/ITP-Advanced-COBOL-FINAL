      *Skeleton COBOL Copybook - KATIE TRAN - 4/7/2014
       01  PTSCREEN-HEADER.
           03  BLANK SCREEN.
           03  PURCHASETITLE.
               05  LINE 01 COL 01 VALUE "PURCHASE TITLE".
               05  LINE 01 COL 38 VALUE "TEAM 3".
               05  LINE 01 COL 71 PIC X(2) FROM WS-MONTH.
               05  LINE 01 COL 73 VALUE "/".
               05  LINE 01 COL 74 PIC X(2) FROM WS-DAY.
               05  LINE 01 COL 76 VALUE "/".
               05  LINE 01 COL 77 PIC X(4) FROM WS-YEAR.
               05  LINE 02 COL 01 VALUE SPACES.
               05  LINE 03 COL 01 VALUE SPACES.
       
       01  IDSCREEN.
           03  BLANK SCREEN.
           03  CHOOSEID.
               05  LINE 01 COL 01 PIC X(15) FROM VFX-M-PROG.
               05  LINE 01 COL 38 VALUE 'TEAM 3'.
               05  LINE 01 COL 71 PIC X(2) FROM WS-MONTH.
               05  LINE 01 COL 73 VALUE '/'.
               05  LINE 01 COL 74 PIC X(2) FROM WS-DAY.
               05  LINE 01 COL 76 VALUE '/'.
               05  LINE 01 COL 77 PIC X(4) FROM WS-YEAR.
               05  LINE 06 COL 38 VALUE 'Vuflix'.
               05  LINE 08 COL 35 VALUE 'Edit Account'.
               05  LINE 10 COL 28 VALUE 'Enter ID to continue'.
               05  LINE 10 COL 49 PIC X(8) TO VFX-3-SEARCH-ID 
                                           FULL REQUIRED AUTO.
               05  LINE 11 COL 28 VALUE '(Exit = 99999999)'.
               05  LINE 11 COL 47 PIC X(10) FROM VFX-2-MSG.
       
       01  CHECKSCREEN.
           03  BLANK SCREEN. 
           03  CHECK.
               05  LINE 01 COL 01 PIC X(15) FROM VFX-M-PROG.
               05  LINE 01 COL 38 VALUE "TEAM 3".
               05  LINE 01 COL 71 PIC X(2) FROM WS-MONTH.
               05  LINE 01 COL 73 VALUE "/".
               05  LINE 01 COL 74 PIC X(2) FROM WS-DAY.
               05  LINE 01 COL 76 VALUE "/".
               05  LINE 01 COL 77 PIC X(4) FROM WS-YEAR.
               05  LINE 06 COL 34 VALUE "CHECK ACCOUNT".
               05  LINE 08 COL 26 VALUE "ID".
               05  LINE 08 COL 45 PIC X(8) FROM VFX-3-ORIG-ID.
               05  LINE 09 COL 26 VALUE "First Name".
               05  LINE 09 COL 45 PIC X(15) FROM VFX-3-ORIG-FNAME.
               05  LINE 10 COL 26 VALUE "Last Name".
               05  LINE 10 COL 45 PIC X(15) FROM VFX-3-ORIG-LNAME.
               05  LINE 11 COL 26 VALUE "Address".
               05  LINE 11 COL 45 PIC X(20) FROM VFX-3-ORIG-ADDRESS.
               05  LINE 12 COL 26 VALUE "Zip".
               05  LINE 12 COL 45 PIC X(5) FROM VFX-3-ORIG-ZIP.
               05  LINE 13 COL 26 VALUE "Phone".
               05  LINE 13 COL 45 PIC X(11) FROM VFX-3-ORIG-PHONE.
               05  LINE 14 COL 26 VALUE "Email".
               05  LINE 14 COL 45 PIC X(30) FROM VFX-3-ORIG-EMAIL.
               05  LINE 15 COL 26 VALUE "CC Number".
               05  LINE 15 COL 45 PIC X(16) FROM VFX-3-ORIG-CC.
               05  LINE 18 COL 28 VALUE "Is this your information?".
               05  LINE 20 COL 30 PIC X TO VFX-3-CHECK AUTO.
               05  LINE 20 COL 32 VALUE "Press 'Y' to confirm".
       
       01 PTSCREEN-SORT-MENU.
           03 PURCHASETITLE.
               05  LINE 08 COL 31 VALUE "      SORT BY      ".
               05  LINE 10 COL 31 VALUE "   1) ID   ".
               05  LINE 11 COL 31 VALUE "   2) NAME     ".
               05  LINE 12 COL 31 VALUE "   3) GENRE  ".
               05  LINE 13 COL 31 VALUE "   4) PRICE ".
               05  LINE 22 COL 31 VALUE "Selection   (X=exit)".
               05  LINE 22 COL 41 PIC X TO VFX-3-SEL AUTO.
       
       01  PTSCREEN-LABEL.
           03  PURCHASETITLE.
               05  LINE 04 COL 01 VALUE "MOVIE ID".
               05  LINE 04 COL 10 VALUE "TITLE".
               05  LINE 04 COL 46 VALUE "GENRE".
               05  LINE 04 COL 57 VALUE "PRICE".
               
       01  CONT-FILE.
           03  LINE 21 COL 01 VALUE "PRESS 'P' FOR PURCHASE, ".
           03  LINE 21 COL 24 VALUE "'W' FOR WISHLIST, ".
           03  LINE 21 COL 42 VALUE "'N' FOR NEXT PAGE, ".
           03  LINE 21 COL 61 VALUE "'E' TO EXIT.".
           03  LINE 21 COL 75 PIC X TO VFX-3-RESP AUTO.
      
       01  PTSCREEN-PURCHASE.
           03  LINE 23 COL 01 VALUE "ENTER MOVIE ID:".
           03  LINE 23 COL 17 PIC X(8) TO VFX-3-VML-ID 
                                       FULL REQUIRED AUTO.
       01  PURCHASED.
           03  LINE 24 COL 01 VALUE SPACES.
           03  LINE 24 COL 01 VALUE "PURCHASE COMPLETE!".
           
       01  ALREADY.
           03  LINE 24 COL 01 VALUE SPACES.
           03  LINE 24 COL 01 VALUE "ALREADY PURCHASED...".
       
       01  PTSCREEN-PURCHASE-MORE.
               05 BLANK LINE.
               05  LINE 24 COL 01 VALUE "PURCHASED.".
               05  LINE 25 COL 01 VALUE "PRESS Y TO PURCHASE ANOTHER MOV
      -         "IE OR N TO EXIT MOVIE SELECTION.".
               05  LINE 25 COL 64 PIC X TO VFX-3-SEL AUTO.
               
       01 PTSCREEN-ERROR.
           05 BLANK LINE.
           05  LINE 25 COL 01 VALUE "INVALID ENTRY".        
  


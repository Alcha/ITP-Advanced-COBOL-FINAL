      ******************************************************************
      *PROGRAM:  Vuflix Purchase titles
      *AUTHOR:   KATIE TRAN
      *DATE:     4/7/2014   
      *ABSTRACT: 
      *THINGS TO DO: CURRENTLY ONLY DISPLAYS TITLES. NEEDS WAY TO 
      *              PURCHASE TITLES. NEED TO FINISH SORT SYSTEM.
      ******************************************************************
       PROGRAM-ID. G3-VFX-3-PUR.
      ******************************************************************
       ENVIRONMENT DIVISION.
       COPY SELECT-VFX-MOV.
       COPY SELECT-VFX-PUR.
      ******************************************************************
       DATA DIVISION.
       COPY FD-VFX-MOV.
       COPY FD-VFX-PUR.
      * COPY SD-VUFL-3-PT-SORT.
       
       WORKING-STORAGE SECTION.
       COPY WS-VFX.
       
       SCREEN SECTION.
       COPY SCREEN-VFX-PUR.
      ******************************************************************
       PROCEDURE DIVISION.
       000-MAIN.
       MOVE FUNCTION CURRENT-DATE TO WS-TSTAMP.
      * OPEN I-O VML-FILE-TXT.
       
       
       
       PERFORM UNTIL VFX-3-SEL = 'X' OR 'x'
           DISPLAY PTSCREEN-HEADER
           DISPLAY PTSCREEN-SORT-MENU
           ACCEPT PTSCREEN-SORT-MENU
           EVALUATE VFX-3-SEL
               WHEN '1' PERFORM 100-SORT-ID
               WHEN '2' PERFORM 100-SORT-NAME
               WHEN '3' PERFORM 100-SORT-GENRE
               WHEN '4' PERFORM 100-SORT-PRICE
           END-EVALUATE
       END-PERFORM.
       CLOSE       VML-SORTED-FILE-TXT.
       EXIT PROGRAM.
      *-----------------------------------------------------------------
       100-SORT-ID.
       SORT  SORT-FILE
               ON ASCENDING KEY SORT-ID-TXT 
                   USING  VML-FILE-TXT
                   GIVING VML-SORTED-FILE-TXT.
       PERFORM 150-READ-FILE.            
     
      *---------------------------------------------------------------- -
       100-SORT-NAME.
       SORT  SORT-FILE
               ON ASCENDING KEY SORT-TITLE-TXT 
                   USING  VML-FILE-TXT
                   GIVING VML-SORTED-FILE-TXT.
      
       
      *-----------------------------------------------------------------
       100-SORT-GENRE.
       SORT  SORT-FILE
               ON ASCENDING KEY SORT-GENRE-TXT
                                SORT-TITLE-TXT
                   USING  VML-FILE-TXT
                   GIVING VML-SORTED-FILE-TXT.
      
       
      *-----------------------------------------------------------------
       100-SORT-PRICE.
       SORT  SORT-FILE
               ON ASCENDING KEY SORT-PRICE-TXT
                                SORT-TITLE-TXT
                   USING  VML-FILE-TXT
                   GIVING VML-SORTED-FILE-TXT.
      
      *-----------------------------------------------------------------
       150-TEST.
       DISPLAY PTSCREEN-HEADER.
       DISPLAY PTSCREEN-LABEL.
       DISPLAY SPACES
       OPEN INPUT  VML-SORTED-FILE-TXT.
       PERFORM UNTIL VFX-3-EOF
               READ VML-SORTED-FILE-TXT      
                   AT END                
                       MOVE 'Y' TO VFX-3-EOF-FLAG 
                   NOT AT END
                       PERFORM 200-DISPLAY-TEST
           END-PERFORM.
       ACCEPT VFX-3-RESP.    
      *-----------------------------------------------------------------
       150-READ-FILE. 
       DISPLAY PTSCREEN-HEADER.
       DISPLAY PTSCREEN-LABEL.
       DISPLAY SPACES
       OPEN INPUT  VML-SORTED-FILE-TXT.
       PERFORM UNTIL VFX-3-EOF
               READ VML-SORTED-FILE-TXT      
                   AT END                
                       MOVE 'Y' TO VFX-3-EOF-FLAG 
                   NOT AT END
                       PERFORM 200-DISPLAY
           END-PERFORM.

      *     CLOSE VML-FILE-TXT.
      
           DISPLAY END-FILE.
           ACCEPT  VFX-3-RESP.
       
      *-----------------------------------------------------------------
       200-DISPLAY.
           ADD  1          TO VFX-3-CTR
           IF VFX-3-CTR GREATER THAN 10
      
               DISPLAY CONT-FILE
               ACCEPT VFX-3-RESP
               DISPLAY PTSCREEN-HEADER
               DISPLAY PTSCREEN-LABEL
      
               DISPLAY SPACES
               MOVE 1 TO VFX-3-CTR.

           MOVE VML-SORTED-ID-TXT     TO VFX-3-ID.
           MOVE VML-SORTED-TITLE-TXT  TO VFX-3-TITLE.
           MOVE VML-SORTED-GENRE-TXT  TO VFX-3-GENRE.
           MOVE VML-SORTED-PRICE-TXT  TO VFX-3-PRICE.
           DISPLAY VFX-3-VML-LINE.
      *----------------------------------------------------------------- 
       200-DISPLAY-TEST.
       DISPLAY "TEST".

       

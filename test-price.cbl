       IDENTIFICATION DIVISION.
       PROGRAM-ID. TEST-PRICE.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
           01 IMDB-ID              PIC X(10) VALUE SPACES.
           01 PRICE                PIC 9(2)V9(2) VALUE ZEROES.
           01 DISPLAY-PRICE        PIC z9.99.
           01 READ-MODULE          PIC X(30) VALUE 'READ-MOVIE'.
           01 AGAIN                PIC X(1) VALUE 'Y'.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            PERFORM LOOP UNTIL AGAIN = 'N'.
            STOP RUN.

       LOOP.
            DISPLAY 'Enter IMDB ID: '.
            ACCEPT IMDB-ID.
            CALL 'PRICE-MOVIE' USING IMDB-ID, PRICE, READ-MODULE.
            MOVE PRICE TO DISPLAY-PRICE.
            DISPLAY 'Price is $' FUNCTION TRIM(DISPLAY-PRICE).
            DISPLAY 'Price another? (Y/N)'.
            ACCEPT AGAIN.

       END PROGRAM TEST-PRICE.

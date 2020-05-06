       IDENTIFICATION DIVISION.
       PROGRAM-ID. PRICE-MOVIE.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
           01 MOVIE.
               02 MOVIE-ID     PIC X(10).
               02 TITLE        PIC X(50).
               02 YEAR         PIC 9(4).
               02 RATING       PIC 9(2)V9(1).
                   88  BARGAIN-MOVIE    VALUE IS 0 THRU 3.9.
                   88  STANDARD-MOVIE   VALUE IS 4 THRU 7.
                   88  PREMIUM-MOVIE    VALUE IS 7.1 THRU 8.
                   88  MASTERPIECE      VALUE IS 8.1 THRU 10.
       LINKAGE SECTION.
           01 IMDB-ID      PIC X(10).
           01 PRICE        PIC 9(2)V9(2).
           01 READ-MODULE  PIC X(30).
       PROCEDURE DIVISION USING IMDB-ID, PRICE, READ-MODULE.
       MAIN-PROCEDURE.
           CALL READ-MODULE USING IMDB-ID, MOVIE.

           EVALUATE TRUE
               WHEN BARGAIN-MOVIE
                   MOVE 2.95 TO PRICE
               WHEN STANDARD-MOVIE
                   MOVE 3.95 TO PRICE
               WHEN PREMIUM-MOVIE
                   MOVE 4.95 TO PRICE
               WHEN MASTERPIECE
                   MOVE 5.95 TO PRICE
           END-EVALUATE.

           GOBACK.
       END PROGRAM PRICE-MOVIE.

       IDENTIFICATION DIVISION.
       PROGRAM-ID. READ-STUB.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
           01 TEST-MOVIE EXTERNAL.
               02 TEST-MOVIE-ID     PIC X(10).
               02 TEST-TITLE        PIC X(50).
               02 TEST-YEAR         PIC 9(4).
               02 TEST-RATING       PIC 9(2)V9(1).
       LINKAGE SECTION.
           01 IMDB-ID      PIC X(10).
           01 MOVIE.
               02 MOVIE-ID     PIC X(10).
               02 TITLE        PIC X(50).
               02 YEAR         PIC 9(4).
               02 RATING       PIC 9(2)V9(1).
       PROCEDURE DIVISION USING IMDB-ID, MOVIE.
       MAIN-PROCEDURE.
           MOVE TEST-MOVIE TO MOVIE.
           GOBACK.
       END PROGRAM READ-STUB.

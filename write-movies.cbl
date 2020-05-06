       IDENTIFICATION DIVISION.
       PROGRAM-ID. PRICE-MOVIE.
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT MOVIE-FILE ASSIGN TO "movies.dat"
           ORGANIZATION IS INDEXED
           RECORD KEY IS MOVIE-IMDB-ID
           FILE STATUS IS FS.
       DATA DIVISION.
       FILE SECTION.
       FD MOVIE-FILE.
           01 MOVIE-RECORD.
               02 MOVIE-IMDB-ID    PIC X(10).
               02 MOVIE-TITLE      PIC X(50).
               02 MOVIE-YEAR       PIC 9(4).
               02 MOVIE-RATING     PIC 9(2)V9(1).
       WORKING-STORAGE SECTION.
           01 MOVIE.
               02 IMDB-ID          PIC X(10) VALUE SPACES.
               02 TITLE      PIC X(50) VALUE SPACES.
               02 YEAR       PIC 9(4) VALUE ZEROES.
               02 RATING     PIC 9(2)V9(1) VALUE ZEROES.
           01 FS                   PIC 9(02).
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           OPEN OUTPUT MOVIE-FILE.

           MOVE 'tt12345' TO IMDB-ID.
           MOVE 'The Abyss' TO TITLE.
           MOVE 1989 TO YEAR.
           MOVE 7.9 TO RATING.

           WRITE MOVIE-RECORD FROM MOVIE.

           MOVE 'tt23456' TO IMDB-ID.
           MOVE 'Green Lantern' TO TITLE.
           MOVE 2011 TO YEAR.
           MOVE 5.5 TO RATING.

           WRITE MOVIE-RECORD FROM MOVIE.

           MOVE 'tt34567' TO IMDB-ID.
           MOVE 'Batman & Robin' TO TITLE.
           MOVE 1997 TO YEAR.
           MOVE 3.7 TO RATING.

           WRITE MOVIE-RECORD FROM MOVIE.

           CLOSE MOVIE-FILE.

           STOP RUN.
       END PROGRAM PRICE-MOVIE.

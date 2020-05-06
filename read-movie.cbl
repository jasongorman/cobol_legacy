       IDENTIFICATION DIVISION.
       PROGRAM-ID. READ-MOVIE.
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT MOVIE-FILE ASSIGN TO "movies.dat"
           ORGANIZATION IS INDEXED
           ACCESS IS RANDOM
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
           01 FS               PIC 9(2).
       LINKAGE SECTION.
           01 IMDB-ID      PIC X(10).
           01 MOVIE.
               02 MOVIE-ID     PIC X(10).
               02 TITLE        PIC X(50).
               02 YEAR         PIC 9(4).
               02 RATING       PIC 9(2)V9(1).
       PROCEDURE DIVISION USING IMDB-ID, MOVIE.
       MAIN-PROCEDURE.
           OPEN INPUT MOVIE-FILE.

           MOVE IMDB-ID TO MOVIE-IMDB-ID.

           READ MOVIE-FILE RECORD INTO MOVIE
           KEY IS MOVIE-IMDB-ID.

           CLOSE MOVIE-FILE.

           GOBACK.
       END PROGRAM READ-MOVIE.

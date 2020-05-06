       IDENTIFICATION DIVISION.
       PROGRAM-ID. MATHS-SUITE.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       COPY 'test-context.cpy'.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           DISPLAY "Running MATHS tests...".

           CALL 'PRICE-MOVIE-TEST' USING TEST-CONTEXT.

           DISPLAY 'Tests run: ' TESTS-RUN.
           DISPLAY 'Passed: ' PASSES.
           DISPLAY 'Failed: ' FAILURES.

       END PROGRAM MATHS-SUITE.

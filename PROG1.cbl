       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROG1.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
        WORKING-STORAGE SECTION.
        COPY PROGCOMM.
        01 WS-RESP  PIC S9(9) COMP.
        01 WS-RESP2 PIC S9(9) COMP.
       PROCEDURE DIVISION.
           MOVE 'ABC' TO FIELD.
           EXEC CICS LINK
                     PROGRAM('PROG2')
                     COMMAREA(COM-REGION)
                     LENGTH(LENGTH OF COM-REGION)
                     RESP(WS-RESP)
                     RESP2(WS-RESP2)
           END-EXEC.
           IF WS-RESP NOT = DFHRESP(NORMAL)
              DISPLAY 'PROG1 LINK ERR RESP=' WS-RESP 'RESP2=' WS-RESP2
           END-IF.
           EXEC CICS RETURN END-EXEC.

# Ejemplo 3: CICS LINK con COMMAREA + SEND TEXT

Este ejemplo muestra dos programas COBOL bajo CICS:

* **PROG1**: Invocador que hace `EXEC CICS LINK` hacia **PROG2**, pasando una **COMMAREA** definida en un **copybook**.
* **PROG2**: Programa invocado que valida `EIBCALEN`, lee el contenido de la COMMAREA y, si `FIELD = 'ABC'`, hace `EXEC CICS SEND TEXT` de 3 bytes.

Incluye:

* `README.md`
* Copybook `PROGCOMM.cpy`
* Fuentes `PROG1.cbl` y `PROG2.cbl`

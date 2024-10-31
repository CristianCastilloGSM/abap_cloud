CLASS zcc_tablas_internas_009 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcc_tablas_internas_009 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

* Declarations
**********************************************************************
    TYPES numbers1 TYPE TABLE OF i.

    " Internal tables
    DATA numbers TYPE numbers1.

    "Table type (local)
    TYPES tt_strings TYPE TABLE OF string.
    DATA texts1      TYPE tt_strings.

    " Table type (global)
    DATA texts2 TYPE string_table.

    " work areas
    DATA number TYPE i VALUE 1234.
    DATA text TYPE string.

* Example 1: APPEND
**********************************************************************

    APPEND 4711       TO numbers.
    APPEND number     TO numbers.
    APPEND 2 * number TO numbers.

    out->write(  `-----------------` ).
    out->write(  `Example 1: APPEND` ).
    out->write(  `-----------------` ).

    out->write( numbers ).

* Example 2: CLEAR
**********************************************************************

    CLEAR numbers.

    out->write(  `----------------` ).
    out->write(  `Example 2: CLEAR` ).
    out->write(  `----------------` ).

    out->write( numbers ).

* Example 3: table expression
**********************************************************************
    APPEND 4711       TO numbers.
    APPEND number     TO numbers.
    APPEND 2 * number TO numbers.

    out->write(  `---------------------------` ).
    out->write(  `Example 3: Table Expression` ).
    out->write(  `---------------------------` ).

    number = numbers[ 2 ] .

    out->write( |Content of row 2: { number }|    ).
    "Direct use of expression in string template
    out->write( |Content of row 1: { numbers[ 1 ]  }| ).

* Example 4: LOOP ... ENDLOOP
**********************************************************************
    out->write(  `---------------------------` ).
    out->write(  `Example 4: LOOP ... ENDLOOP` ).
    out->write(  `---------------------------` ).

    LOOP AT numbers INTO number.

      out->write( |Row: { sy-tabix } Content { number }| ).

    ENDLOOP.

* Example 5:  declaration in LOOP ... ENDLOOP
**********************************************************************
    out->write(  `-----------------------------` ).
    out->write(  `Example 5: Inline Declaration` ).
    out->write(  `-----------------------------` ).

    LOOP AT numbers INTO DATA(number_inline).
      out->write( |Row: { sy-tabix } Content { number_inline }| ).
    ENDLOOP.

    DATA nkr TYPE TABLE OF i.
    APPEND 66 TO nkr.

    LOOP AT nkr INTO DATA(nkr1).

      out->write( | { sy-tabix }  es el numero de fila que contiene:  { nkr1 } | ).

    ENDLOOP.


  ENDMETHOD.





ENDCLASS.

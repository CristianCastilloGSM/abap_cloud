CLASS zcc_holamundo_001 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcc_holamundo_001 IMPLEMENTATION.



  METHOD if_oo_adt_classrun~main.
   DATA: v1 TYPE I,
         v2 TYPE I,
         v3 TYPE I.


  out->write( '' ).

  v3 = v1 + v2.
   out->write( ':' && v3 ).

* Data Objects with Built-in Types
**********************************************************************

    " comment/uncomment the following declarations and check the output
    DATA variable TYPE string.
    DATA variable1 TYPE i.
    DATA variable2 TYPE d.
    DATA variable3 TYPE c LENGTH 10.
    DATA variable4 TYPE n LENGTH 10.
    DATA variable5 TYPE p LENGTH 8 DECIMALS 2.

    CONSTANTS constance TYPE c LENGTH 2 VALUE IS INITIAL.
    CONSTANTS constance1 TYPE c VALUE 't'.
* Output
**********************************************************************

    out->write(  'Result with Initial Value)' ).
    out->write(   variable ).
    out->write(  '---------' ).

    variable = '19891109'.

    out->write(  'Result with Value 19891109' ).
    out->write(   variable ).
    out->write(  '---------' ).
    out->write( constance ).
    out->write( constance1 ).


  ENDMETHOD.
ENDCLASS.

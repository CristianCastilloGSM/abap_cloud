CLASS zcl_compu_005 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_compu_005 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

  DATA number1 TYPE i.
  DATA number2 TYPE i.

  number1 = -8.
  number2 =  3.
out->write( 'nkr' ).

  ENDMETHOD.
ENDCLASS.

CLASS zcl_global_010 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

   DATA carrier_id    TYPE /dmo/carrier_id.
   DATA connection_id TYPE /dmo/connection_id.

   CLASS-DATA conn_counter TYPE i.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_global_010 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
  ENDMETHOD.
ENDCLASS.

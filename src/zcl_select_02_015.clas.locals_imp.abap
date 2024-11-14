*"* use this source file for the definition and implementation of
*"* local helper classes, interface definitions and type
*"* declarations
CLASS lcl_connection DEFINITION.

  PUBLIC SECTION.

  METHODS get_output

        RETURNING
        VALUE(r_output) TYPE string_table.
  .

  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA carrier_id    TYPE /dmo/carrier_id.
    DATA connection_id TYPE /dmo/connection_id.

    DATA airport_from_id TYPE /dmo/airport_from_id.
    DATA airport_to_id   TYPE /dmo/airport_to_id.

ENDCLASS.

CLASS lcl_connection IMPLEMENTATION.

  METHOD get_output.


    APPEND |--------------------------------|             TO r_output.
    APPEND |Carrier:     { carrier_id      }|             TO r_output.
    APPEND |Connection:  { connection_id   }|             TO r_output.
    APPEND |Departure:   { airport_from_id }|             TO r_output.
    APPEND |Destination: { airport_to_id   }|             TO r_output.


  ENDMETHOD.

ENDCLASS.

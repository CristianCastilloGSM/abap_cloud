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

    DATA connection TYPE REF TO lcl_connection.
    DATA connection2 TYPE REF TO lcl_connection.

    DATA connections TYPE TABLE OF REF TO lcl_connection.
    connection = NEW #( ).
*    connection->carrier_id = 'LH'.
*    connection->connection_id = '0400'.
**    connection2 = connection.
*    APPEND connection TO connections.
*    connection = NEW #(  ).
*
*    connection->carrier_id    = 'AA'.
*    connection->connection_id = '0017'.
*
*    APPEND connection TO connections.
*
*    connection = NEW #(  ).
*
*    connection->carrier_id    = 'SQ'.
*    connection->connection_id = '0001'.
*
*    APPEND connection TO connections.
*
*    LOOP AT connections INTO DATA(results).
*      out->write( | Este es el resultado del ID: { results->carrier_id } | ).
*      out->write( | Este es el resultado del ID de conexion: { results->connection_id } | ).

*    ENDLOOP.

    connection->set_attributes(
    EXPORTING
    i_carrier_id = 'LH'
    i_connection_id = '0400'
     ).

    APPEND connection TO connections.
    connection = NEW #( ).

    connection->set_attributes(
    i_carrier_id = 'AA'
    i_connection_id = '001'
     ).

    APPEND connection TO connections.

    LOOP AT connections INTO connection.

      connection->get_attributes(
      importing
*e_carrier_id = carrier_id
*e_connection_id = connection_id
e_carrier_id = data(carrier_id_01)
e_connection_id = data(connection_id_01)
       ).

      out->write( |Flight Connection { carrier_id_01 } { connection_id_01 } | ).

    ENDLOOP.
  ENDMETHOD.
ENDCLASS.

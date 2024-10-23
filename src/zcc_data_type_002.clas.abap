CLASS zcc_data_type_002 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcc_data_type_002 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

*  * Data Objects with Built-in Types
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


* Example 1: Local Types
**********************************************************************

* Comment/Uncomment the following lines to change the type of my_var
    TYPES my_type TYPE p LENGTH 3 DECIMALS 2.
*    TYPES my_type TYPE i .
*    TYPES my_type TYPE string.
*    TYPES my_type TYPE n length 10.

* Variable based on local type
    DATA my_variable TYPE my_type.

    out->write(  `my_variable (TYPE MY_TYPE)` ).
    out->write(   my_variable ).

* Example 2: Global Types
**********************************************************************

* Variable based on global type .
    " Place cursor on variable and press F2 or F3
**    TABLES /dmo/carrier.
    DATA: airport    TYPE /dmo/airport_id VALUE 'FRA',
          it_carrier TYPE STANDARD TABLE OF /dmo/carrier,
          wa_carrier LIKE LINE OF it_carrier.



    SELECT * FROM /dmo/carrier INTO @wa_carrier.
    ENDSELECT.
    out->write( wa_carrier-name && 'nkr').

    out->write(  `airport (TYPE /DMO/AIRPORT_ID )` ).
    out->write(   airport ).

* Example 3: Constants
**********************************************************************

    CONSTANTS c_text   TYPE string VALUE ``.
    CONSTANTS c_number TYPE i      VALUE 12345.

    "Uncomment this line to see syntax error ( VALUE is mandatory)
*  constants c_text2   type string.

    out->write(  `c_text (TYPE STRING)` ).
    out->write(   c_text ).
    out->write(  '---------' ).

    out->write(  `c_number (TYPE I )` ).
    out->write(   c_number ).
    out->write(  `---------` ).

* Example 4: Literals
**********************************************************************

    out->write(  '12345               ' ).    "Text Literal   (Type C)
    out->write(  `12345               ` ).    "String Literal (Type STRING)
    out->write(  12345                  ).    "Number Literal (Type I)

    "uncomment this line to see syntax error (no number literal with digits)
*    out->write(  12345.67
    DATA v TYPE string.

    v = airport.
    out->write( v ).


    DATA n2 TYPE string VALUE 's'.
    IF NOT n2 CO '0123456789'.
      out->write(  'no es numerico' ).
    ENDIF.
  ENDMETHOD.
ENDCLASS.

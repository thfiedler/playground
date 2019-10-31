CLASS zcl_tf_admin_tasks DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    TYPES: BEGIN OF ty_admin_data,
             created_by          TYPE syuname,
             created_in_language TYPE spras,
             created_on_date     TYPE d,
             created_on_timezone TYPE t,
             created_on_time     TYPE t,
           END OF ty_admin_data.
    METHODS get_admin_data.
  PROTECTED SECTION.
  PRIVATE SECTION.

ENDCLASS.



CLASS zcl_tf_admin_tasks IMPLEMENTATION.
  METHOD get_admin_data.
    DATA admin_data TYPE ty_admin_data.

    admin_data-created_on_date = cl_abap_context_info=>get_system_date( ).
    admin_data-created_on_time = cl_abap_context_info=>get_system_time( ).
    "admin_data-created_on_timezone = sy-timlo.
    admin_data-created_by = sy-uname.
    admin_data-created_in_language = sy-langu.
  ENDMETHOD.
ENDCLASS.

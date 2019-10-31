class zcl_tf_admin_tasks definition
  public
  final
  create public .

  public section.
  types: begin of ty_admin_data,
             created_by          type uname,
             created_in_language type langu,
             created_on_date     type d,
             created_on_timezone type t,
             created_on_time     type t,
           end of ty_admin_data.
  methods get_admin_data.
  protected section.
  private section.

endclass.



class zcl_tf_admin_tasks implementation.
  method get_admin_data.
    data admin_data type ty_admin_data.

    admin_data-created_on_date = sy-datum.
    admin_data-created_on_time = sy-uzeit.
    admin_data-created_on_timezone = sy-timlo.
    admin_data-created_by = sy-uname.
    admin_data-created_in_language = sy-langu.
  endmethod.
endclass.

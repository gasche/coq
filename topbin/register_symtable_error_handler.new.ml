let register () = CErrors.register_handler (function
    | Symtable.Error e ->
      Some (Pp.str (Format_doc.asprintf "%a" Symtable.report_error e))
    | _ ->
      None
  )

let () = Cmdlang_to_cmdliner.run {{ project_snake | capitalize }}.main ~name:"{{ project_name }}" ~version:"%%VERSION%%"

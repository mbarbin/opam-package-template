let () = Cmdlang_cmdliner_runner.run {{ project_snake | capitalize }}.main ~name:"{{ project_name }}" ~version:"%%VERSION%%"

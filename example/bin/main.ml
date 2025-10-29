let () =
  Cmdlang_cmdliner_err_runner.run Example.main ~name:"example" ~version:"%%VERSION%%"
;;

let () =
  Command_unix.run
  (* The following vars are substituted during the `dune-release` process. *)
    ~version:"%%VERSION%%"
    ~build_info:"%%VCS_COMMIT_ID%%"
    Example.main
;;

let hello_world = [%sexp "Hello, World!"]

let print_cmd =
  Command.make
    ~summary:"Print hello world."
    (let%map_open.Command () = Arg.return () in
     print_s hello_world)
;;

let main = Command.group ~summary:"An example command." [ "print", print_cmd ]

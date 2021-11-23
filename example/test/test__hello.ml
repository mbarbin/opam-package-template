open! Core

let%expect_test "hello" =
  print_s Example.Hello.hello_world;
  [%expect {| "Hello, World!" |}]
;;

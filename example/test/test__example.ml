open! Core

let%expect_test "hello" =
  print_s Example.hello_world;
  [%expect {| "Hello, World!" |}]
;;

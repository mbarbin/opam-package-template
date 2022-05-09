open! Core

let%expect_test "hello" =
  print_s {{ project_snake | capitalize }}.Hello.hello_world;
  [%expect {| "Hello, World!" |}]
;;

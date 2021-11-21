open! Core

let%expect_test "hello" =
  print_s My_package.Hello.hello_world;
  [%expect {| "Hello, World!" |}]
;;

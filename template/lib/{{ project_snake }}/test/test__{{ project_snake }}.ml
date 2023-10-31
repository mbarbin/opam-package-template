open! Base
open! Expect_test_helpers_base

let%expect_test "hello" =
  print_s {{ project_snake | capitalize }}.hello_world;
  [%expect {| "Hello, World!" |}]
;;

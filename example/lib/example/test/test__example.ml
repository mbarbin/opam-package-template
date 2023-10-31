open! Base
open! Expect_test_helpers_base

let%expect_test "hello" =
  print_s Example.hello_world;
  [%expect {| "Hello, World!" |}]
;;

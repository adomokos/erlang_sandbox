-module(fizzbuzz_tests).
-include_lib("eunit/include/eunit.hrl").

normal_number_test() ->
  ?assertEqual("2", fizzbuzz:evaluate(2)).

divisible_by_3_test() ->
  ?assertEqual("Fizz", fizzbuzz:evaluate(3)).

divisible_by_5_test() ->
  ?assertEqual("Buzz", fizzbuzz:evaluate(5)).

divisible_by_15_test() ->
  ?assertEqual("FizzBuzz", fizzbuzz:evaluate(15)).

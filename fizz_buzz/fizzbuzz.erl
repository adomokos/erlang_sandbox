-module(fizzbuzz).
-export([evaluate/1]).

evaluate(Num) when Num rem 15 =:= 0 ->
  "FizzBuzz";

evaluate(Num) when Num rem 3 =:= 0 ->
  "Fizz";

evaluate(Num) when Num rem 5 =:= 0 ->
  "Buzz";

evaluate(Num) ->
  integer_to_list(Num).

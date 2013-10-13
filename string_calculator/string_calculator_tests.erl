-module(string_calculator_tests).
-include_lib("eunit/include/eunit.hrl").

add(Input) when Input =:= "" ->
  0;

add(Input) ->
  ListValues = string:tokens(Input, ","),
  ListOfInts = lists:map(
                  fun(X) ->
                    {Int, _} = string:to_integer(X),
                    Int end,
                  ListValues),
  lists:sum(ListOfInts).

empty_string_returns_zero_test() ->
  ?assertEqual(0, add("")).

string_number_returns_number_test() ->
  ?assertEqual(1, add("1")).

adds_two_numbers_together_test() ->
  ?assertEqual(4, add("1,3")).

adds_three_numbers_together_test() ->
  ?assertEqual(6, add("1,2,3")).

runtest:
	erlc *.erl
	erl -noshell -pa ebin -eval "eunit:test($(mod), [verbose])" -s init stop

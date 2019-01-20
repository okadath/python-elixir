# TestPython

**ejecutando python3 desde la VM de elixir**

## Installation

instalar rebar3 para compilar:

	wget https://s3.amazonaws.com/rebar3/rebar3 && chmod +x rebar3
	./rebar3 local install

crear:
	
	 mix new test_python

en `mix.exs`:

	defp deps do
	  [
	    {:erlport, "~> 0.10.0"},
	  ]
	end

y llamarlo desde el archivo el /lib/asd.ex
crear en / 


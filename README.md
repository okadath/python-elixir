# TestPython

**Ejecutando python3 desde la VM de elixir**

## Installacion

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

y llamarlo desde el archivo el /lib/asd.ex:

	{:ok, pid} = :python.start([
      {:python, 'python3'},
      {:python_path, './'},
    ]) 

Crear en `/` las funciones de python a usar

## erlport en python

Hay un error en la instalacion, hay que copiar del repositorio de github la carpeta  `erlport/priv/python2/erlport/` en la ubicacion de librerias de python (en mi caso `/usr/local/lib/python3.5/dist-packages/erlport`, si no existe crearla o borrar todo y luego copiar el contenido de la version 3 `erlport/priv/python3/erlport/` sobreescribiendo los archivos de la v2 sin borrar los que no se sobreescriban) se debe hacer como sudo y luego se regresa el chmod de la carpeta erlport:

	sudo chmod -R 777 .

Hay errores al importar la libreria, al final la copia en el local y en el lib de python directamente

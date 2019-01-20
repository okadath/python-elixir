defmodule TestPython do
  def hello do
    {:ok, pid} = :python.start([
      {:python, 'python3'},
      {:python_path, './lib/'},
    ]) 
        
    :python.call(pid, :function_add, :add, [1, 2])
    |> IO.inspect 
        
    :python.call(pid, :sys, :"version.__str__", [])
    |> IO.inspect 

    :python.stop(pid)

  end
end

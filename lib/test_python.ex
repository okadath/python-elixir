defmodule TestPython do
  def syncr do
    {:ok, pid} = :python.start([
      {:python, 'python3'},
      {:python_path, './lib/'},
    ]) 
        
    :python.call(pid, :calcs, :add, [1, 2])
    |> IO.inspect 
        
    :python.call(pid, :sys, :"version.__str__", [])
    |> IO.inspect 

    :python.stop(pid)

  end
  def asyncr do
    {:ok, pid} = :python.start([
     {:python, 'python3'},
     {:python_path, './'},
    ]) 
        
    :python.call(pid, :calcs, :register, [self()])
    |> IO.inspect # :kablam

    :python.cast(pid, {:yo, 'Hi', %{k: 'v'}})
        
    receive do
      msg -> IO.inspect msg # {:yo, 'Hi', %{k: 'v'}}
    end

    :python.stop(pid)

  end
end

defmodule TestPythonTest do
  use ExUnit.Case
  doctest TestPython

  test "greets the world" do
    assert TestPython.hello() == :world
  end
end

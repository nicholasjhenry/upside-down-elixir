defmodule Part1Demo1 do
  defmodule Calculator do
    UpsideDown.puts("Compile time")

    def add(x, y) do
      UpsideDown.puts("Run time")
      x + y
    end
  end
end

# 1.1 Run-time vs Compile-time

# c "lib/upside_down/1-1_demo.ex"
defmodule Calculator1p1 do
  UpsideDown.puts("Compile time")

  def add(x, y) do
    UpsideDown.puts("Run time")
    x + y
  end
end

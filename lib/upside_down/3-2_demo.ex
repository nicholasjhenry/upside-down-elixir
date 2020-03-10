# 3-2. Function / Macro: defmacro/? invoked at compile-time
# iex> clear; r  Calculator3p2
# iex> Calculator3p2.add(1, 2)

defmodule Calculator3p2 do
  require Tracer3p1

  def add(x, y) do
    # trace/1 invoked at compile-time
    Tracer3p1.trace(x + y)
  end
end


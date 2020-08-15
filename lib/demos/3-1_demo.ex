# 3.1. Function / Macro: ast => ast
# iex> clear
# iex> require Tracer3p1; Tracer3p1.trace(1 + 2)

defmodule Tracer3p1 do
  # 1 + 2 => {:+, [], [1, 2]}
  # @spec trace(Macro.t) :: Macro.t
  defmacro trace(ast) do
    UpsideDown.inspect(ast, "compile-time")
  end
end



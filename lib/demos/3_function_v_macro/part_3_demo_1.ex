defmodule Part3Demo1 do
  defmodule Tracer do
    # 1 + 2 => {:+, [], [1, 2]}
    # @spec trace(Macro.t) :: Macro.t
    defmacro trace(ast) do
      UpsideDown.inspect(ast, "compile-time")
    end
  end
end

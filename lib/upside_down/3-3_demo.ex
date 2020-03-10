# 3-3. Function / Macro: caller context
# iex> clear; r Calculator3p3
# iex> Calculator3p3.add(1, 2)

defmodule Tracer3p3 do
  defmacro trace(_ast) do
    # macro context (compile-time)
    UpsideDown.inspect(__MODULE__, "macro context")

    quote do
      # caller context (run-time)
      # inlined into the caller context
      UpsideDown.inspect(__MODULE__, "caller context")
    end
  end
end

defmodule Calculator3p3 do
  require Tracer3p3

  def add(_x, _y) do
    # Invoked at compile time
    Tracer3p3.trace(x + y)
  end
end

# NOTE: Back to slides (parse, expand diagram)

defmodule Script do
  def run() do
    require Tracer3p3

    # Parsing phase
    quoted =
      quote do
        Tracer3p3.trace(1 + 2)
      end

    # Expansion Phase
    Macro.expand(quoted, __ENV__)

    # NOTE: Exit to slides

    # unquote/1
    quote do x + 2 end

    x = 1

    quote do x + 2 end

    quote do unquote(x) + 2 end
  end
end

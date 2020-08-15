defmodule Part3Demo3 do
  defmodule Tracer do
    defmacro trace(_ast) do
      # macro context (compile-time)
      UpsideDown.inspect(__MODULE__, "macro context only at compile time")

      quote do
        # caller context (run-time)
        # inlined into the caller context
        UpsideDown.inspect(__MODULE__, "caller context only at runtime")
      end
    end
  end

  defmodule Calculator do
    require Tracer

    def add(_x, _y) do
      # Invoked at compile time
      Tracer.trace(x + y)
    end
  end

  # NOTE: Back to slides (parse, expand diagram)
end

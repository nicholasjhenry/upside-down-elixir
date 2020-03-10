# TracerFinal
defmodule Tracer do
  # trace(ast) -> ast
  defmacro trace(quoted) do
    # compiled in the macro's context
    # executed at compile time (macro expansion)

    trace = Macro.to_string(quoted)

    quote do
      # compiled in the caller's context
      # injected into the caller's context when expanded
      # executed at run time
      IO.inspect(unquote(trace), label: "code")
      IO.inspect(unquote(quoted), label: "result")
    end
  end
end

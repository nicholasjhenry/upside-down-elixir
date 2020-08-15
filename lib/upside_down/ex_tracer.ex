# NOTE: Review ExCalculator first

defmodule ExTracer do
  defmacro trace(ast) do
    source_code_as_string = Macro.to_string(ast)

    quote do
      result = unquote(ast)
      IO.puts("Running #{unquote(source_code_as_string)} returns #{result}")
      result
    end
  end
end

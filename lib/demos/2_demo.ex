# 2. High level syntax / Data as Code

defmodule Script2 do
  def run do
    quote do
      1 + 2
    end

    # =>
    {:+, [context: Elixir, import: Kernel], [1, 2]}

    # Infix operator, operator is between it's operands
    _ = Kernel.+(1, 2)

    # {function, metadata, [arg]}

    quote do
      # (1 + (2 * 3)) - 4
      1 + 2 * 3 - 4
    end

    # Exit to Slides for formatting

    # =>
    {:-, [context: Elixir, import: Kernel],
     [
       {:+, [context: Elixir, import: Kernel],
        [1, {:*, [context: Elixir, import: Kernel], [2, 3]}]},
       4
     ]}

    # =>
    {:-, [],
     [
       {:+, [], [1, {:*, [], [2, 3]}]},
       4
     ]}

    # if is a macro, `h if`
    quote do
      if(true, do: bar)
    end
  end
end

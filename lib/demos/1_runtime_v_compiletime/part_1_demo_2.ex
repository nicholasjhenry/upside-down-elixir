defmodule Part1Demo2 do
  defmodule Calculator do

    @msg System.get_env("MSG")

    def add1(x, y) do
      msg = @msg
      IO.puts(msg)
      x + y
    end

    # restart iex
    def add2(x, y) do
      msg = System.get_env("MSG")
      IO.puts(msg)
      x + y
    end
  end
end

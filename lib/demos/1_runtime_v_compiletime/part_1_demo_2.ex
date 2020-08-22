defmodule Part1Demo2 do
  defmodule Calculator do

    @msg System.get_env("MSG")

    def add1(x, y) do
      msg = @msg
      IO.inspect(msg)
      x + y
    end

    def add2(x, y) do
      msg = System.get_env("MSG")
      IO.inspect(msg)
      x + y
    end
  end
end

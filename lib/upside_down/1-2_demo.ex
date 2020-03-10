# 1.2 Run-time vs Compile-time

# MSG=foo mix compile --force
defmodule Calculator1p2 do
  @msg System.get_env("MSG")

  # iex> Calculator1p2.add1(1, 2)
  # iex> Calculator1p2.add2(1, 2)
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

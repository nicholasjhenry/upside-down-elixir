defmodule UpsideDown do
  def inspect(term, label) do
    IO.inspect(term, label: "\u001b[32m#{label}\u001b[0m")
  end

  def puts(term) do
    IO.puts("\u001b[32m#{term}\u001b[0m")
  end
end

defmodule ExCalculator do
  require ExTracer

  def add(x, y) do
    ExTracer.trace(x + y)
  end
end

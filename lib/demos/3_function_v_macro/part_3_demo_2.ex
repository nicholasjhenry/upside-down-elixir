defmodule Part3Demo2 do
  defmodule Calculator do
    require Part3Demo1.Tracer

    def add(x, y) do
      # trace/1 invoked at compile-time
      Part3Demo1.Tracer.trace(x + y)
    end
  end
end

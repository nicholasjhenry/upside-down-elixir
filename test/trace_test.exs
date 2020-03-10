defmodule TracerTest do
  use ExUnit.Case

  import ExUnit.CaptureIO
  require Tracer

  test "outs the code called and the result" do
    actual =
      capture_io(fn ->
        x = 1
        y = 2
        Tracer.trace(x + y)
      end)

    expected = """
    code: "x + y"
    result: 3
    """

    assert actual == expected
  end
end

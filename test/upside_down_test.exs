defmodule UpsideDownTest do
  use ExUnit.Case

  import ExUnit.CaptureIO
  require UpsideDown

  @tag :pending
  test "truth condition" do
    result =
      capture_io(fn ->
        UpsideDown.myif 1 == 1 do
          IO.puts("yay!")
        end
      end)

    assert result == "yay!\n"
  end

  @tag :pending
  test "falsey condition" do
    result =
      capture_io(fn ->
        UpsideDown.myif 1 == 2 do
          IO.puts("yay!")
        else
          IO.puts("boo!")
        end
      end)

    assert result == "boo!\n"
  end
end

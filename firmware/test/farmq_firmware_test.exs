defmodule FarmQ.FirmwareTest do
  use ExUnit.Case
  doctest FarmQ.Firmware

  test "greets the world" do
    assert FarmQ.Firmware.hello() == :world
  end
end

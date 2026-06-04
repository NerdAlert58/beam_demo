defmodule LoadControlTest do
  use ExUnit.Case, async: false

  test "initial load is zero" do
    assert LoadControl.load() == 0
  end

  test "initial workers_count is zero" do
    assert LoadControl.workers_count() == 0
  end

  test "failure_rate can be read and updated" do
    original = LoadControl.failure_rate()

    try do
      LoadControl.set_failure_rate(42)
      assert LoadControl.failure_rate() == 42
    after
      LoadControl.set_failure_rate(original)
    end
  end
end

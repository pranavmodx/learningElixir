defmodule MixProjectTest do
  use ExUnit.Case
  doctest MixProject

  test "greets the world" do
    assert MixProject.hello() == :world
  end
end

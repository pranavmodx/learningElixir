defmodule Mod do
  def hello(name) do
    IO.puts "Hello #{name}" |> String.trim
  end
end

defmodule Mod.Submod do
  def howareyou(name) do
    IO.puts "#{Mod.hello(name)} , how are you?"
  end
end

defmodule Attr do
  @myattr "hello"

  @moduledoc """
    this is a reserved attribute for documentation purposes
  """

  @derive {Inspect, only: [:name]} # protected attributes
  # @derive {Inspect, except: [:state]}
  defstruct name: "Pranav", state: []

  @doc """
    doc for func and macros
  """
  def func(name) do
    IO.puts ~s(#{@myattr} #{name})
  end
end

"""
We could use require to tell Elixir you’re going to use macros from other module. The slight difference with import is that it allows using macros, but not functions from the specified module:

defmodule Example do
  require SuperMacros

  SuperMacros.do_stuff
end
"""

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

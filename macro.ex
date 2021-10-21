defmodule Macro do
  defmacro unless(expr, do: body) do
    quote do
      if !unquote(expr), do: unquote(body)
    end
  end
end

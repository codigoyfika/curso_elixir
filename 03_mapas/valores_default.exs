defmodule ValoresDefault do
  def imprime(valor, veces \\ 1) do
    1..veces
    |> Enum.each(fn n -> IO.puts("#{n} - #{valor}") end)
  end
end

ValoresDefault.imprime("Hola", 3)
ValoresDefault.imprime("Adios")

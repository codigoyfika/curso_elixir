defmodule EstructurasDatos do
  def recorre([]), do: IO.puts("done")

  def recorre([head | tail]) do
    IO.puts(head)
    recorre(tail)
  end
end

lista = [1, 2, 3, 4, 5]

EstructurasDatos.recorre(lista)

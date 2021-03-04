defmodule Benchmark do
  def get_lista(n) do
    1..n
    |> Enum.map(fn n -> n end)
  end

  def get_mapa(n) do
    1..n
    |> Enum.reduce(%{}, fn n, mapa -> Map.put(mapa, n, n) end)
  end

  def buscar(lista, n) when is_list(lista) do
    lista
    |> Enum.filter(fn x -> x == n end)
  end

  def buscar(mapa, n) when is_map(mapa) do
    mapa
    |> Map.get(n)
  end

  def measure(function) do
    function
    |> :timer.tc()
    |> elem(0)
  end
end

elementos = 10_000_000
IO.puts("Creando lista y mapa con #{elementos} elementos")
lista = Benchmark.get_lista(elementos)
mapa = Benchmark.get_mapa(elementos)

IO.puts("Buscando en la lista el número #{elementos}")
lista_time = Benchmark.measure(fn -> Benchmark.buscar(lista, elementos) end)
IO.puts("Buscar en lista tardó #{lista_time} microsegundos")

IO.puts("Buscando en el mapa el número #{elementos}")
mapa_time = Benchmark.measure(fn -> Benchmark.buscar(mapa, elementos) end)
IO.puts("Buscar en un mapa tardó #{mapa_time} microsegundos")

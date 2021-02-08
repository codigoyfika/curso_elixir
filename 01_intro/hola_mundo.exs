defmodule IntroElixir do
  def saludar, do: "Hola mundo!"

  def saludar(valor) when is_number(valor) and valor < 0 do
    "Que negativo eres #{valor}"
  end

  def saludar(valor) when is_number(valor) do
    "Tu nombre es un numero? #{valor}"
  end

  def saludar("Ana") do
    "Hola de nuevo Ana"
  end

  def saludar(nombre) do
    "Encantado de conocerte #{nombre}"
    despedir()
  end

  defp despedir do
    "Adios"
  end
end

IO.puts(IntroElixir.saludar())
IO.puts(IntroElixir.saludar("Ana"))
IO.puts(IntroElixir.saludar("Erick"))
IntroElixir.saludar("Erick") |> IO.puts()
IO.puts(IntroElixir.saludar(1))

-100
|> IntroElixir.saludar()
|> IO.puts()

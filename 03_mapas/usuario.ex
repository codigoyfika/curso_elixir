defmodule Usuario do
  @enforce_keys [:nombre]
  defstruct [:nombre, :apellido, rol: :viewer]
end

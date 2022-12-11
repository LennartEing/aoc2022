defmodule AoC.Utils.Stack do

  @enforce_keys [:array]

  @type value :: any

  @type t :: %__MODULE__{array: [value]}

  defstruct array: []

  @spec new([value]) :: __MODULE__.t
  def new(array \\ []), do: %__MODULE__{array: array}

  @spec size(t) :: non_neg_integer
  def size(%__MODULE__{array: array}), do: length(array)

  @spec push(t, value) :: t
  def push(%__MODULE__{array: array}, val), do: %__MODULE__{array: [val | array]}

  @spec pop(t) :: {:ok, t, value} | {:empty, t}
  def pop(%__MODULE__{array: []} = stack), do: {:empty, stack}
  def pop(%__MODULE__{array: [head | tail]}), do: {:ok, %__MODULE__{array: tail}, head}

end

defmodule StringComparison do
  def compare_ignore_whitespace(str1, str2) do
    normalized_str1 = remove_whitespace(str1)
    normalized_str2 = remove_whitespace(str2)

    normalized_str1 == normalized_str2
  end

  defp remove_whitespace(str) do
    str
    # Removes all whitespace characters
    |> String.replace(~r/\s/, "")
  end
end

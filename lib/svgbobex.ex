defmodule SvgBobEx do
    @doc """
      Takes the string containing the ASCII graph and converts it into
      SVG data. Returns `{ :ok, String.t }` on success, or
      `{ :error, reason }` on failure.
    """
    @spec to_svg(String.t) :: { :ok | :error, String.t }
    def to_svg(source) do
        case Porcelain.exec("svgbob", [], in: source) do
            { :error, _ } -> { :error, "Could not find svgbob" }
            %{ out: svg } -> { :ok, svg }
        end
    end

    @doc """
      Takes the string containing the ASCII graph and converts it into
      SVG data. Returns the SVG data, or raises `SvgBobEx.Error` on failure.
    """
    @spec to_svg!(String.t) :: String.t | no_return
    def to_svg!(source) do
        case to_svg(source) do
            { :ok, svg } -> svg
            _ -> raise SvgBobEx.Error
        end
    end

    defmodule Error do
        defexception [:message]

        def exception(_), do: %SvgBobEx.Error{ message: "Could not find svgbob" }
    end
end

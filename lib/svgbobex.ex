defmodule SvgBobEx do
    @doc """
      Takes the string containing the ASCII graph and converts it into
      SVG data.
    """
    @spec to_svg(String.t) :: { :ok | :error, String.t }
    def to_svg(source) do
        case Porcelain.exec("svgbob", [], in: source) do
            { :error, _ } -> { :error, "Could not find svgbob" }
            %{ out: svg } -> { :ok, svg }
        end
    end
end

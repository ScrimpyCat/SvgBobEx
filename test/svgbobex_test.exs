defmodule SvgBobExTest do
    use ExUnit.Case

    test "SvgBob is successfully being used" do
        assert { :ok, <<"<svg", _ :: binary>> } = SvgBobEx.to_svg("---")
        assert <<"<svg", _ :: binary>> = SvgBobEx.to_svg!("---")
    end
end

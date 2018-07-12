# SvgBobEx
A simple interface to the [svgbob](https://github.com/ivanceras/svgbobrus) tool.


Installation
------------

1. Install [svgbob](https://github.com/ivanceras/svgbobrus).

2. Install [goon](https://github.com/alco/goon).

3. Install SvgBobEx dependency:

```elixir
def applications do
    [applications: [:svgbobex]]
end

def deps do
    [{ :svgbobex, "~> 0.0.2" }]
end
```

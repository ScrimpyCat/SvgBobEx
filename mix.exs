defmodule SvgBobEx.Mixfile do
    use Mix.Project

    def project do
        [
            app: :svgbobex,
            description: "A simple interface to the svgbob tool.",
            version: "0.0.1",
            elixir: "~> 1.3",
            build_embedded: Mix.env == :prod,
            start_permanent: Mix.env == :prod,
            deps: deps(),
            package: package()
        ]
    end

    # Configuration for the OTP application
    #
    # Type `mix help compile.app` for more information
    def application do
        [applications: [:logger, :porcelain]]
    end

    # Dependencies can be Hex packages:
    #
    #   {:mydep, "~> 0.3.0"}
    #
    # Or git/path repositories:
    #
    #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
    #
    # Type `mix help deps` for more examples and options
    defp deps do
        [
            { :porcelain, "~> 2.0" },
            { :ex_doc, "~> 0.13", only: :dev }
        ]
    end

    defp package do
        [
            maintainers: ["Stefan Johnson"],
            licenses: ["BSD 2-Clause"],
            links: %{ "GitHub" => "https://github.com/ScrimpyCat/SvgBobEx" }
        ]
    end
end

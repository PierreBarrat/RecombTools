using RecombTools
using Documenter

Documenter.makedocs(;
	source = "src",
	clean = true,
	doctest = true,
	modules = Module[RecombTools],
	repo = "",
	highlightsig = true,
	sitename = "RecombTools documentation",
	expandfirst = [],
	pages = [
		"Index" => "index.md",
		"Usage" => [
			"Overview" => "overview.md",
			"Important options" => "options.md",
			"Flu example" => "flu_example.md",
		],
		"Under the hood" => [
			"`opttrees`" => "opttrees.md",
			"`runopt`" => "runopt.md",
			"Resolving" => "resolving.md",
		],
		"Library" => [
			"OptArgs" => "types.md",
			"Functions" => "functions.md",
		],
	]
)

deploydocs(
    repo = "github.com/PierreBarrat/RecombTools.jl.git";
    versions = nothing,
)

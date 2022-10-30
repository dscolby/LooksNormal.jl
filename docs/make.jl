using LooksNormal
using Documenter

DocMeta.setdocmeta!(LooksNormal, :DocTestSetup, :(using LooksNormal); recursive=true)

makedocs(;
    modules=[LooksNormal],
    authors="Darren Colby <dscolby17@gmail.com> and contributors",
    repo="https://github.com/dscolby/LooksNormal.jl/blob/{commit}{path}#{line}",
    sitename="LooksNormal.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://dscolby.github.io/LooksNormal.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/dscolby/LooksNormal.jl",
    devbranch="main",
)

using ComplexDiff
using Documenter

DocMeta.setdocmeta!(ComplexDiff, :DocTestSetup, :(using ComplexDiff); recursive = true)

const page_rename = Dict("developer.md" => "Developer docs") # Without the numbers
const numbered_pages = [
    file for file in readdir(joinpath(@__DIR__, "src")) if
    file != "index.md" && splitext(file)[2] == ".md"
]

makedocs(;
    modules = [ComplexDiff],
    authors = "Miguel Raz miguelraz@ciencias.unam.mx",
    repo = "https://github.com/miguelraz/ComplexDiff.jl/blob/{commit}{path}#{line}",
    sitename = "ComplexDiff.jl",
    format = Documenter.HTML(; canonical = "https://miguelraz.github.io/ComplexDiff.jl"),
    pages = ["index.md"; numbered_pages],
)

deploydocs(; repo = "github.com/miguelraz/ComplexDiff.jl")

# ComplexDiff.jl

[![Stable Documentation](https://img.shields.io/badge/docs-stable-blue.svg)](https://miguelraz.github.io/ComplexDiff.jl/stable)
[![In development documentation](https://img.shields.io/badge/docs-dev-blue.svg)](https://miguelraz.github.io/ComplexDiff.jl/dev)
[![Build Status](https://github.com/miguelraz/ComplexDiff.jl/workflows/Test/badge.svg)](https://github.com/miguelraz/ComplexDiff.jl/actions)
[![Test workflow status](https://github.com/miguelraz/ComplexDiff.jl/actions/workflows/Test.yml/badge.svg?branch=main)](https://github.com/miguelraz/ComplexDiff.jl/actions/workflows/Test.yml?query=branch%3Amain)
[![Lint workflow Status](https://github.com/miguelraz/ComplexDiff.jl/actions/workflows/Lint.yml/badge.svg?branch=main)](https://github.com/miguelraz/ComplexDiff.jl/actions/workflows/Lint.yml?query=branch%3Amain)
[![Docs workflow Status](https://github.com/miguelraz/ComplexDiff.jl/actions/workflows/Docs.yml/badge.svg?branch=main)](https://github.com/miguelraz/ComplexDiff.jl/actions/workflows/Docs.yml?query=branch%3Amain)
[![Coverage](https://codecov.io/gh/miguelraz/ComplexDiff.jl/branch/main/graph/badge.svg)](https://codecov.io/gh/miguelraz/ComplexDiff.jl)
[![DOI](https://zenodo.org/badge/DOI/FIXME)](https://doi.org/FIXME)
[![Contributor Covenant](https://img.shields.io/badge/Contributor%20Covenant-2.1-4baaaa.svg)](CODE_OF_CONDUCT.md)
[![All Contributors](https://img.shields.io/github/all-contributors/miguelraz/ComplexDiff.jl?labelColor=5e1ec7&color=c0ffee&style=flat-square)](#contributors)
[![BestieTemplate](https://img.shields.io/endpoint?url=https://raw.githubusercontent.com/JuliaBesties/BestieTemplate.jl/main/docs/src/assets/badge.json)](https://github.com/JuliaBesties/BestieTemplate.jl)

## I can't believe it's not real

Say you like finite differences, but dislike how they succumb to catastrophic cancellation. Define

$$
f^\prime(x_0) \equiv \lim_{h\to 0} \textrm{Im}\left(\frac{f(x_0+i h)}{h}\right),
$$
with $i^2 = -1$ and $\textrm{Im}(z)$ the imaginary part of $z$.

If you plot it, you get something like

![finitediff](./finitediff.png "Finite Diff")

whereas the complex difference scheme as described in [Squire and Trapp](https://epubs.siam.org/doi/epdf/10.1137/S003614459631241X) or [Nick Higham's blog](https://nhigham.com/2020/10/06/what-is-the-complex-step-approximation/) will give you

![complexdiff](./complexdiff.png "Complex Diff")

where the lack of subtraction will let you have accurate approximations even when $x_0 = 10^-100$.

WIP: This package implements that approach, and bridges your Julian experience via `DifferentiationInterface.jl` and `ADTypes.jl`.

## How to Cite

If you use ComplexDiff.jl in your work, please cite using the reference given in [CITATION.cff](https://github.com/miguelraz/ComplexDiff.jl/blob/main/CITATION.cff).

## Contributing

If you want to make contributions of any kind, please first that a look into our [contributing guide directly on GitHub](docs/src/90-contributing.md) or the [contributing page on the website](https://miguelraz.github.io/ComplexDiff.jl/dev/90-contributing/)

---

### Contributors

<!-- ALL-CONTRIBUTORS-LIST:START - Do not remove or modify this section -->
<!-- prettier-ignore-start -->
<!-- markdownlint-disable -->

<!-- markdownlint-restore -->
<!-- prettier-ignore-end -->

<!-- ALL-CONTRIBUTORS-LIST:END -->

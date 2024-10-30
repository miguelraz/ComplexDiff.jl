f1(f, x, h) = (f(x + h) - f(x - h)) / (2h)
f2(f, x, h) = imag(f(x + im * h)) / h
f(x) = exp(x)
x_0 = 1.0

hs = logrange(1e-1, 1e-12, 1000) |> collect;
# Tomamos los valores absolutos de los errores relativos:
y1s = abs.((f1.(f, x_0, hs) .- f(x_0)) ./ f(x_0));
y2s = abs.((f2.(f, x_0, hs) .- f(x_0)) ./ f(x_0));
ticks = [1e-1, 1e-2, 1e-3, 1e-4, 1e-5, 1e-6, 1e-7, 1e-8, 1e-9, 1e-10, 1e-11, 1e-12]

using Plots

p = Plots.plot(
    hs,
    y1s,
    xaxis = :log10,
    yaxis = :log10,
    label = "Centered Finite Difference",
    xticks = ticks,
    yticks = ticks,
    title = "Relative Error",
)

nn = findfirst(iszero, y2s) - 1
p2 = Plots.plot(
    hs[1:nn],
    y2s[1:nn],
    label = "Complex Finite Difference",
    xaxis = :log10,
    yaxis = :log10,
    xticks = ticks,
    title = "Relative Error",
)

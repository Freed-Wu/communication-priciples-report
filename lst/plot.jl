#!/usr/bin/env julia
using Plots
using CSV
using LaTeXStrings

fir = CSV.read("tab/fir.csv")
lp = CSV.read("tab/lp.csv")
plot(
xlabel = L"f/\mathrm{kHz}",
ylabel = L"u/V",
label = ["fir" "lp"],
xtick = fir[1]/1000,
fir[1]/1000,
[fir[2], lp[2]]
)
savefig("fig/freq.pdf")

phase = CSV.read("tab/phase.csv")
plot(
xlabel = L"f/\mathrm{kHz}",
ylabel = L"\tau/\mathrm{ms}",
label = "fir",
xtick = phase[1]/1000,
phase[1]/1000,
phase[2]
)
savefig("fig/phase.pdf")

bp = CSV.read("tab/bp.csv")
plot(
xlabel = L"f/\mathrm{kHz}",
ylabel = L"u/V",
label = "BP",
xtick = bp[1],
bp[1],
bp[2]
)
savefig("fig/bp.pdf")

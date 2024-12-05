# setup paths -
const _ROOT = pwd();
const _PATH_TO_SRC = joinpath(_ROOT, "src");
const _PATH_TO_DATA = joinpath(_ROOT, "data");

# check: do we have the required packahes loaded??
"`] build FFMPEG`";
using Pkg
Pkg.add(path="https://github.com/varnerlab/VLQuantitativeFinancePackage.jl.git")
Pkg.activate("."); Pkg.resolve(); Pkg.instantiate(); Pkg.update(); Pkg.build("CodecZlib");

# load external packages -
using VLQuantitativeFinancePackage;
using Distributions
using DataFrames
using CSV
using JLD2
using FileIO
using StatsBase
using StatsPlots
using Colors
using PrettyTables
using LinearAlgebra
using Test

# load my codes -
include(joinpath(_PATH_TO_SRC, "Files.jl"));

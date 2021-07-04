import Pkg; Pkg.add("InstantiateFromURL")
import Pkg; Pkg.add("Distributions")
import Pkg; Pkg.add("Plots")
import Pkg; Pkg.add("QuantEcon")
import Pkg; Pkg.add("Random")
using InstantiateFromURL

using LinearAlgebra, Statistics
using Distributions, Plots, Printf, QuantEcon, Random
gr(fmt = :png);
e = Categorical([0.4, 0.2, 0.2])
@show rand(e, 5)
@show supertype(typeof(e))
@show pdf(e, 1) 
@show support(e)
@show pdf.(e, support(e))
e = Categorical([0.4, 0.2, 0.2]) 
@show rand(e, 5)
@show supertype(typeof(e))
@show pdf(e, 1) 
@show support(e)
@show pdf.(e, support(e))
P = [0.3 0.7; 0.4 0.6]
X = mc_sample_path(P, sample_size = 10_000); # note 100_000 = 100000
μ_1 = count(X .== 1)/length(X) # .== broadcasts test for equality. Could use mean(X .== 1)
0.24773
P = [0.3 0.7; 0.4 0.6];
eu = MarkovChain(P)
X = simulate(eu, 10_000);
μ_2 = count(X .== 1)/length(X) # or mean(x -> x == 1, X)
eu = MarkovChain(P, ["unemployed", "employed"])
simulate(eu, 4, init = 1) # start at state 1
simulate(eu, 4, init = 2) # start at state 2
simulate(eu, 4) # start with randomly chosen initial condition
simulate_indices(eu, 4)
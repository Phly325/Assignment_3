### A Pluto.jl notebook ###
# v0.14.7

using Markdown
using InteractiveUtils

# ╔═╡ bba37df0-dcfe-11eb-200c-6bb0496f57b9
import Pkg; Pkg.add("Distributions")
import Pkg; Pkg.add("Plots")
import Pkg; Pkg.add("QuantEcon")
import Pkg; Pkg.add("Random")
import Pkg; Pkg.add("GR")
import Pkg; Pkg.add("CategoricalArrays")

# ╔═╡ a47cbbaf-355c-44d6-92f4-c87c2e45da2c
using LinearAlgebra, Statistics
using Distributions, Plots, Printf, QuantEcon, Random, GR, CategoricalArrays 

# ╔═╡ eedbb58b-6914-44cb-b153-b8feafec2bd4
gr(fmt = :png)

# ╔═╡ 5043b9b2-eea2-4597-89f6-f66e9dae0b6c
@show rand(e, 5)

# ╔═╡ 82f6e2c8-181f-4150-ad54-76afa7fa3663
@show supertype(typeof(e))

# ╔═╡ 26475a34-5f74-4cef-bf85-bc04758e138c
@show pdf(e, 1)

# ╔═╡ 9b1866b8-12c4-4b2b-b150-c7839d84fd62
@show support(e)

# ╔═╡ c83e3aad-6cff-456c-ad28-6a8f2c1b403b
@show pdf.(e, support(e))

# ╔═╡ fecb053e-a43c-4256-a4d8-a1be8a946f78
@show rand(e, 5)

# ╔═╡ 574ddb18-9817-4f58-990c-1ed6e8440376
@show supertype(typeof(e))

# ╔═╡ 3f974a73-c0d2-4c31-a874-d9b12090772a
@show pdf(e, 1)

# ╔═╡ d9578bf1-ddca-4c83-bde8-50bca25736a5
@show support(e)

# ╔═╡ fe6272aa-11da-4f95-a8ae-4335e380a860
@show pdf.(e, support(e))

# ╔═╡ 85f2d240-c2a8-466c-a611-9f5c83ec9f35
μ_1 = count(Q .== 1)/length(Q)

# ╔═╡ 454849cf-9c21-4334-abcf-6661a663f06e
μ_2 = count(Q .== 1)/length(Q)

# ╔═╡ 2ad0d6c7-e464-4bd8-ad75-af89653959a8
begin
	simulate(eu, 4, init = 1)
	simulate(eu, 4, init = 2)
	simulate(eu, 4)
end

# ╔═╡ 91c48e68-ef8f-46f6-8c65-daf048731775
simulate_indices(eu, 4)

# ╔═╡ e11cc301-850f-4eb4-8a63-7dc26d82c56f
eu = MarkovChain(Y)

# ╔═╡ e0f8d3b8-8856-44fd-a69a-9b01f5ec4d10
eu = MarkovChain(Y, ["unemployed", "employed"])

# ╔═╡ 5796f991-0fba-4628-beb2-4cd247b0aaef
Q = eu_sample_path(Y, sample_size = 10_000)

# ╔═╡ 192b6ed7-5d79-4c74-970d-72c031069817
e = Categorical([0.4, 0.2, 0.2])

# ╔═╡ f6dc387b-7136-44c6-83ff-343177766de5
Q = simulate(eu, 10_000);

# ╔═╡ d04e4572-d9d3-4019-9098-ae948f7761b2
Y = [0.3 0.7; 0.4 0.6]

# ╔═╡ a67d977a-d952-4728-a5c5-5e46cbdc00ac
Y = [0.3 0.7; 0.4 0.6]

# ╔═╡ 3d42b570-5dfc-4d0e-83c1-8aa7b289fcdd
e = Categorical([0.4, 0.2, 0.2])

# ╔═╡ Cell order:
# ╠═bba37df0-dcfe-11eb-200c-6bb0496f57b9
# ╠═a47cbbaf-355c-44d6-92f4-c87c2e45da2c
# ╠═eedbb58b-6914-44cb-b153-b8feafec2bd4
# ╠═3d42b570-5dfc-4d0e-83c1-8aa7b289fcdd
# ╠═5043b9b2-eea2-4597-89f6-f66e9dae0b6c
# ╠═82f6e2c8-181f-4150-ad54-76afa7fa3663
# ╠═26475a34-5f74-4cef-bf85-bc04758e138c
# ╠═9b1866b8-12c4-4b2b-b150-c7839d84fd62
# ╠═c83e3aad-6cff-456c-ad28-6a8f2c1b403b
# ╠═192b6ed7-5d79-4c74-970d-72c031069817
# ╠═fecb053e-a43c-4256-a4d8-a1be8a946f78
# ╠═574ddb18-9817-4f58-990c-1ed6e8440376
# ╠═3f974a73-c0d2-4c31-a874-d9b12090772a
# ╠═d9578bf1-ddca-4c83-bde8-50bca25736a5
# ╠═fe6272aa-11da-4f95-a8ae-4335e380a860
# ╠═a67d977a-d952-4728-a5c5-5e46cbdc00ac
# ╠═5796f991-0fba-4628-beb2-4cd247b0aaef
# ╠═85f2d240-c2a8-466c-a611-9f5c83ec9f35
# ╠═d04e4572-d9d3-4019-9098-ae948f7761b2
# ╠═e11cc301-850f-4eb4-8a63-7dc26d82c56f
# ╠═f6dc387b-7136-44c6-83ff-343177766de5
# ╠═454849cf-9c21-4334-abcf-6661a663f06e
# ╠═e0f8d3b8-8856-44fd-a69a-9b01f5ec4d10
# ╠═2ad0d6c7-e464-4bd8-ad75-af89653959a8
# ╠═91c48e68-ef8f-46f6-8c65-daf048731775
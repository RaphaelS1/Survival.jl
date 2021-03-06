## tools = exported utils
survival(d::UnivariateDistribution, x::Real) = ccdf(d, x)
hazard(d::UnivariateDistribution, x::Real) = pdf(d, x) / survival(d, x)
cum_hazard(d::UnivariateDistribution, x::Real) = -log(survival(d, x))

Fₜ(d, t) = cdf(d, t)
fₜ(d, t) = pdf(d, t)
pₜ(d, t) = pdf(d, t)
Sₜ(d, t) = survival(d, t)
Sₜ(d) = survival(d)
hₜ(d, t) = hazard(d, t)
Hₜ(d, t) = cum_hazard(d, t)

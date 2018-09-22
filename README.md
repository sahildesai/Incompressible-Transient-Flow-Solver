# Lid Driven Cavity

The 2D square Lid Driven Cavity provides an excellent benchmark for testing basic laminar incompressible
flow solvers. A finite volume code has been written to solve a 2D lid-driven cavity filled with a liquid having an
infinite lid moving with a given velocity. A staggered grid has been used for finite volume discretization with
separate cells for pressure (p-cells), x-velocity (u-cells) and y-velocity (v-cells). A fractional step algorithm has
been implemented which uses second order Adams Bashforth (explicit) scheme for time stepping followed by
pressure correction by solving the Pressure-Poisson equation. A gauss Seidel solver has been used to
solve the Pressure-Poisson equation. The final results are shown as x-velocity and y-velocity contour plots,
plots of decrease in error for different time steps utilized and mid-plane x and y velocities. The results are
compared with the original research paper for the proposed benchmark (Ghia, 1982). In conclusion, a possible
improved algorithm has been suggested based on the trend of observed error results which has a potential for
further solution time speed-up.

A computer program has been written to solve the set of equations and obtain a solution. 
For each case, the initial field is set to be zero. Integration in time 
is done till a steady state solution is reached. At each time step the 
pressure equation average 𝐿2 norm should be converged to a residue of 
at least 10−5. Steady state can be assumed when the average 𝐿2 norm of 
the change in x- and y-velocities of the interior nodes between two time 
steps is less than 10−8.

Simulations are ran for the following cases:

Re=100
N=32x32 dt=3.125e-3, 6.23e-3, 0.0125
N=64x64 dt=5e-4, 1e-3, 3e-3
N=128x128 dt=1.25e-4, 2.5e-4, 5e-4

Re=1000
N=32x32 dt=3.125e-3

𝐿2 norm of the change in solution (u-velocity) versus the non-dimensional 
time units on a semi-log plot to show convergence to steady state. Compare 
(plot) the u-velocity distribution at x=0.5 and the v-velocity distribution at
y=0.5 with the data given in Tables I and II in the paper for all three grids on the same
plot using one representative time step. Comment on the trends.

Reference:
1. Ghia, U., Ghia, K. N. and Shin, C. T. 1982. High-Re solutions for incompressible flow using the Navier-Stokes equations and a multigrid method. Journal of Computational Physics. 48 (3): 387-411


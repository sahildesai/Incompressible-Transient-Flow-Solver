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

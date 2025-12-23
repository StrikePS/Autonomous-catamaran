# CFD based Drag Characterization of Catamaran Vessel.

This file presents ANSYS Fluent Simulations of our autonomous catamaran to estimate drag forces for velocites (1-2m/s) and estimate a Velocity vs Drag curve for the vessel.

## Objectives
- Quantify drag vs velocity
- Fit a low-order drag model usable in control and simulation
- Provide reproducible CFD settings

## Geometry
- Catamaran hull length: X m
- Draft: Y m
- Simulation assumes calm water, no waves

## CFD Setup
- Solver: Pressure-based, steady
- Turbulence: k–ω SST
- y+ ≈ 1 with inflation layers
- Water only (free surface treated as symmetry)

## Results
- Drag increases quadratically with velocity
- Fitted model: D = aV + bV²

## Applications
- MATLAB control simulations
- Gazebo / ROS boat models
- Preliminary hull design comparison

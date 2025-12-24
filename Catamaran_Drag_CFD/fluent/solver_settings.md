# Solver Settings – ANSYS Fluent

This document describes the numerical solver settings used for the steady-state
CFD simulations of the catamaran hull.

---

## Solver Type

- Solver: Pressure-based
- Time formulation: Steady
- Velocity formulation: Absolute
- Reference frame: Inertial
- Space dimension: 3D
- Gravity: Disabled

---

## Models

### Turbulence

- Turbulence model: k–ω SST
- Near-wall treatment: Automatic (low-Re formulation)
- Target wall resolution: y⁺ ≈ 1 (inflation layers used)

The k–ω SST model was selected due to its improved performance in predicting
separation and adverse pressure gradients for marine flows.

---

## Materials

- Fluid: Water (liquid)
- Density: Constant (998.2 kg/m³)
- Viscosity: Constant (0.001003 Pa·s)

---

## Pressure–Velocity Coupling

- Scheme: SIMPLE

---

## Spatial Discretization

| Quantity            | Scheme              |
|---------------------|---------------------|
| Gradient            | Least Squares Cell-Based |
| Pressure            | Second Order |
| Momentum            | Second Order Upwind |
| Turbulent Kinetic Energy (k) | Second Order Upwind |
| Specific Dissipation Rate (ω) | Second Order Upwind |

Second-order discretization is used to reduce numerical diffusion and improve
drag prediction accuracy.

---

## Under-Relaxation Factors

- Pressure: 0.5
- Momentum: 0.5
- Turbulent kinetic energy (k): 0.75
- Specific dissipation rate (ω): 0.75

---

## Initialization

- Method: Hybrid Initialization
- Initial velocity: Same as inlet velocity
- Turbulence quantities initialized automatically

---

## Convergence Criteria

### Residuals

- Continuity: 1 × 10⁻⁵ (But Typically converged around 2 x $10^{-2}$)
- X, Y, Z momentum: 1 × 10⁻⁵ (But Typically converged around 1 x $10^{-3}$)
- Turbulence equations (k, ω): 1 × 10⁻⁵

### Monitors

- Drag force in X-direction
- Skin friction coefficient

Convergence is assumed when residuals drop below specified thresholds and
monitored forces reach a steady value.

---

## Iterations

- Maximum iterations per case: 1000
- Typical convergence achieved within: 100-200 iterations

---

## Reference Values

- Reference area: Wetted surface area of hull
- Reference length: Hull length (~2 m)
- Reference velocity: Inlet velocity
- Reference density: 998.2 kg/m³

Reference values are used for coefficient calculations only.

---

## Assumptions & Limitations

- Steady-state RANS formulation
- No free-surface deformation
- No wave-making resistance modeled
- Hull is rigid and stationary

The results therefore represent viscous and pressure drag components only.



# Turbulence Model Selection

This document describes the turbulence modeling approach used for the CFD
simulation of the catamaran hull and provides justification for the chosen model.

---

## Flow Characteristics

- Flow type: External, incompressible flow past a marine hull
- Operating velocities: 1.0–2.0 m/s
- Characteristic length (L): ~2.0 m
- Fluid: Water (ρ = 998.2 kg/m³, μ = 0.001003 Pa·s)

Estimated Reynolds number:

Re ≈ (ρ V L) / μ ≈ (998.2 × 2 × 2) / 0.001003 ≈ 3.98 * $10^{6}$

The flow is therefore fully turbulent.

---

## Selected Turbulence Model

- Model: k–ω SST (Shear Stress Transport)
- Formulation: RANS (Reynolds-Averaged Navier–Stokes)

The k–ω SST model blends:
- k–ω formulation near walls (accurate near-wall behavior)
- k–ε formulation in the free stream (reduced sensitivity to inlet conditions)

---

## Justification for k–ω SST

The k–ω SST model was selected due to:

- Accurate prediction of boundary layers with adverse pressure gradients
- Improved separation prediction compared to k–ε models
- Compatibility with low y⁺ meshes (y⁺ ≈ 1)
- Extensive validation in marine and aerodynamic external flows

This makes it well-suited for predicting viscous and pressure drag on marine hulls.

---

## Near-Wall Treatment

- Wall treatment: Low-Re formulation (no wall functions)
- Mesh requirement: Inflation layers with first cell height targeting y⁺ ≈ 1

This allows direct resolution of the viscous sublayer, improving drag accuracy.

---

## Models Not Used

### k–ε Models

- Require wall functions (y⁺ > 30)
- Less accurate for adverse pressure gradients
- Not ideal for low-speed external marine flows

### LES / DES

- Significantly higher computational cost
- Requires very fine near-wall and wake resolution
- Not practical for parametric velocity sweeps in this study

### Laminar Model

- Reynolds number far exceeds laminar regime
- Would significantly underpredict drag

---

## Assumptions and Limitations

- Steady-state RANS formulation
- Time-averaged turbulence effects only
- Unsteady vortex shedding not resolved
- Wake dynamics are averaged

Despite these limitations, the k–ω SST model provides a good balance between
accuracy and computational efficiency for engineering-level drag prediction.

---

## Applicability

The turbulence model selection is appropriate for:
- Low Froude number operation
- Fully submerged hull conditions
- Comparative drag analysis across velocities

Wave-making and free-surface turbulence effects are not captured.

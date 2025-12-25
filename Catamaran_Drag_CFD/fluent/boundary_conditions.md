# Boundary Conditions – ANSYS Fluent

This document describes the boundary conditions used for the catamaran drag simulations performed in ANSYS Fluent.

The simulation models steady incompressible flow of water past a fixed catamaran hull at various forward velocities.

---

## Fluid Properties

- Fluid: Water (fresh)
- Density (ρ): 998.2 kg/m³
- Dynamic viscosity (μ): 0.001003 Pa·s
- Flow regime: Turbulent
- Turbulence model: k–ω SST

---

## Cell Zone Conditions

- Zone name: catamaran_cfd_domain
- Material name: water-liquid

---

## Inlet (Blue)

- Boundary type: Velocity Inlet
- Velocity magnitude:
  - Case 1: 1.0 m/s
  - Case 2: 1.5 m/s
  - Case 3: 2.0 m/s
- Flow direction: Along positive X-axis
- Turbulence specification:
  - Method: Intensity and Hydraulic Diameter
  - Turbulence intensity: 5%
  - Turbulent Viscosity Ratio: 10
  - Hydraulic diameter: Characteristic hull length (~2 m)

---

## Outlet (Red)

- Boundary type: Pressure Outlet
- Gauge pressure: 0 Pa
- Backflow turbulence:
  - Turbulence intensity: 5%
  - Backflow Turbulent Viscosity Ratio: 10
  - Hydraulic diameter: Same as inlet

This represents an open-water far-field condition.

---

## Walls (Hull Surface, White)

- Boundary type: Wall
- Motion: Stationary
- Shear condition: No-slip
- Roughness: Smooth wall (zero roughness height)

The hull is assumed rigid with submerged volume and surface area with no structural motion.

---

## Symmetry (Yellow)

- Boundary type: Symmetry
- Applied on:
  - Side faces of the fluid domain
  - Top surface (water–air interface approximation)

The symmetry condition enforces zero normal velocity and zero normal gradients,
reducing computational cost while approximating an undisturbed free surface.

---

## Internal Domain

- Boundary type: Fluid (internal)
- Reference frame: Inertial
- Gravity: Disabled

The simulation neglects wave generation and free-surface deformation, focusing
solely on viscous and pressure drag.

---

## Notes & Assumptions

- Free-surface effects and wave-making resistance are neglected
- Results primarily represent viscous + pressure drag
- Valid for low Froude number operation
- Mesh includes inflation layers with target y⁺ ≈ 1
- Steady-state solution

---

## Output Quantities

- Total drag force (N)
- Skin friction coefficient
- Pressure drag contribution

All forces are monitored along the X-direction.


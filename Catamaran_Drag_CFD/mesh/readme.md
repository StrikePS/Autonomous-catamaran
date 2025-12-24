# Meshing Strategy

This document describes the meshing approach used for the CFD analysis of a 2 m catamaran hull in ANSYS Fluent.  
The mesh is designed to accurately resolve near-wall flow for drag estimation while maintaining a reasonable total cell count.

---

## Meshing Tool
- **ANSYS Meshing** (Workbench 2025 R2)

---

## Mesh Type
- Unstructured **tetrahedral** mesh in the bulk fluid
- **Prism (inflation) layers** applied on the hull surface for boundary-layer resolution

---

## Near-Wall Treatment
- Target **y⁺ ≈ 1**
- Suitable for **low-Reynolds-number resolution**
- Used in conjunction with the **k–ω SST turbulence model**
- Wall functions not employed

---

## Inflation Layer Details
- Number of layers: **15**
- Growth rate: **1.2**
- First layer height: **1.3 × 10⁻⁵ m**
- Inflation applied on: **Catamaran hull surface**

**Notes:**
- First-layer thickness calculated based on the y⁺ criterion for water flow
- Valid for operating velocities **up to 2 m/s**
- Ensures accurate prediction of viscous drag components

---

## Fluid Domain

### Global Domain (Fluid Box)
| Direction | Dimension |
|---------|----------|
| Length (X) | 10.0 m |
| Width (Y)  | 4.736 m |
| Height (Z) | 1.0 m |

### Domain Extents
- **Inlet**: 2 m upstream of hull
- **Outlet**: 6 m downstream of hull
- **Side clearance**: 2 m from hull centerline

---

## Boundary Conditions

### Boundary Type Assignment
- **Inlet**: Velocity inlet
- **Outlet**: Pressure outlet
- **Hull surface**: No-slip wall
- **Top surface**: Symmetry
- **Bottom surface**: Symmetry
- **Side surfaces**: Symmetry

---

## Boundary Assumptions

### Free Surface (Top)
- Treated as **symmetry**
- Rigid-lid approximation applied
- Free-surface deformation and wave-making effects neglected

### Bottom Surface
- Treated as **symmetry**
- Represents **deep-water assumption**
- Seabed interaction effects neglected

---

## Rationale for Domain Design
- Upstream length sufficient for uniform inflow development
- Downstream length sufficient to capture wake recovery
- Lateral clearance minimizes blockage effects
- Vertical extent isolates hull-induced flow from boundaries

---

## Local Mesh Refinement

### Fine Mesh Region (Body of Influence)
| Direction | Dimension |
|---------|----------|
| Length (X) | 2.4 m |
| Width (Y)  | 1.136 m |
| Height (Z) | 0.2 m |

### Purpose
- Increased resolution around hull and near-wake region
- Improved drag force accuracy
- Reduced computational cost compared to global refinement

### Implementation
- Implemented using **Body of Influence**
- Aligned with global coordinate axes
- Centered on the catamaran hull

---

## Mesh Independence
- A single mesh configuration was used for this study
- Grid-independence analysis is planned as future work

---

## Limitations
- Free-surface wave effects not captured
- Results primarily represent viscous and form drag under calm-water conditions
- Not suitable for planing or wave-resistance studies

---

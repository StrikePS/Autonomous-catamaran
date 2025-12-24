# Meshing Strategy

## Meshing Tool
- ANSYS Meshing (Workbench 2025 R2)

## Mesh Type
- Unstructured tetrahedral
- Prism inflation layers on hull surface

## Near-Wall Treatment
- Target y⁺ ≈ 1
- Used for k–ω SST turbulence model

## Inflation Layer Details
- Number of layers: 15
- Growth rate: 1.2
- First layer height computed from y⁺ criterion (1.3e-05m)
- First layer height valid for velocities near 2m/s and lower.

## Fluid Domain

### Global Domain (Fluid Box)
- Length (X): 10.0 m
- Width  (Y): 4.736 m
- Height (Z): 1.0 m
- Inlet: 2m upstream
- Outlet: 6m downstream
- Side walls: 2m
- Free surface, Bottom surface and Side walls treated as symmetry

### Boundary Assumptions
- **Top surface**: Symmetry  
  → No free-surface deformation  
  → Wave-making effects neglected (rigid-lid approximation)

- **Bottom surface**: Symmetry  
  → Represents deep-water assumption  
  → Neglects seabed interaction effects

### Rationale
- Upstream length sufficient to develop incoming flow
- Downstream length sufficient to capture the wake
- Lateral clearance minimizes blockage effects
- Vertical extent sufficient to isolate hull-induced flow

## Local Mesh Refinement

### Fine Mesh Box
- Length (X): 2.4 m
- Width  (Y): 1.136 m
- Height (Z): 0.2 m

### Purpose
- Increased resolution near hull and wake
- Accurate drag force estimation
- Reduced total cell count versus global refinement

### Implementation
- Implemented as a Body of Influence
- Aligned with global coordinate axes
- Centered around the hull

## Mesh Independence
- Single mesh used
- Grid independence study planned (future work)

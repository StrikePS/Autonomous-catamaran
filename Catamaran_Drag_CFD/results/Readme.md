# Results

## Objective
The objective of this study is to quantify the **hydrodynamic drag force** acting on the catamaran hull using **ANSYS Fluent**. The analysis focuses only on drag estimation at different forward velocities.

---

## Simulated Cases

| Case | Inlet Velocity (m/s) |
|-----|----------------------|
| 1 | 1.0 |
| 2 | 1.5 |
| 3 | 2.0 |

All cases use the same geometry, mesh, turbulence model, and solver settings. Only the inlet velocity is varied.

---

## Convergence Assessment

### Residual Convergence
- Continuity, momentum, and turbulence residuals converged below **1×10⁻⁵**
- Residuals showed stable behavior with no divergence
- Solutions were run until residuals reached a steady plateau

Residual convergence plots for all cases are included in the `Catamaran_Drag_CFD/results/plots/` directory.

---

### Drag Force Convergence
- Drag force was monitored on the **catamaran hull surface**
- A case was considered converged when:
  - Drag force reached a steady value
  - Fluctuations were less than **1%** over the final iterations

Drag monitor plots from ANSYS Fluent are provided for each velocity case in the `Catamaran_Drag_CFD/results/plots/` directory.

---
### Drag force monitor and residual monitor

The drag force and residual monitor histories show brief spikes at intermediate iterations. These spikes correspond to cases where the solver was **stopped after convergence and later restarted without reinitialization**. Upon restart, additional correction iterations temporarily disturb the force monitor before the solution re-stabilizes.

Since the flow field was already converged prior to restart, these transient spikes do **not** indicate numerical instability or divergence. The final drag value was extracted only after the drag force returned to a steady plateau.

Drag convergence plots for all velocity cases are provided in the `Catamaran_Drag_CFD/results/plots/` directory.

---

## Drag Force Results

| Velocity (m/s) | Drag Force (N) |
|---------------|---------------|
| 1.0 | 2.8119 |
| 1.5 | 6.0429 |
| 2.0 | 10.4462 |

---

## Drag–Velocity Relationship

The drag force increases with velocity and follows the expected quadratic trend:

\[
D \propto V^2
\]

A curve fit of the form:

\[
D = k V^2
\]

was applied to the simulated data and showed good agreement with the numerical results.  
The corresponding drag vs velocity plot is included in the results folder.
The scripts used to generate the fitted curves are included in `Catamaran_Drag_CFD/scripts`

---

## Discussion
- Smooth drag convergence indicates numerical stability and adequate mesh resolution.
- The drag magnitude and trend are consistent with hydrodynamic theory for fully submerged hulls.
- With only three velocity points, the results are intended for **trend analysis** rather than high-fidelity validation.
- Linear drag contribution is negligible compared to the quadratic term in the tested velocity range.

---

## Limitations
- Steady-state simulations only
- Free-surface and wave-making effects neglected
- Air–water interaction not modeled
- Results are valid under deep-water and symmetry assumptions

---

## Summary
This study successfully estimates the drag force acting on the catamaran hull at three operating velocities. The results can be directly used for:
- Performance comparison
- MATLAB-based dynamic and control simulations
- Preliminary autonomous vehicle modeling

---

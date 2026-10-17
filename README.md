# Automotive Suspension Bracket — Static FEA & Topology Optimisation

**SolidWorks Simulation** study of a MacPherson strut suspension bracket under static loading conditions, followed by topology optimisation to reduce mass while maintaining structural integrity. Includes CNC G-code generation for a bolt and nut as part of the CAD/CAM manufacturing component.

---

## Project Overview

This project covers the full design-to-manufacture workflow for an automotive suspension bracket:

1. **CAD modelling** — parametric SolidWorks part model of the MacPherson strut suspension bracket
2. **Static FEA** — von Mises stress, displacement, and factor of safety analysis under representative suspension loads
3. **Topology optimisation** — material removal study to identify minimum-mass geometry meeting structural constraints
4. **CAM/CNC programming** — G-code toolpaths for bolt and nut turning on a lathe

---

## Analyses Performed

### Static FEA (`SUSPENSION_BRACKET-Static 1.*`)

- Applied loads: representative suspension forces at mounting points
- Mesh: solid tetrahedral elements
- Results: von Mises stress distribution, resultant displacement, and factor of safety map
- Constraint: all mounting hole faces fixed

### Topology Optimisation (`SUSPENSION_BRACKET-Topology Study 1.*`)

- Objective: maximise stiffness / minimise compliance
- Mass reduction target: remove material from low-stress regions
- Result: optimised geometry retaining structural load paths
- Preserved: original mounting interfaces and bolt hole positions

### CAM / CNC Machining (Group component)

- **Bolt** — `BOLT-TURNING.CNC` (G-code for lathe turning)
- **Nut** — `NUT-TURNING.CNC` (G-code for lathe turning)
- Both components modelled in SolidWorks (`BolT.SLDPRT`, `Nut.SLDPRT`) with engineering drawings

---

## Technologies Used

| Tool | Purpose |
| --- | --- |
| SolidWorks 2024 | Parametric CAD modelling |
| SolidWorks Simulation | Static FEA (von Mises stress, displacement, factor of safety) |
| SolidWorks Simulation | Topology optimisation study |
| SolidWorks CAM / SimCam | CNC toolpath generation |
| CNC G-code | Lathe turning programs for bolt and nut |

---

## Repository Structure

```text
suspension-bracket-fea-topology/
├── cad-files/
│   ├── SUSPENSION_BRACKET.SLDPRT         # Main bracket parametric model
│   ├── SUSPENSION_BRACKET_CAM.SLDPRT     # CAM-ready variant
│   ├── SUSPENSION_BRACKET_DRAWING.SLDDRW # Engineering drawing
│   ├── BolT.SLDPRT                       # Bolt model
│   ├── Nut.SLDPRT                        # Nut model
│   ├── Bolt Drawing.SLDDRW
│   └── Nut Drawing.SLDDRW
├── simulation-results/
│   ├── SUSPENSION_BRACKET-Static 1.*          # Static FEA result files
│   └── SUSPENSION_BRACKET-Topology Study 1.*  # Topology optimisation results
├── cam-files/
│   ├── BOLT-TURNING.CNC                  # Lathe G-code for bolt
│   └── NUT-TURNING.CNC                   # Lathe G-code for nut
├── docs/
│   ├── CAD_CAM_Report.docx               # Individual report
│   ├── TP066064- CAD-CAM REPORT.pdf
│   └── CAD-CAM LabReport.docx            # Group lab report
└── screenshots/
    └── *.png                             # FEA and CAM simulation views
```

---

## Key Results

| Analysis | Metric | Outcome |
| --- | --- | --- |
| Static FEA | Maximum von Mises stress | Within material yield limit |
| Static FEA | Factor of safety | Greater than 1.0 across all elements |
| Topology optimisation | Material removed | Low-stress interior regions identified |
| Topology optimisation | Load-path integrity | Preserved at mounting interfaces |
| CNC (bolt) | Toolpath strategy | Turning with finishing pass |
| CNC (nut) | Toolpath strategy | Facing and boring |

---

## Opening the Files

- **SolidWorks parts and drawings:** Requires SolidWorks 2022 or later. Open `.SLDPRT` files for 3D models and `.SLDDRW` files for 2D engineering drawings.
- **Simulation results:** Open the studies in SolidWorks Simulation and load the relevant result files from `simulation-results/`.
- **CNC G-code:** Inspect `.CNC` files in a G-code editor. Verify the controller, tooling, workholding, offsets, and machine setup before running any program on a CNC lathe.

---

## My Role

- Modelled the suspension bracket in SolidWorks using the provided MacPherson strut geometry
- Set up and ran the static FEA study, including meshing, fixtures, loading, and post-processing
- Configured and executed the topology optimisation study with mass-reduction constraints
- Generated CNC toolpaths and G-code for bolt and nut turning as part of the group component
- Prepared the technical report documenting the FEA and topology optimisation workflow

---

## Notes

- Numerical stress, displacement, factor-of-safety, and mass-reduction values should be added only when confirmed from the simulation reports.
- Results depend on the material properties, load cases, boundary conditions, mesh quality, and optimisation constraints used.
- CNC programs must be validated for the intended machine and setup before machining.

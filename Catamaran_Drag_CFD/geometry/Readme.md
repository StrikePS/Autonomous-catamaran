# Catamaran Hull Geometry

## File
- 'Catamaran_DemiHull.step'
- 'Catamaran_CFD_DOMAIN.disco'

## Units
- All dimensions are in **meters**

## Scale
- Geometry corresponds to a **2.0 m length** catamaran model

## Coordinate System
- X → longitudinal (forward)
- Y → transverse (starboard positive)
- Z → vertical (upwards)

Origin located at:
- Midship
- Centerline
- Still water level (Z = -0.05)

## Geometry Description
- Two identical demi-hulls
- Symmetric about X = 0.368 plane
- Sharp bow, transom stern
- No appendages (rudders, props removed)

## Wetted Surface
- Designed draft ≈ XX m
- Only submerged portion considered for CFD
- Deck and superstructure excluded
- Wetted Surface area = 1.2791 sq.m

## Simplifications
- No surface roughness modeled
- Fillets simplified
- Sharp edges retained at transom

## CAD Source
- Originally modeled in Fusion 360
- Exported as STEP for CFD
- STEP imported in ANSYS Discovery
- Created fluid domain for meshing and fluent simulation

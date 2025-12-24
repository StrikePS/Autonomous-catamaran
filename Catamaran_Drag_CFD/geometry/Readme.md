# Catamaran Hull Geometry

## Folder
- 'Catamaran_DemiHull'
- 'Catamaran_CFD_DOMAIN'

## Units
- All dimensions are in **meters**

## Scale
- Geometry corresponds to a **2.0 m length** catamaran model

## Coordinate System
-X: Forward → Aft (along vessel length)
-Y: Port → Starboard
-Z: Upwards

Origin located at:
- Midship
- Centerline
- Still water level (Z = -0.05)

## Geometry Description
- Two identical demi-hulls
- Symmetric about X = 0 plane
- Sharp bow, transom stern
- No appendages (rudders, props removed)
- Total outer surface area = 1.6593 sq.m

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

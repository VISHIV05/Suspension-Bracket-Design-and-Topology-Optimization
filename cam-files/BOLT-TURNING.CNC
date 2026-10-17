%1
($Lathe)
($Millimeters)
($AddEmbeddedRegPart 1 0 0)
(BOLT)
G92 Z140
T1 M6
M03 S800

(Face off the end)
G00 X76 Z0
G01 X0 Z0 F0.2
G00 X76 Z2

(Rough out head diameter - 20mm)
G00 X20 Z2
G01 X20 Z-10 F0.2
G01 X76 Z-10 F0.2
G00 X76 Z2

(Rough out shank - multiple passes)
G00 X60 Z2
G01 X60 Z-70 F0.2
G00 X60 Z2

G00 X40 Z2
G01 X40 Z-70 F0.2
G00 X40 Z2

G00 X20 Z2
G01 X20 Z-70 F0.2
G00 X20 Z2

(Finish pass - head)
G00 X20 Z2
G01 X20 Z-10 F0.1
G01 X12 Z-10 F0.1

(Finish pass - shank)
G01 X12 Z-70 F0.1
G01 X11 Z-71 F0.1
G01 X76 Z-71 F0.1

G00 X76 Z2
M05
M30

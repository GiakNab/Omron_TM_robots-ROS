import math
from numpy import *
import xml.etree.ElementTree as ET

'''
In this Part you have to set different parameters which are not stored in the XML file
'''
#off-sets
tcp_offset = [0.05, -0.05, -0.15] # tcp offset wrt the wrist 3 of the TM12
# from the height has been removed 12 cm relative to the support of the prismatic joint of the TM12
z_offset = 0.9 - 0.115 #meters (height of the base)
print(z_offset)

# Positions stored in the HMI panel
IdlePosition = [math.radians(14.42), math.radians(-43.8), math.radians(108.61), math.radians(24.74), math.radians(88.85)
                , math.radians(15.18)]

PickBoxes = [1.066, 0.386, 0.1532,  math.radians(-180), 0, 0] #PickBoxes (PB)
AproxPointPB0 = [0, 0, 0.150, 0, 0, 0] #relative
AproxPointPB1 = [0.622, -0.067, 0.488, math.radians(180), 0, 0] #absolute
DepartPointPB0 = [0, 0, 0.150, 0, 0, 0] #relative
DepartPointPB1 = [0.75, 0.265, 0.508, math.radians(180), 0, 0]

PickSlipsheet = [0.6269, -0.01848, -0.1185,  math.radians(180), 0,  math.radians(90)] #PickSlipsheet (PS) line movement
AproxPointPS0 = [0, 0, 0.350, 0, 0, 0] #relative
AproxPointPS1 = [0.625, -0.019, 0.509, math.radians(180), 0, math.radians(90)] #absolute
DepartPointPS0 = [0, 0, 0.350, 0, 0, 0] #relative
DepartPointPS1 = [0.625, -0.019, 0.509, math.radians(180), 0, math.radians(90)] #absolute

'''
Here we automatically read XML file and we populate our variables.
The XML file is produced by the HMI panel
'''
tree = ET.parse('src/palletizer_gazebo_simulation/gazebo_palletizer/scripts/PalletizeL.xml')
CustomPallet = tree.getroot()

#Name of the Part to palletize
PartName = []
range = int (CustomPallet[0][0].text) - 1
counter = 0
for i in CustomPallet.iter('PartIndex'):
    numb = i.text
    PartName.append('Part'+str(numb))
    if counter >= range:
        break
    counter += 1

print('NumParts = ' + str(range))
print('\n PartName = ', PartName)

#where to go once placed the Part
LocationID = []
for x in CustomPallet.findall("./Pallet/Part/Part/LocationID"):
    LocationID.append(x.text)
print("\n LocationID: ", LocationID)

# Aprox and Depart points 1 are Absolute and the same for all the Parts
AproxPoint1 = []
i = 0
for x in CustomPallet.findall("./Pallet/Part/Part/AproxPoints1/TargetPosition/double"):
    if i <= 2:
        AproxPoint1.append(float(x.text)*1e-3)
    elif i <=5:
        AproxPoint1.append(math.radians(float(x.text)))
    elif i == 6:
        break

    i += 1

DepartPoint1 = []
i = 0
for x in CustomPallet.findall("./Pallet/Part/Part/DepartPoints1/TargetPosition/double"):
    if i <= 2:
        DepartPoint1.append(float(x.text)*1e-3)
    elif i <=5:
        DepartPoint1.append(math.radians(float(x.text)))
    elif i == 6:
        break

    i += 1

print("\n Aproximation point 1 (Absolute) target position:\n" + "[x y z rx ry rz] = ", AproxPoint1)
print("\n Departure point 1 (Absolute) target position:\n" + "[x y z rx ry rz] = ", DepartPoint1)

# Target position of each Part
TargPositons = []
for x in CustomPallet.findall("./Pallet/Part/Part/Trajectory/TargetPosition/double"):
        TargPositons.append(float(x.text))


# Aprox and Depart points 0 are Relative to the previous position
# Aprox0 target of each Part
AproxPoint0 = []
i = 0
for x in CustomPallet.findall("./Pallet/Part/Part/AproxPoints0/TargetPosition/double"):
    if i <=2:
        AproxPoint0.append(float(x.text)*1e-3)
    elif i <=5:
        AproxPoint0.append(math.radians(float(x.text)))
    elif i == 6:
        break
    i += 1

print("\n Aproximation point 0 (Relative to Aprox1) target position:\n" + "[x y z rx ry rz] = ", AproxPoint0)

# Depart0 target of each Part
DepartPoint0 = []
i = 0
for x in CustomPallet.findall("./Pallet/Part/Part/DepartPoints0/TargetPosition/double"):
    if i <=2:
        DepartPoint0.append(float(x.text)*1e-3)
    elif i <=5:
        DepartPoint0.append(math.radians(float(x.text)))
    elif i == 6:
        break
    i += 1
print("\n Departure point 0 (Relative to Part TargPosition):\n" + "[x y z rx ry rz] = ", DepartPoint0)

print("\n TargPositions for boxes and slipsheet:\n", TargPositons)

from compas.geometry import Frame
from compas.geometry import Transformation

f1 = Frame( (0,0,0) , (0,0,-1) , (-1,0,0) )
f2 = Frame.worldXY()
T = Transformation.from_frame_to_frame(f1, f2)
euler_angles = T.rotation.euler_angles(static=True, axes='xyz')

print(euler_angles)
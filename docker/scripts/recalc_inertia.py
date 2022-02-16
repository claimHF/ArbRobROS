# see http://gazebosim.org/tutorials?tut=inertia&cat=build_robot

inertia = [ 172.041901,0.010914,-129.696228,
            0.010914,435.624023,-0.000420,
           -129.696228,-0.000420,375.396729]

scale_factor = 100

inertia = [str(i/scale_factor ** 5) for i in inertia]

print("<inertia ixx=\"" + inertia[0] + "\" ixy=\"" + inertia[1] + "\" ixz=\"" + inertia[2] + "\" iyy=\"" + inertia[3] + "\" iyz=\"" + inertia[4] + "\" izz=\"" + inertia[5] + "\"/>")
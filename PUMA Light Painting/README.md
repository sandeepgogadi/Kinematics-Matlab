[back to Robotics Playground](https://github.com/sandeepgogadi/Robotics-Playground)

[back to Kinematics Matlab](https://github.com/sandeepgogadi/Kinematics-Matlab)

# PUMA Light Painting

![alt text](https://github.com/sandeepgogadi/Kinematics-Matlab/blob/master/PUMA%20Light%20Painting/eiffel.jpg "Eiffel")

![alt text](https://github.com/sandeepgogadi/Kinematics-Matlab/blob/master/PUMA%20Light%20Painting/eiffel.gif "Eiffel Output")

![alt text](https://github.com/sandeepgogadi/Kinematics-Matlab/blob/master/PUMA%20Light%20Painting/skyline.jpg "Skyline")

![alt text](https://github.com/sandeepgogadi/Kinematics-Matlab/blob/master/PUMA%20Light%20Painting/skyline.gif "Skyline Output")

![alt text](https://github.com/sandeepgogadi/Kinematics-Matlab/blob/master/PUMA%20Light%20Painting/love.jpg "Love")

![alt text](https://github.com/sandeepgogadi/Kinematics-Matlab/blob/master/PUMA%20Light%20Painting/love.gif "Love Output")

## Summary

The target of this project is to paint a light painting with PUMA 260 robot and MATLAB. To achieve that goal, I need to use inverse kinematics to calculate all the joint angles when the end-effector is at a certain position with a certain orientation. The robot has a spherical wrist with a 3-color LED as the end-effector. The MATLAB will take a matrix with 10 columns as the input, and every row is recording important information of different nodes that need to be reached. The first 3 columns are the node's x, y, z coordinates, the column 4-6 are the ZYZ Euler angles for the end-effector, the column 7-9 are the RGB values for the LED, ranging from 0 to 1, and the last column is the trajectory type for the robot to go from one node to the next node.

As the robot is a RRRRRR robot(which means that the robot has 6 joints and all of them are revolute joints), I'm able to use kinematic decoupling to solve the problem of inverse kinematics. Since I have the Euler angles for the end-effector, I'm able to get the rotation matrix of the orientation, and the get the exact position of the wrist center in the world frame. That decreases the number of the unknown from 6 to 3, and make it a lot easier to solve this problem. When we only need to care about 3 unknowns, what I recommend is to use geometric approach to solve this problem, as I also used this way to get the right answer.

There are other aspects that need considering, like the joint angle limit, the joint velocity limit, etc. These problems seem to be trivial, but sometimes it will lead to serious problems, like the rapid change in the joint angle value. 

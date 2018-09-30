[back to Robotics Playground](https://github.com/sandeepgogadi/Robotics-Playground)

[back to Kinematics Matlab](https://github.com/sandeepgogadi/Kinematics-Matlab)

# Six Link Robot Planning

The Goal of this project was to develop a program that guides a planar 6 Link robot to move from one configuration to another while avoiding obstacles. to achieve this the code was divided into 5 segments

Generate a function that derives a configuration distance from one position to another.
Develop a Dijkstra algorithm to plan paths through edges and maps the free space.
Develop a random sampling program that tests whether different configurations in the free space collide with obstacles.
Write a local planning program that generates a road map using the possible configurations to move from start point to destination.
Generate a function that creates a probabilistic road map from start point to goal.

The Dijkstra algorithm uses a given list of nodes as vertices and distances of the edges in between to generate the shortest path between the nodes. Once the path is found the function outputs the route between the start position and the final position.

The random sampling is done via generating 6 random inputs as for the robot configuration and evaluates whether the random configuration is within free space or is in contact with any obstacles. to do this the model of the robot is composed of triangles and we use a simple triangle intersection algorithm to see whether collision has occurred.

The purpose of the local planner function is to see the robot can incrementally go from start position to the final position and whether all increments exist in free space. Finally the last function generates a probabilistic road map between the start and final position. The Dijkstra algorithm in the written in the first section is used again to solve for the shortest path along the PRM.

![alt text](https://github.com/sandeepgogadi/Kinematics-Matlab/blob/master/Six%20Link%20Robot%20Planning/output.gif "Output")

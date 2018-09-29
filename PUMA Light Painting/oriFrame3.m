%% helper function
function R03 = oriFrame3(theta1, theta2, theta3)
    R03 = [
        cos(theta1)*cos(theta2)*cos(theta3) - cos(theta1)*sin(theta2)*sin(theta3),     -sin(theta1),   - cos(theta1)*cos(theta2)*sin(theta3) - cos(theta1)*cos(theta3)*sin(theta2)
        cos(theta2)*cos(theta3)*sin(theta1) - sin(theta1)*sin(theta2)*sin(theta3),      cos(theta1),    - cos(theta2)*sin(theta1)*sin(theta3) - cos(theta3)*sin(theta1)*sin(theta2)
        cos(theta2)*sin(theta3) + cos(theta3)*sin(theta2),                              0,              cos(theta2)*cos(theta3) - sin(theta2)*sin(theta3)];
end
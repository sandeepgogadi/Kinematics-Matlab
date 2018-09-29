% Convert the quaternion to a rotation matrix
% The quaternion for Qs + Qx i + Qy j + Qz k, is represented in matrix form as [Qs, Qx, Qy, Qz]

function [R] = quat2rotm(quat)
    R = eye(3);

    R(1,1) = 1 - 2*quat(3)^2 - 2*quat(4)^2;
    R(2,2) = 1 - 2*quat(2)^2 - 2*quat(4)^2;
    R(3,3) = 1 - 2*quat(2)^2 - 2*quat(3)^2;

    R(1,2) = 2*(quat(2)*quat(3) - quat(4)*quat(1));
    R(2,3) = 2*(quat(3)*quat(4) - quat(2)*quat(1));
    R(3,1) = 2*(quat(2)*quat(4) - quat(3)*quat(1));

    R(1,3) = 2*(quat(2)*quat(4) + quat(3)*quat(1));
    R(2,1) = 2*(quat(2)*quat(3) + quat(4)*quat(1));
    R(3,2) = 2*(quat(3)*quat(4) + quat(2)*quat(1));

end

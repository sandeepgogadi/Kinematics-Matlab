% Convert the axis-angle representation into quaternion form.
% If the quaternion is Qs + Qx i + Qy j + Qz k, it is stored as [Qs, Qx, Qy, Qz]

function [quat] = axang2quat(vec, theta)

    quat = [0 0 0 0];
    quat(1) = cos(theta/2);
    quat(2:4) = vec * sin(theta/2);

end

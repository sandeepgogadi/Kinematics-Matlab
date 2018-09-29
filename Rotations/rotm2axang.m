% Convert the rotation matrix R into axis-angle form

function [axang] = rotm2axang(R)

    theta = acos((trace(R)-1)*.5);

    if (0 <= theta) && (theta <= pi)
        if theta == 0
            vec = [0 0 0];
            axang = [vec, theta];
        elseif theta == pi
            c = cos(theta);
            v = 1-c;
            D = [(R(1,1)) (R(2,2)) (R(3,3))];

            [~, idx] = max(D);

            if idx == 1
                x = sqrt((R(1,1)-c)/v);
                y = R(1,2)/(x*v);
                z = R(1,3)/(x*v);
            elseif idx == 2
                y = sqrt((R(2,2)-c)/v);
                x = R(2,1)/(y*v);
                z = R(2,3)/(y*v);
            elseif idx == 3
                z = sqrt((R(3,3)-c)/v);
                x = R(3,1)/(z*v);
                y = R(3,2)/(z*v);
            end
            vec1 = [x y z];
            vec2 = -vec1;
            axang = [vec1, theta; vec2, theta;];
        else
            vec = [R(3,2)-R(2,3) R(1,3)-R(3,1) R(2,1)-R(1,2)]/(2*sin(theta));
            axang = [vec, theta];
        end
    end

end

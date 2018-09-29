function out = LocalPlannerSixLink (x1, x2, obstacle)
% Generate a random freespace configuration for the robot
% This function checks if you can generate a straight line between x1 and
% x2 without collision. It return true when there is a valid line.

    delta = x2 - x1;

    t = delta > 180;
    delta(t) = delta(t) - 360;

    t = delta < -180;
    delta(t) = delta(t) + 360;

    num_samples = ceil(sum(abs(delta))/10);

    for i=1:num_samples
        x = mod(x1 + (i / num_samples) * delta, 360);
        fv = SixLinkRobot(x);
        if CollisionCheck(fv, obstacle)
            out = false;
            return
        end
    end

    out = true;

end

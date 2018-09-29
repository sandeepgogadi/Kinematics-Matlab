function [ q_int ] = quat_slerp( q0, q1, steps )
%QUAT_SLERP Perform SLERP between two quaternions and return the intermediate quaternions
%   Usage: [ q_int ] = quat_slerp( q0, q1, steps )
%   Inputs:
%       q0 is the quaternion representing the starting orientation, 1x4 matrix
%       q1 is the quaternion representing the final orientation, 1x4 matrix
%       steps is the number of intermediate quaternions required to be returned, integer value
%       The first step is q0, and the last step is q1
%   Output:
%       q_int contains q0, steps-2 intermediate quaternions, q1
%       q_int is a (steps x 4) matrix

    %% Your code goes here
    q_int = zeros(steps, 4);
    
    omg = acos(dot(q0, q1));
    theta = 2 * omg;
    
    if theta > pi
        theta = theta - 2*pi;
        omg = theta/2;
        q1 = -q1;
        
    end    
    
    step = 1
    
    for i = linspace(0,1,steps)
        if i == 0
            q_int(step, :) = q0;
        elseif i == 1
            q_int(step, :) = q1;
        else
            q_int(step, :) = (sin((1-i)*omg)/sin(omg)) * q0 + (sin(i*omg)/sin(omg)) * q1;
        end
        step = step + 1;
        
    end
    
end
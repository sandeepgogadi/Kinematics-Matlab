function [pos, R] = puma_fk(theta1, theta2, theta3, theta4, theta5, theta6)

    a = 13;
    b = 2.5;
    c = 8;
    d = 2.5;
    e = 8;
    f = 2.5;
    
    dh = [0 pi/2 a theta1;
          c 0 -b theta2;
          0 -pi/2 -d theta3;
          0 pi/2 e theta4;
          0 -pi/2 0 theta5;
          0 0 f theta6;];
      
    O = [0 0 0 1];
    
    T01 = compute_dh_matrix(dh(1,1), dh(1,2), dh(1,3), dh(1,4));
    T12 = compute_dh_matrix(dh(2,1), dh(2,2), dh(2,3), dh(2,4));
    T23 = compute_dh_matrix(dh(3,1), dh(3,2), dh(3,3), dh(3,4));
    T34 = compute_dh_matrix(dh(4,1), dh(4,2), dh(4,3), dh(4,4));
    T45 = compute_dh_matrix(dh(5,1), dh(5,2), dh(5,3), dh(5,4));
    T56 = compute_dh_matrix(dh(6,1), dh(6,2), dh(6,3), dh(6,4));

    
    T02 = T01*T12;
    T03 = T02*T23;
    T04 = T03*T34;
    T05 = T04*T45;
    T06 = T05*T56;
    
    O06 = (T06*O')';
    
    pos = O06(1:3);
    R = T06(1:3, 1:3);
    
end
function flag = triangle_intersection(P1, P2)
% triangle_test : returns true if the triangles overlap and false otherwise

%%% All of your code should be between the two lines of stars.
% *******************************************************************
flag = true;


for i = 1:3
  idx1 = rem(i,3)+1;
  idx2 = rem(i+1,3)+1;
  idx3 = rem(i+2,3)+1;

  x1 = P1(idx1,1);
  y1 = P1(idx1,2);
  x2 = P1(idx2,1);
  y2 = P1(idx2,2);
  x3 = P1(idx3,1);
  y3 = P1(idx3,2);

  d = (x3-x1)*(y2-y1)-(y3-y1)*(x2-x1);

  s1 = P2(1,1);
  t1 = P2(1,2);
  s2 = P2(2,1);
  t2 = P2(2,2);
  s3 = P2(3,1);
  t3 = P2(3,2);

  d1 = (s1-x1)*(y2-y1)-(t1-y1)*(x2-x1);
  d2 = (s2-x1)*(y2-y1)-(t2-y1)*(x2-x1);
  d3 = (s3-x1)*(y2-y1)-(t3-y1)*(x2-x1);

  if (d<0 && d1>0 && d2>0 && d3>0) || (d>0 && d1<0 && d2<0 && d3<0)
    flag = false;
    break
  end


end


% *******************************************************************
end

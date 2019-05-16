function [ error ] = errorfun( step )
 
f1 = @(x) x.^2 + x + 1;
start = -1; endpoint = 3;
x = start:step:endpoint;
x = x';
y = f1(x);
k1 = length(x);
one = zeros(k1,1) + 1;
A = [x one];
A_A = A'*A;
A_y = A'*y;
R = rref([A_A A_y]);
solution = R(:,3);
solution_analytical = [3; 4/3];
difference = solution - solution_analytical;
error = (difference'*difference)^0.5;
 
end

function T2Q1_main
 
v1 = [-56.7 50.05 -3.8 -1 -0.5]';
v2 = [-53.3 46.95 -4.2 -1 0.5]';
v3 = [55 -48.5 4 1 0]';
v4 = [3.4 -3.1 -0.4 0 1]';
v5 = [-56.7 50.05 -3.8 -1 -0.5]';
v6 = [1 -3.1 -0.4 0 1]';
v7 = [1 -3.1 -0.4 0 1];
A = [1 2 8 10 6; 3 4 7 1 5; 5 6 1 12 2];

result_set1 = test_nullspace(A, v1, v2)
result_set2 = test_nullspace(A, v3, v4)
result_set3 = test_nullspace(A, v5, v6)
result_set4 = test_nullspace(A, v5, v7)
 
end

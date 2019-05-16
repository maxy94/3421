function main
 
dp_list = 100:10000;
n = length(dp_list);
for i=1:n
    data_point_number = dp_list(i);
    start = -1; endpoint = 3;
    step = (endpoint-start)/data_point_number;
    error = errorfun(step);
    step_list(i,1) = step;
    error_list(i,1) = error;
end
 
plot(step_list, error_list, '-o')
xlabel('step size')
ylabel('error')
 
end

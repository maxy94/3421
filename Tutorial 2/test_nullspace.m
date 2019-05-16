function [ output ] = test_nullspace( A, p, q )
 
output = 0;
[m1, n1] = size(p); %column and row size of p and q
[m2, n2] = size(q);
if m1 == 5 && n1 ==1 && m2 == 5 && n2 == 1 %% if p and q are 5x1 matrix, then will it be able to Ax=0, since A is a 5x3 matrix
    B = [p q]; %%let B be [p q]
    if rank(B) == 2 %% if rank = number of column, both p and q are indenpendent (r=n)
        Ap = A*p;  %% then check for Ap and Aq = 0
        Aq = A*q;
        if max(abs(Ap)) < 1e-10 && max(abs(Aq)) < 1e-10 %%if ap and aq==0, then they are in the null space of A too.
            output = 1; %%then output 1.
        end
    end
end
 
end

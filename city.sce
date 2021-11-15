clc
clear
A = [-0.1 0.02 ; 0.1 -0.02];
B = [ 0 ; 0]
n = length( B );
Aug = [A, B];
for  j = 1:n-1
for i = j+1 :n 
Aug(i, j : n+1) = Aug(i,j : n+1) - Aug(i,j)/Aug(j,j)*Aug(j,j : n+1);
end
end
x = zeros (n,1);
x(n) = Aug(n,n+1)/Aug(n,n);
for i = n-1:-1:1
x(i) = (Aug(i,n+1) - Aug(i,i+1 : n)* x (i+1 : n))/Aug(i,i);
end
disp(x(2),x(1), 'The values of x,y are')        

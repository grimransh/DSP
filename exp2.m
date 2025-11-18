clear all;
clc;
close all;
arr=[1 -1.22346 1 1 -1.433509 0; 1 -0.437833 1 1 -1.293601 0.556929; 1 1 0 1 -0.612159 0];
[x,y]=sos2tf(arr);
x
y
n=length(x);
m=length(y);
n
m
[r,p,k]=residue(x,y);
r
p
k
l=length(r)
l
for i=1:10
sum=0;
j=1;
while j<=l
sum=r(j)*p(j)^(i-1)+sum;
j=j+1;
end
h(i)=sum;
end
h
clc;clear
x=100:999;
y=[];
j=1;
for i=1:size(x,2)
    if x(i)==fix(x(i)/100)^3+fix(x(i)/10-fix(x(i)/100)*10)^3+(x(i)-fix(x(i)/10)*10)^3
        y(j)=x(i);
        j=j+1;
    end
end
disp('水仙花数：');
disp(y);

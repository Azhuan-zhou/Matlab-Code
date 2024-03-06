function x=sq(a)
x=1;
if a<0
    disp('warning');
    exit;
elseif a==0
    x=0;
else
    while 1
    x_1=x;
    x=(x+a/x)/2;
    if abs(x-x_1)<10^(-5)
        break;
    end
    end
end
end



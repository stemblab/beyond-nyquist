W=8;

% first from our function
F=perm_dftmtx(W);

% now using the maths above
c=0;Fcheck=zeros(W,W);

for n=0:W-1
    c=c+1;
    r=0;
        for w=-(W/2-1):W/2
            r=r+1;
            Fcheck(r,c)=1/sqrt(W)*exp(-2*pi*j*n*w/W);
        end
end

% compare
abs(sum(sum(F-Fcheck)))

%!end (7)


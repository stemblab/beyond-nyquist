function [F,p] = perm_dftmtx(W)

p=circshift(1:W,[0,W/2-1]); % permutation
F=dftmtx(W)/sqrt(W);
F=F(p,:);

%!end (2)


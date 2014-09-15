function H = acc_dump_matrix(R,W,h)

if nargin < 3;h = 1;end

H = hadamard(W/R);
blocks = cell(1,R);
blocks(1,:) = H(h,:);
H = blkdiag(blocks{:});

%!end (4)


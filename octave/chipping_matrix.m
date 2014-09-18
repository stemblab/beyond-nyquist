function D = chipping_matrix(W)

  D = diag(sign(rand(1,W)-1/2));

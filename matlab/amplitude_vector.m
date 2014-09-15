function y = amplitude_vector(W,K)

y = zeros(W,1);
shuffle = randperm(W);
y(shuffle(1:K)) = 1;
y = y.*exp(j*rand(W,1)*2*pi);

%!end (5)


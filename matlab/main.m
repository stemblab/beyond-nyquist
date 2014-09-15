% parameters 
K = 5;
R = 32;
W = 128;

% signal
s = amplitude_vector(W,K); % $K$ unit amplitude, random phase complex tones

% demodulator matrices
F = perm_dftmtx(W); % permuted DFT
D = chipping_matrix(W);
H = acc_dump_matrix(R,W); % accumulate & dump
M = H*D; % system hardware matrix
Phi = M*F; % overall system matrix

% output = system * input
y = Phi*s;

% <a href="/?id=b007h">reconstruction</a?
[x,k,epsilon]=irls(Phi,y);

% plot input and recovered signal
plot(s,'rx'); hold on
plot(x,'o')
legend('input','output')
theta=linspace(0,2*pi,256); % unit cirle guideline
p=plot(exp(j*theta),'.','markersize',2); % $e^{j\theta}$
xlabel('real')
ylabel('imaginary')
axis('square')

%!end (19)


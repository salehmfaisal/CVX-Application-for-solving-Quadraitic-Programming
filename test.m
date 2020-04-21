%
% Load in the problem data.
%
load problemdata.mat
%
% Solving using myqp.
%
[xstar,nustar]=myqp(Q,p,r,A,b)
%
% Solve using cvxqp.
%
[xstar2,nustar2]=cvxqp(Q,p,r,A,b)

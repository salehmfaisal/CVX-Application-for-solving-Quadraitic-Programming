%
% [xstar,nustar]=cvxqp(Q,p,r,A,b)
%
% Uses CVX to solve
%
%   min (1/2)*x'*Q*x+p'*x+r
%   subject to
%          Ax=b
%
% It is assumed that A has full row rank.
%
function [xstar,nustar]=cvxqp(Q,p,r,A,b)
[m,n]=size(A);
cvx_begin
variable x(n);
dual variable y;
minimize(1/2*(transpose(x)*Q*x)+transpose(p)*x+r)
subject to
y: b==A*x;
cvx_end
xstar=x;
nustar=y;

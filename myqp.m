%
% [xstar,nustar]=myqp(Q,p,r,A,b)
%
%
% Solves
%
%   min (1/2)*x'*Q*x+p'*x+r
%   subject to
%          Ax=b
%
% It is assumed that A has full row rank.
%
function [xstar,nustar]=myqp(Q,p,r,A,b)
%%calculation of nu star 
%
% Transpose of A matrix
%
A_transpose= transpose(A);
%
% Inverse of Q Matrix
%
Q_inv= inv(Q);
%
%
AQA=(A*Q_inv*A_transpose);
%
% First part of nustar equation
%
AQA_inv= inv(AQA);
%
AQp=A*Q_inv*p;
%
%
%Second part of nustar equation
%
bAQp=AQp+b;
%
%calculating nustar equation 
%
nustar=-AQA_inv*bAQp;
%
%Calculation of xstar y using nustar
%
Avp= p+A_transpose*nustar;
%
%
xstar= -Q_inv*Avp;







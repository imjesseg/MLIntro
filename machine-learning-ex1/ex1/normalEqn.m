function [theta] = normalEqn(X, y)
%NORMALEQN Computes the closed-form solution to linear regression 
%   NORMALEQN(X,y) computes the closed-form solution to linear 
%   regression using the normal equations.

%theta = zeros(size(X, 2), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Complete the code to compute the closed form solution
%               to linear regression and put the result in theta.
%

% ---------------------- Sample Solution ----------------------

%X2 = [ones(length(y), 1), X(:,:)]; % Add a column of ones to x
Xt = transpose(X);
theta = pinv(Xt*X)*Xt*y;


% -------------------------------------------------------------


% ============================================================

end

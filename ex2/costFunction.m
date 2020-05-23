function [J, grad] = costFunction(theta, X, y)
%COSTFUNCTION Compute cost and gradient for logistic regression
%   J = COSTFUNCTION(theta, X, y) computes the cost of using theta as the
%   parameter for logistic regression and the gradient of the cost
%   w.r.t. to the parameters.

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 


% =temp===================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a psarticular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
%               derivatives of the cost w.r.t. each parameter in theta
%
% Note: grad should have the same dimensions as theta
%
cost = 0;
m = length(y); % number of training examples
for i=1:m 
  cost += ((-y(i) * log(sigmoid(dot(theta,X(i,:))))) - ((1.-y(i)) * log (1-sigmoid((dot(theta,X(i,:)))))));
end
J = cost / m;

grad = 0;
for i=1:m 
  grad += ((sigmoid(dot(theta,X(i,:))) -y(i)) * X(i,:));
end
grad /= m;





% =============================================================

end

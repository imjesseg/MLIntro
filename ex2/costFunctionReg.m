function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));


% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta

cost = 0;
for i=1:m 
  cost += ((-y(i) * log(sigmoid(dot(theta,X(i,:))))) - ((1.-y(i)) * log (1-sigmoid((dot(theta,X(i,:)))))));
end
J = cost / m;

num_theta = size(theta);

reg_theta=0; 
for k=2:num_theta
   reg_theta += (theta(k)^2);
end

J += ((reg_theta*lambda)/(2*m));

grad_t0 = 0;
for i=1:m 
  grad_t0 += ((sigmoid(dot(theta(1),X(i,1))) -y(i)) * X(i,1));
end
grad_t0 /= m;

grad = 0;
for i=1:m 
  grad += ((sigmoid(dot(theta,X(i,:))) -y(i)) * X(i,:));
end
grad /= m;
for j=2:num_theta
  val = (lambda * theta(j)) / m; 
  grad(j) += val;
end
  
  
% =============================================================

end

function J = computeCostMulti(X, y, theta)
%COMPUTECOSTMULTI Compute cost for linear regression with multiple variables
%   J = COMPUTECOSTMULTI(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.


cost = 0;


cost = sum((X*theta-y).^2);
    
   %  theta(1) = temp(1) - alpha * computeCostInterceptMulti(X, y, temp);
     
%     for k = 1:size(X)(2)
%        temp2(k,1) = sum(temp.*X(:,k));           
%     end
%  predicted = theta(1);
%  for j = 2:size(X)(2)
%    predicted +=  (theta(j) * X(i, j));
%  end
%  cost = cost + (predicted - y(i))^2;
%end
J = cost / (2 * m );
%fprintf("COST: %f\n", J);


% =========================================================================

end

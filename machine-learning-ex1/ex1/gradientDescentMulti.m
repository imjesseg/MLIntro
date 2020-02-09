function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)
%GRADIENTDESCENTMULTI Performs gradient descent to learn theta
%   theta = GRADIENTDESCENTMULTI(x, y, theta, alpha, num_iters) updates theta by
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
  m = length(y); % number of training examples
  J_history = zeros(num_iters, 1);

  for iter = 1:num_iters  

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCostMulti) and gradient here.
    %


     temp = theta;
    
    for k = 1:size(X)(2)
        theta(k) = temp(k) - alpha * computeCostDerivMulti(X, y, k, temp);
     end

    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCostMulti(X, y, theta);
  end

end

function J = computeCostDerivMulti(X, y, k, theta)

  m = length(y); % number of training examples

% You need to return the following variables correctly 
  J = 0;

  cost = 0;
  predicted = X * theta;
  cost = X(:,k)' * (predicted - y);
  
  %for i = 1:m
   %predicted = 0;
   %for j = 1:size(X)(2)
     %predicted = predicted + (theta(j) * X(i, j));
   %end  

   %cost = cost + ((predicted - y(i)) * X(i,k));
  %end
  %predicted = (theta .* X) - y;
  %cost2 = (predicted - y) * X;
  J = cost / m ;

% =========================================================================


end

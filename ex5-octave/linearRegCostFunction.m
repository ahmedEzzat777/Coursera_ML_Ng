function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear 
%regression with multiple variables
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the 
%   cost of using theta as the parameter for linear regression to fit the 
%   data points in X and y. Returns the cost in J and the gradient in grad

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost and gradient of regularized linear 
%               regression for a particular choice of theta.
%
%               You should set J to the cost and grad to the gradient.
%


h = X * theta;
error = (h - y)
sumSqErr = error' * error;

Jnoreg  = sumSqErr/(2*m);
unbiasedTheta = [0; theta(2:end)];
Jreg = (unbiasedTheta'*unbiasedTheta)*(lambda / (2*m));
J = Jnoreg + Jreg;

gradNoReg = (X' * error)/m; %m*n - m*1
gradReg = unbiasedTheta*(lambda/m);
grad = gradNoReg +  gradReg;



% =========================================================================

grad = grad(:);

end

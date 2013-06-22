function p = predictnn(X)
%PREDICT Predict the label of an input given a trained neural network
%   p = PREDICTNN(X) outputs the predicted label of X given the
%   trained weights of a neural network (Theta1, Theta2)

%% LOAD THETA VALUES
load thetann1200rev65.mat;

% Useful values
m = size(X, 1);

%% PREDICT THE VALUE
% First forward propagation is applied and then the index of maximum of
% output layer is predicted as output.
p = zeros(size(X, 1), 1);

h1 = sigmoid([ones(m, 1) X] * Theta1');
h2 = sigmoid([ones(m, 1) h1] * Theta2');
[dummy, p] = max(h2, [], 2);

% =========================================================================


end

%% sigmoid function
function g = sigmoid(z)
%SIGMOID Compute sigmoid function
%   J = SIGMOID(z) computes the sigmoid of z.

g = 1.0 ./ (1.0 + exp(-z));
end


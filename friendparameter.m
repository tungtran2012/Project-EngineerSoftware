function friendparameter 
  [X y] = readData("friend.data");
  theta =train(X,y);
  disp("Ðây là giá tr? c?t theta");
  disp(theta);
endfunction
function [X y] = readData(fileName)
 A = load(fileName);
 X = A(:,1:6);
 y = A(:,end);
endfunction
function theta=train(X,y)
  [N D] = size(X);
  X = [ones(size(X,1),1),X];
  theta = zeros(D+1,1);
  T =500;
  alpha = 0.0001;
  for t= 1:T
    theta = theta -alpha*X'*(X*theta-y);
   endfor
endfunction
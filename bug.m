function result = myFunction(input)
% This function demonstrates an uncommon MATLAB bug related to logical indexing with empty arrays.

if isempty(input)
  result = []; % Handle empty input
  return;
end

% Incorrect logical indexing leading to unexpected behavior
index = input > 5; 
result = input(index & input < 10); 

end
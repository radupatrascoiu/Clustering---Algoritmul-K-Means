% Patrascoiu Ion - Radu, 312 CD
function [NC points] = read_input_data(file_params, file_points)
	
	NC = 0;
	points = [];
  
  NC = load(file_params); 
  load(file_points);
  
endfunction
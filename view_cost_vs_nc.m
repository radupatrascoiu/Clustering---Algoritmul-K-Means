% Patrascoiu Ion - Radu, 312 CD
function view_cost_vs_nc(file_points)
  
  x = [];
  y = [];
  points = [];
  load(file_points);
 
  for i = 1 : 10
  x = [ x i ]; % axa ox a graficului
  [centroids group] = clustering_pc(points, i); % generare centroizi
  cost = compute_cost_pc(points, centroids); % calculare cost
  y = [y cost]; % axa oy a graficului
  endfor

  plot(x, y); % trasare grafic
  
endfunction
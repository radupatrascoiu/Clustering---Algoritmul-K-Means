% Patrascoiu Ion - Radu, 312 CD
function cost = compute_cost_pc(points, centroids)
	cost = 0; 

  for j= 1 : length(points)
    min = inf;
    for i = 1 : size(centroids)
      dist = norm(centroids(i,:) - points(j,:));
      if(dist < min)
        min = dist; % distanta minima
      endif  
  
    endfor
  cost += min; % costul reprezinta suma distantelor minime
  endfor

endfunction
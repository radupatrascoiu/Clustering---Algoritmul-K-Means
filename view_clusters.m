% Patrascoiu Ion - Radu, 312 CD
function view_clusters(points, centroids)

  group = [];
  NC = size(centroids,1);
  for j = 1 : length(points)
    min = inf;
    for i = 1 : NC
      dist = norm(centroids(i,:) - points(j,:));
      if(dist < min)
        min = dist;
        indice = i;
      endif  
      group(j,1 : 3) = points(j, :);
      group(j, 4) = indice;
    endfor
  endfor
    v = hsv(NC); % vector de culori
    for i = 1 : NC
      for j = 1 : length(points)
        if i == group(j,4) % daca am gasit un centroid
        scatter3(group(j,1), group(j,2), group(j,3), [], v(i,:), 'filled');
        hold on;
        % pune punctele pe grafic
        endif
      endfor
    endfor
  hold off;
  view(25,45);
  % vizualizare mai buna
  
endfunction
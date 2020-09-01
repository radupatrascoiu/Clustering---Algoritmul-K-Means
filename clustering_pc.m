% Patrascoiu Ion - Radu, 312 CD
function [centroids group] = clustering_pc(points, NC)
	centroids = [];
  index  = randperm(size(points));
  centroids = points(index(1: NC),:); % alegerea aleatorie a centrozilor
  group = [];
  initial = zeros(NC, 3); % initializam matricea cu zerouri
  do
    initial = centroids;
    for j = 1 : length(points)
        min = inf;
        for i = 1 : NC
      
          dist = norm(centroids(i,:) - points(j,:)); % distanta euclidiana
          if(dist < min)
            min = dist; % minumul distantei
            indice = i; % indicele respectiv
          endif  
          group(j,1 : 3) = points(j, :);
          % primele 3 coloane sunt coordonatele punctului
          group(j, 4) = indice;
          % coloana a 4-a va contine indicele centroidului
        endfor
    endfor
   
       for i = 1 : NC
         sum = [0 0 0];
         nr = 0;
         for j = 1 : length(group)
           if group(j, 4) == i
             nr++;
             sum += group(j, 1 : 3);
            endif
         endfor
         if nr ~= 0
           centroids(i, :) = sum/nr; % recalculare centroizi
         endif
      endfor
  until (norm(initial - centroids) < 1e-6) % toleranta
      
endfunction
function M = cumulative_min_energy_map(energyImg, seamDirection)

[m, n] = size(energyImg);
M = zeros(m, n);

if strcmp(seamDirection, 'VERTICAL')
    M(1, :) = energyImg(1, :);
    for x = 2:m
        for y = 1:n
            if y == 1
                M(x, y) = energyImg(x, y) + min([M(x - 1, y), M(x - 1, y + 1)]);
            elseif y == n
                M(x, y) = energyImg(x, y) + min([M(x - 1, y - 1), M(x - 1, y)]);
            else
                M(x, y) = energyImg(x, y) + min([M(x - 1, y - 1), M(x - 1, y), M(x - 1, y + 1)]);
            end
        end
    end
elseif strcmp(seamDirection, 'HORIZONTAL')
    M(:, 1) = energyImg(:, 1);
    for y = 2:n
        for x = 1:m
            if x == 1
                M(x, y) = energyImg(x, y) + min([M(x, y - 1), M(x + 1, y - 1)]);
            elseif x == m
                M(x, y) = energyImg(x, y) + min([M(x - 1, y - 1), M(x, y - 1)]);
            else
                M(x, y) = energyImg(x, y) + min([M(x - 1, y - 1), M(x, y - 1), M(x + 1, y - 1)]);
            end
        end
    end
else
    disp("SeamDirection error.")
    exit()
end
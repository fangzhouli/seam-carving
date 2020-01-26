function horizontalSeam = find_horizontal_seam(cumulativeEnergyMap)

[m, n] = size(cumulativeEnergyMap);
horizontalSeam = zeros(n, 1);

[~, idx] = min(cumulativeEnergyMap(:, n));
horizontalSeam(n) = idx;
for j = n:-1:2
    i = horizontalSeam(j);
    top = inf;
    bottom = inf;
    
    if i > 1
        top = cumulativeEnergyMap(i - 1, j - 1);
    end
    if i < m
        bottom = cumulativeEnergyMap(i + 1, j - 1);
    end
    middle = cumulativeEnergyMap(i, j - 1);
    [~, idx] = min([top, middle, bottom]);
    horizontalSeam(j - 1) = i + (idx - 2);
end
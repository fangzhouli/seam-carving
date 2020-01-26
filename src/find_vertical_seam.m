function verticalSeam = find_vertical_seam(cumulativeEnergyMap) 

[m, n] = size(cumulativeEnergyMap);
verticalSeam = zeros(m, 1);

[~, idx] = min(cumulativeEnergyMap(m, :));
verticalSeam(m) = idx;
for i = m:-1:2
    j = verticalSeam(i);
    left = inf;
    right = inf;
    
    if j > 1
        left = cumulativeEnergyMap(i - 1, j - 1);
    end
    if j < n
        right = cumulativeEnergyMap(i - 1, j + 1);
    end
    middle = cumulativeEnergyMap(i - 1, j);
    [~, idx] = min([left, middle, right]);
    verticalSeam(i - 1) = j + (idx - 2);
end
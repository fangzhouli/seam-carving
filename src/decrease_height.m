function [reducedColorImg,reducedEnergyImg] = decrease_height(im,energyImg)

[m, n, ~] = size(im);
cumulativeEnergyMap = cumulative_min_energy_map(energyImg, 'HORIZONTAL');
horizontalSeam = find_horizontal_seam(cumulativeEnergyMap);
reducedColorImg = zeros(m - 1, n, 3, 'uint8');
for j = 1:n
    rmIdx = horizontalSeam(j);
    for k = 1:3
        col = im(:, j, k);
        reducedCol = [col(1:rmIdx - 1); col(rmIdx + 1:m)];
        reducedColorImg(:, j, k) = reducedCol;
    end
end
reducedEnergyImg = energy_img(reducedColorImg);
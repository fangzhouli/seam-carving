function [reducedColorImg, reducedEnergyImg] = decrease_width(im, energyImg)

[m, n, ~] = size(im);
cumulativeEnergyMap = cumulative_min_energy_map(energyImg, 'VERTICAL');
verticalSeam = find_vertical_seam(cumulativeEnergyMap);
reducedColorImg = zeros(m, n - 1, 3, 'uint8');
for i = 1:m
    rmIdx = verticalSeam(i);
    for k = 1:3
        row = im(i, :, k);
        reducedRow = [row(1:rmIdx - 1), row(rmIdx + 1:n)];
        reducedColorImg(i, :, k) = reducedRow;
    end
end
reducedEnergyImg = energy_img(reducedColorImg);
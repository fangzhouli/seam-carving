clear;

im = imread('inputSeamCarvingPrague.jpg');
energyImg = energy_img(im);
cumulativeEnergyMap_v = cumulative_min_energy_map(energyImg,'VERTICAL');
cumulativeEnergyMap_h = cumulative_min_energy_map(energyImg,'HORIZONTAL');

imagesc(energyImg);
imagesc(cumulativeEnergyMap_v);
imagesc(cumulativeEnergyMap_h);

% seam = find_vertical_seam(cumulativeEnergyMap_v);
% view_seam(im, seam, 'VERTICAL');
% seam = find_horizontal_seam(cumulativeEnergyMap_h);
% view_seam(im, seam, 'HORIZONTAL');
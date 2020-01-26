clear;

im1 = imread('inputSeamCarvingPrague.jpg');
im2 = imread('inputSeamCarvingMall.jpg');
energyImg1 = energy_img(im1);
energyImg2 = energy_img(im2);
for i = 1:100
    [im1, energyImg1] = decrease_width(im1, energyImg1);
    [im2, energyImg2] = decrease_width(im2, energyImg2);
end
figure();
imshow(im1);
figure();
imshow(im2);
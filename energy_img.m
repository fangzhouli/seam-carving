% Input:
%   im - rgb image, M*N*3 matrix
function energyImg = energy_img(im)

im = double(rgb2gray(im));
[m, n] = size(im);
Gx = zeros(m, n);
Gy = zeros(m, n);

for i = 1:m
    for j = 1:n
        if i < m
            Gx(i, j) = im(i + 1, j) - im(i, j);
        end
        if j < n
            Gy(i, j) = im(i, j + 1) - im(i, j);
        end
    end
end

energyImg = sqrt(Gx .* Gx + Gy.* Gy);


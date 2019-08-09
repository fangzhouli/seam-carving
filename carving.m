function carvedImg = carving(im, size, reduceDirection)

energyImg = energy_img(im);
if strcmp(reduceDirection, 'h')
    for i = 1:size
        [im, energyImg] = decrease_height(im, energyImg);
    end
elseif strcmp(reduceDirection, 'w')
    for i = 1:size
        [im, energyImg] = decrease_width(im, energyImg);
    end
end

carvedImg = im;
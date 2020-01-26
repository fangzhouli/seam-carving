function view_seam(im, seam, seamDirection)

if sum(ismember(['HORIZONTAL', 'VERTICAL'], seamDirection)) == 0
    disp('seamDirection must be HORIZONTAL or VRERTICAL.\n');
    exit();
end

[m, n, ~] = size(im);
imshow(im);
hold on;
if strcmp(seamDirection, 'HORIZONTAL')
    plot(1:n, seam, 'r.');
else
    plot(seam, 1:m, 'r.');
end
z0 = rand(5);
[x0, y0] = meshgrid(1:5, 1:5);
[x1, y1] = meshgrid(1:.1:5, 1:.1:5);

% interpolate x0,y0,z0 with x1,y1
z1 = interp2(x0,y0,z0,x1,y1,'cubic');

surf(z1)
colormap hsv
shading interp
hold on
contour(z1)
colorbar
caxis([0 1])
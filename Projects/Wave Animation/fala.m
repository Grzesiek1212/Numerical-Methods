map=[0 0 0.1
     0 0 0.2
     0 0 0.3
     0 0 0.4
     0 0 0.5
     0 0 0.6
     0 0 0.7
     0 0 0.8
     0 0 0.9
     0 0 1.0];

x = -4*pi:pi/70:4*pi;

[X,Y] = meshgrid(x);
Z=zeros(size(X));

f=surf(X,Y,Z);
f.EdgeColor='none';
colormap(map)
xlim([-4*pi 4*pi]);
ylim([-4*pi 4*pi]);
zlim([-1 1]);

for i=1:1000
    pause(0.1)
    X=X+pi/15;
    Y=Y+pi/15;
    f.ZData=sin((X+Y)*i/150)*i/500;
end
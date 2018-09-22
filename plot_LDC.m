clc; clear  all; close all;
%Plotting for n=32 dt=0.003125
load u_vel_32_003125.dat
load v_vel_32_003125.dat
load p_32_003125.dat

load u_vel_32_00625.dat
load u_vel_32_0125.dat
n1=32;
ux_32 = linspace(0,1,n1+1);
uy_32 = linspace(0,1,n1+2);

u_p_32_003125 = zeros(n1+2,n1+1);
 
u_p_32_003125(1,:) = (u_vel_32_003125(1,:)+u_vel_32_003125(2,:))/2;
u_p_32_003125(end,:) = (u_vel_32_003125(end-1,:)+u_vel_32_003125(end,:))/2;
u_p_32_003125(2:end-1,:) = u_vel_32_003125(2:end-1,:);

u_p_32_00625 = zeros(n1+2,n1+1);
u_p_32_00625(1,:) = (u_vel_32_00625(1,:)+u_vel_32_00625(2,:))/2;
u_p_32_00625(end,:) = (u_vel_32_00625(end-1,:)+u_vel_32_00625(end,:))/2;
u_p_32_00625(2:end-1,:) = u_vel_32_00625(2:end-1,:);

figure(1)
contourf(ux_32,uy_32,u_p_32_003125)
colorbar

vx_32 = linspace(0,1,n1+2);
vy_32 = linspace(0,1,n1+1);

v_p_32_003125 = zeros(n1+1,n1+2);
v_p_32_003125(2:end-1,:)=v_vel_32_003125(2:end-1,:);

figure(2)
contourf(vx_32,vy_32,v_p_32_003125)
colorbar

p_32 = linspace(0,1,n1+2);
p_p_32_003125 = zeros(n1+2,n1+2);

p_p_32_003125(2:end-1) = p_32_003125(2:end-1);
p_p_32_003125(:,1) = (p_32_003125(:,1) + p_32_003125(:,2))/2;
p_p_32_003125(:,end) = (p_32_003125(:,end) + p_32_003125(:,end-1))/2;
p_p_32_003125(1,:) = (p_32_003125(1,:) + p_32_003125(2,:))/2;
p_p_32_003125(end,:) = (p_32_003125(end,:) + p_32_003125(end-1,:))/2;

figure(3)
contourf(p_32,p_32,p_p_32_003125)
colorbar

% GHIA PLOTS
u_midplane_ghia = [0, -.03717, -.04192, -.04775, -.06434, -.10150, -.15662,...
  -.21090 ,-.20581, -.13641, .00332, .23151, 0.68717, .73722, .78871, .84123, 1];
y_midplane_ghia = [0, .0547, 0.0625, .0703, .1016, .1719, .2813, .4531, .5,...
  .6172, .7344, .8516, .9531, .9609, .9688, .9766, 1];
  
v_midplane_ghia = [0 0.09233 .10091 .10890 .12317 .16077 .17507 .17527...
  .05454 -.24533 -.22445 -.16914 -.10313 -.08864 -.07391 -.05906 0];
x_midplane_ghia = [0 .0625 0.0703 0.0781 0.0938 0.1563 .2266 .2344 .5...
  .8047 .8594 .9063 .9453 .9531 .9609 .9688 1];

u_midplane_32_003125 = zeros(n1+2,1)  
u_midplane_32_00625 = zeros(n1+2,1)  
for i=1:n1+2  
u_midplane_32_003125(i) =  u_p_32_003125(i,n1/2+1);
u_midplane_32_00625(i) =  u_p_32_00625(i,n1/2+1);
end

figure (4)
plot(u_midplane_ghia, y_midplane_ghia,'o')
hold on
plot(u_midplane_32_003125,vx_32 ,'-')
plot(u_midplane_32_00625,vx_32 ,'--')
grid on
grid minor
title('Ghia vs Numerical Value comparision for Re=100 n=32 dt=0.003125')
xlabel('Velocity')
ylabel('Lid Vertical Length')
legend('Ghia','n=32,dt=0.00125','n=32,dt=0.00625')

v_midplane_32_003125 = zeros(n1+2,1);  
for j=1:n1+2  
v_midplane_32_003125(j) =  v_p_32_003125(n1/2+1,j);
end
v_midplane_32_003125(1)=0; v_midplane_32_003125(end)=0;

figure(5)
plot(x_midplane_ghia,v_midplane_ghia, 'o')
hold on
plot(vx_32,v_midplane_32_003125, '-')
grid on
grid minor
title('Ghia vs Numerical Value comparision for Re=100 n=32 dt=0.003125')
xlabel('Lid Length')
ylabel('Velocity')
legend('Ghia','n=32,dt=0.00125')

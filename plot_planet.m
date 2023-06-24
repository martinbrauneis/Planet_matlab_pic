%cleanup
clear
clc

%single step
single_step = 0; 
prompt = "enter to cuntinue";

%init
disp('******start******');
res = 0.0001;
plot_size = 20;
plot(0,0);
hold on;
axis equal
axis([-plot_size plot_size -plot_size plot_size])

if (single_step == 1); inp=input(prompt,"s"); end
disp('circle 1');
o_x=0;
o_y=0;
r=5.8;
x=o_x-r:res:o_x+r;
m = o_y + sqrt(abs(r.^2-(x-o_x).^2));
m1 = o_y - sqrt(abs(r.^2-(x-o_x).^2));
plot(x, m, x, m1, 'LineWidth', 2);
hold on;


if (single_step == 1); inp=input(prompt,"s"); end
disp('ellipse');
a1=14;
a2=11.5;
a3=16;
b1=5;
b2=b1;
b3=b1;
d=0;
k=0.3;
t=-15:.01:15;
disp('ellipse 1');
x1 = a1*cos(t);
y1 = b1*sin(t)+(k*x1)+d;
plot(x1, y1, 'LineWidth', 2);
hold on;
if (single_step == 1); inp=input(prompt,"s"); end
disp('ellipse 2');
x2 = a2*cos(t);
y2 = b2*sin(t)+(k*x2)+d;
plot(x2, y2, 'LineWidth', 2);
hold on;
if (single_step == 1); inp=input(prompt,"s"); end
disp('ellipse 3');
x3 = a3*cos(t);
y3 = b3*sin(t)+(k*x3)+d;
plot(x3, y3, 'LineWidth', 2);
hold on;

if (single_step == 1); inp=input(prompt,"s"); end
disp('circle 2');
o_x=-5;
o_y=-6;
r=1.3;
x=o_x-r:res:o_x+r;
m = o_y + sqrt(abs(r.^2-(x-o_x).^2));
m1 = o_y - sqrt(abs(r.^2-(x-o_x).^2));
plot(x, m, x, m1, 'LineWidth', 2);
hold on;

if (single_step == 1); inp=input(prompt,"s"); end
disp('square 1');
x=-plot_size:res:plot_size;
x_min = -17;
x_max = 8;
y_min = -10;
y_max = 9;
plot((x_min*ones(size(y_min:res:y_max))),(y_min:res:y_max), 'k--', 'LineWidth', 2);
plot((x_max*ones(size(y_min:res:y_max))),(y_min:res:y_max), 'k--', 'LineWidth', 2);
plot((x_min:res:x_max),(y_min*ones(size(x_min:res:x_max))), 'k--', 'LineWidth', 2);
plot((x_min:res:x_max),(y_max*ones(size(x_min:res:x_max))), 'k--', 'LineWidth', 2);

%end
axis equal
axis([-plot_size plot_size -plot_size plot_size])
hold off;
ax = gca;
exportgraphics(ax,'Plot.png')
disp('******end******');


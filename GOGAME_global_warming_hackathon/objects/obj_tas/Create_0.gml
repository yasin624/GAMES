/// @description Degiskenler

depth = -y;
golge_y = y;
baslatma = false;

var ran_x = irandom_range (-50,50);

path = path_add();
path_add_point(path, x,y,20);
path_add_point(path, x+ran_x,y-30,20);
path_add_point(path, x+ran_x,y,20);
path_set_precision(path,8);
path_set_closed(path,false);
path_start(path,20,0,0);

alarm [0] = 300*room_speed;

max_stack = 50;

my_stack = 1;
yerde = false;
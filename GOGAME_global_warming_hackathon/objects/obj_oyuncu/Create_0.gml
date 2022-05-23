/// @description Degiskenler
image_speed = 0.3;
depth = -y;
x = room_width/2;
y = room_height/2;
camera_set_view_pos(view_camera[0], x-640/2, y-360/2);

// Ozellikler
hiz = 3;
can = 100;
aclik = 100;

// teknik ozellik
durum = oyuncu_durum.kontrol;
giyildi = noone;

anim_idle = spr_oyuncu_idle;
anim_kosma = spr_oyuncu_kosma;
anim_hasat = spr_oyuncu_hasat;




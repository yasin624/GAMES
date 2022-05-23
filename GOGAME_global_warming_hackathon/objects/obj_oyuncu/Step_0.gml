/// @description Durum Kontrolleri

depth = -y;
aclik -= 0.001;

switch (durum)
{
	case oyuncu_durum.kontrol:
	scr_oyuncu_kontrol();
	break;
	
	case oyuncu_durum.quickslotting:
	scr_oyuncu_quickslotting();
	break;
	
	case oyuncu_durum.hasat:
	scr_oyuncu_hasat();
	break;
	
	case oyuncu_durum.envanter:
	scr_oyuncu_envanter();
	scr_oyuncu_quickslotting()
	break;
	
}

scr_crafting();
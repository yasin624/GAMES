/// @description MSG

global.which_img =0;
asd=0;
msg = [
	["Inanilmaz sicak bir yaz gunu,", "CREATINY", sImage1],
	["cekirdek ailesinin kalan tek uyesi Cevdet,", "CREATINY", sImage1],
	["tatilinde ailesine 7 nesildir ait olan ciftlige gelmisti.", "CREATINY", sImage1],
	["Sabah erkenden kalkip ciftlik isleriyle ugrasti.", "CREATINY", sImage1],
	["Oglene dogru kendine guzel bir yemek hazirladi, ve tika basa yedi..", "CREATINY", sImage1],
	["Sicagin ve yemegin ustune Cevdet, uzanmaya karar verdi.", "CREATINY", sImage1],
	["Cevdet hayatinda gordugu en gercekci ve canli ruyalari goruyordu.", "CREATINY", sImage1],
	["Basta guzel baslayan ruyalar gittikce rahatsiz edici bir hal almaya baslamisti.", "CREATINY", sImage1],
	["Bir anda yukariya dogru cekildigini hissetti.", "CREATINY", sImage1],
	["Her sey karardi ve vucudunu hareket ettiremiyordu, uzaydaydi..", "CREATINY", sImage1],
	["Etrafina daha dikkatli bakti, gordugu ufak isiltilarin yildizlar oldugunu farketti.", "CREATINY", sImage1],
	["Gozune sonuk, sade, mavi ve kahverengi renklerden olusan bir gezegen takildi.", "CREATINY", sImage1],
	["Dunya olabilecegini dusundu,", "CREATINY", sImage1],
	["Tam o anda kafasinin icinde inanilmaz kalinlikta anlasilmaz tinida bir ses duydu.", "CREATINY", sImage1],
	["Duydugu bu ses Cevdeti soka sokmustu.", "CREATINY", sImage1],
	["Aklindan gecirip cozmeye calisirken, daha cok korktu..", "CREATINY", sImage1],
	["Tum gucuyle uyanmaya calisti ve yuzune gelen parklak bir isikla uyandi.", "CREATINY", sImage1],
	["Dis dunyadan Cevdetle iletisime gecilmisti ve ..", "CREATINY", sImage1],
	["gerekli ekipmanlarin saglandigi,", "CREATINY", sImage1],
	["ona kuresel isinmayi durdurmasi, aksi taktirde", "CREATINY", sImage1],
	["Dunyanin Yok Olacagini Soylemislerdi.", "CREATINY", sImage1],
	["Ve bir daha asla yatmadan bu kadar yemeyecekti..", "CREATINY", sImage1],
]

global.textBoxDone = 0;
if (!instance_exists(oTextbox)) {
		// Create
		var _tb = instance_create_layer(0, 0, "Instances", oTextbox);
	
		// Add messages to textbox's list
		var _list = _tb.messages;
	
		for (var i=0; i<array_length_1d(msg); i++) {
			var _arr = msg[i];
		
			ds_list_add(_list, _arr);
		}
	}

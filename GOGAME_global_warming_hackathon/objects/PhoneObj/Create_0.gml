/// @description Insert description here
// You can write your code in this editor
global.inst = instance_create_layer(x+15, y+25, "Mobile", StatsButton);
global.questButton = instance_create_layer(x+60, y+25, "Mobile", MissionsButton);
dd=0;
d=0;
trigered=0;
deathmessage=0;
manPowerMessage=0;
winMessage=0;
filterMessage=0;
endMessage=0;
turdmesaj=0;
biomesaj=0;
global.bacaTakildi=0;
global.Filtre=0;
global.ManPower=0;
global.uiOpen=0;
global.turdToplandi = 0;
global.houseDialog = 0;
global.mushroomDialog = 0;
global.biogasDialog = 0;
global.controlpanelDialog = 0;
global.forestDialog = 0;
global.greenportalDialog = 0;
global.obeservatoryDialog = 0;
global.purpleportalDialog = 0;
global.recyclerDialog = 0;
global.redportalDialog = 0;
global.solarDialog = 0;
global.yellowportalDialog = 0;
global.tavukinekDialog = 0;

dialogOn = 0;

msgFiltre = [
	["Topladığın insanları kullanarak fabrikanın bacasına filtreyi takmalısın", "Creatiny", sImage1],
]

msgTurdTopla = [
	["Topladigin diskilari kullanarak biogas uretebilirsin", "Creatiny", sImage1],
]

msgBioGas = [
	["Harikasin. Elde ettigin enerjileri kullanarak gelistirme yapabilirsin", "Creatiny", sImage1],
]
msgEndGame= [
	["Dünyayı Kurtardın!!", "Creatiny", sImage1],
]

msgHouse = [
	["Evim evim guzel evim !", "Cevdet", sImage0],
]
msgWin = [
	["Harikasın! Hep beraber yangını söndürdünüz!!", "Creatiny", sImage1],
]

msgMushroom = [
	["Mantar xd", "Cevdet", sImage0],
]

msgBiogas = [
	["Gubreyi enerjiye cevirmenin harika bir yolu!", "Cevdet", sImage0],
]

msgControlpanel = [
	["Elimdeki teknolojiyle, enerjiyi her seyi gelistirmekte kullanabilirim.", "Cevdet", sImage0],
]

msgForestentry = [
	["Ormanin derinliklerinde bir hazine sakli...", "Cevdet", sImage0],
]

msgGreenportal = [
	["Edindigim bilgiye gore portalin arkasinda cevreye zararli bir fabrika var..", "Cevdet", sImage0],
]

msgObservatory = [
	["Buzullari gozlemlemenin kolay yolu. Gorev tamamladiktan sonra kontrol etmeliyim.", "Cevdet", sImage0],
]

msgPurpleportal = [
	["Simdilik bir gorev verilmedi.", "Cevdet", sImage0],
]

msgRecycler = [
	["Topladigim mantarlari ve taslari geri donusturup, enerjiye cevirebilirim.", "Cevdet", sImage0],
]

msgRedportal = [
	["Tehlikeli ve atesli bir yere cikiyor...", "Cevdet", sImage0],
]

msgSolar = [
	["Buraya gelip gunesten gelen temiz enerjiyi toplayabilirim!", "Cevdet", sImage0],
]

msgYellowportal = [
	["Simdilik bir gorev verilmedi.", "Cevdet", sImage0],
]

msgInekTavuk = [
	["Ineklerin ve Tavuklarin yuzebildigini biliyor muydunuz?", "Creatiny", sImage1],
]


msgFireDie = [
	["Tek Basina Sonduremezsin, 5 Insan Toplamalisin", "Creatiny", sImage1],
]

msgAdamTopla = [
	["Simdi hep birlikte bu atesi sondurebilirsiniz", "Creatiny", sImage1],
]
msgFiltretak = [
	["Once filtre almalisin", "Creatiny", sImage1],
]
global.energyPnt = 0;
global.energyProduced=0;
global.fireSondur =0;
global.adamTopla=0;
global.filtretak =0;
enum quests{
	elektrik_uret,
	yangin_sondur,	
	filtre_tak,
}
k=0;
z=0;
global.QuestArray= [
	["Biogasdan Elektrik Uret",0,["Inek Diskilarini Toplamalisin","Diskilari Metan Gazi Makinesine Koy","Basardin"],],
	["Yangini Sondur",0,["Yangini Sondurmeyi Dene","Tek Basina Yapamazsin, Insan Toplamalisin","Simdi Git Ve Atesi Sondur", "Basardin"],],
	["Fabrikanin Bacasina Filtre Tak",0,["Filtre Almalisin","Bacaya Filtre Takmalisin","Basardin"],],
];
global.ds_quests = QuestDBScript(global.QuestArray);
global.ds_quests_number =ds_grid_height(global.ds_quests);

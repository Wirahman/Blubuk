$(document).ready(function()
{
			//load pesan
			// function ambilpesan()
			// {
			// 	$(".boxpesan").load("ambil.php");
			// 	var con = document.getElementById("boxpesan");
			// 	con.scrollTop = con.scrollHeight;
			// }
			// setInterval(ambilpesan,1000);

			//load online
			// function ol()
			// {
			// $(".boxonline").load("online.php");	
			// }
			// setInterval(ol,1000);

			//kirim pesan chat
			// $("#formpesan").submit(function()
			// {
			// 	var pesan=$(".input-xlarge").val();
			// 	$.ajax({
			// 		url : 'kirim.php',
			// 		type : 'POST',
			// 		data : 'pesan='+pesan,
			// 		success : function(pesan)
			// 		{
			// 			// html5 DOM audio play
			// 			var suara=document.getElementById("suara");
			// 			suara.play();
			// 			if(pesan=="terkirim")
			// 			{
			// 				$(".input-xlarge").val("");
			// 			}
			// 			else
			// 			{
			// 				return false;
			// 			}
			// 		},
			// 		});
			// 	return false;
			
			// });

			//hide html audio
			var audio=$('#suara');
			audio.hide();

			//load pesan chat
			// function ambilpesan()
			// {
			// 	$("#boxpesan").load("ambil.php");
			// 	var con = document.getElementById("boxpesan");
			// 	con.scrollTop = con.scrollHeight;
			// }
			// setInterval(ambilpesan,1000);

			//load emoticon
			$("#emot").popover({
			html: true,
			content: function(){
			// emoticon from www.animated-gifs.eu
			return "<img src='assets/chat/emote/standard/angel.png' title='[Malaikat]' onClick=\"addemot('[Malaikat]')\">"+
			"<img src='assets/chat/emote/standard/confused.png' title='[Bingung]' onClick=\"addemot('[Bingung]')\">"+
			"<img src='assets/chat/emote/standard/cool.png' title='[Keren]' onClick=\"addemot('[Keren]')\">"+
			"<img src='assets/chat/emote/standard/crying.png' title='[Menangis]' onClick=\"addemot('[Menangis]')\">"+
			"<img src='assets/chat/emote/standard/devilish.png' title='[Iblis]' onClick=\"addemot('[Iblis]')\">"+
			"<img src='assets/chat/emote/standard/eek.png' title='[Mata Belo]' onClick=\"addemot('[Mata Belo]')\">"+
			"<img src='assets/chat/emote/standard/error.png' title='[Stop]' onClick=\"addemot('[Stop]')\">"+
			"<img src='assets/chat/emote/standard/favorite.png' title='[Cinta]' onClick=\"addemot('[Cinta]')\">"+
			"<img src='assets/chat/emote/standard/glasses.png' title='[Belajar]' onClick=\"addemot('[Belajar]')\">"+
			"<img src='assets/chat/emote/standard/grin.png' title='[Nyengir]' onClick=\"addemot('[Nyengir]')\">"+
			"<img src='assets/chat/emote/standard/help.png' title='[Tanda Tanya]' onClick=\"addemot('[Tanda Tanya]')\">"+
			"<img src='assets/chat/emote/standard/idea.png' title='[Ide]' onClick=\"addemot('[Ide]')\">"+
			"<img src='assets/chat/emote/standard/important.png' title='[Peringatan]' onClick=\"addemot('[Peringatan]')\">"+
			"<img src='assets/chat/emote/standard/kiss.png' title='[Cium]' onClick=\"addemot('[Cium]')\">"+

			"<img src='assets/chat/emote/standard/monkey.png' title='[Monyet]' onClick=\"addemot('[Monyet]')\">"+
			"<img src='assets/chat/emote/standard/razz.png' title='[melet]' onClick=\"addemot('[melet]')\">"+
			"<img src='assets/chat/emote/standard/sad.png' title='[sedih]' onClick=\"addemot('[sedih]')\">"+
			"<img src='assets/chat/emote/standard/smile-big.png' title='[Ngakak]' onClick=\"addemot('[Ngakak]')\">"+
			"<img src='assets/chat/emote/standard/smile.png' title='[Senyum]' onClick=\"addemot('[Senyum]')\">"+
			"<img src='assets/chat/emote/standard/surprise.png' title='[Kejutan]' onClick=\"addemot('[Kejutan]')\">"+
			"<img src='assets/chat/emote/standard/warning.png' title='[Bahaya]' onClick=\"addemot('[Bahaya]')\">"+
			"<img src='assets/chat/emote/standard/wink.png' title='[Ngedip]' onClick=\"addemot('[Ngedip]')\">"+

			"<img src='assets/chat/emote/1/akasmaran.gif' title='[kasmaran]' onClick=\"addemot('[kasmaran]')\">"+
			"<img src='assets/chat/emote/1/akedip.gif' title='[kedip]' onClick=\"addemot('[kedip]')\">"+
			"<img src='assets/chat/emote/1/aketawa.gif' title='[ketawa]' onClick=\"addemot('[ketawa]')\">"+
			"<img src='assets/chat/emote/1/amarah.gif' title='[marah]' onClick=\"addemot('[marah]')\">"+
			"<img src='assets/chat/emote/1/amelet.gif' title='[melet]' onClick=\"addemot('[melet]')\">"+
			"<img src='assets/chat/emote/1/anangis.gif' title='[nangis]' onClick=\"addemot('[nangis]')\">"+
			"<img src='assets/chat/emote/1/asakit.gif' title='[sakit]' onClick=\"addemot('[sakit]')\">"+
			"<img src='assets/chat/emote/1/bye.gif' title='[bye]' onClick=\"addemot('[bye]')\">"+
			"<img src='assets/chat/emote/1/maki-maki.gif' title='[maki-maki]' onClick=\"addemot('[maki-maki]')\">"+
			"<img src='assets/chat/emote/1/marah.gif' title='[marah1]' onClick=\"addemot('[marah1]')\">"+
			"<img src='assets/chat/emote/1/murung.gif' title='[murung1]' onClick=\"addemot('[murung1]')\">"+
			"<img src='assets/chat/emote/1/nangis.gif' title='[nangis1]' onClick=\"addemot('[nangis1]')\">"+
			"<img src='assets/chat/emote/1/sedih.gif' title='[sedih1]' onClick=\"addemot('[sedih1]')\">"+
			"<img src='assets/chat/emote/1/smile.gif' title='[senyum1]' onClick=\"addemot('[senyum1]')\">";
			// "<img src='assets/chat/emote/1/bonus.png' title='[Apa Ini???]' onClick=\"addemot('[Apa Ini???]')\">";

			}
			});
			
			
});
// function add emot to chat form
function addemot(emot)
{
	isi.value+=" "+emot;
}

var emotImageMap = {
	"\\[Malaikat\\]":"assets/chat/emote/standard/angel.png",
	"\\[Bingung\\]":"assets/chat/emote/standard/confused.png",
	"\\[Keren\\]":"assets/chat/emote/standard/cool.png",
	"\\[Menangis\\]":"assets/chat/emote/standard/crying.png",
	"\\[Iblis\\]":"assets/chat/emote/standard/devilish.png",
	"\\[Mata Belo\\]":"assets/chat/emote/standard/eek.png",
	"\\[Stop\\]":"assets/chat/emote/standard/error.png",
	"\\[Cinta\\]":"assets/chat/emote/standard/favorite.png",
	"\\[Belajar\\]":"assets/chat/emote/standard/glasses.png",
	"\\[Nyengir\\]":"assets/chat/emote/standard/grin.png",
	"\\[Tanda Tanya\\]":"assets/chat/emote/standard/help.png",
	"\\[Ide\\]":"assets/chat/emote/standard/idea.png",
	"\\[Peringatan\\]":"assets/chat/emote/standard/important.png",
	"\\[Cium\\]":"assets/chat/emote/standard/kiss.png",
	"\\[Monyet\\]":"assets/chat/emote/standard/monkey.png",
	"\\[melet\\]":"assets/chat/emote/standard/razz.png",
	"\\[sedih\\]":"assets/chat/emote/standard/sad.png",
	"\\[Ngakak\\]":"assets/chat/emote/standard/smile-big.png",
	"\\[Senyum\\]":"assets/chat/emote/standard/smile.png",
	"\\[Kejutan\\]":"assets/chat/emote/standard/surprise.png",
	"\\[Bahaya\\]":"assets/chat/emote/standard/warning.png",
	"\\[Ngedip\\]":"assets/chat/emote/standard/wink.png",
	"\\[kasmaran\\]":"assets/chat/emote/1/akasmaran.gif",
	"\\[kedip\\]":"assets/chat/emote/1/akedip.gif",
	"\\[ketawa\\]":"assets/chat/emote/1/aketawa.gif",
	"\\[marah\\]":"assets/chat/emote/1/amarah.gif",
	"\\[melet\\]":"assets/chat/emote/1/amelet.gif",
	"\\[nangis\\]":"assets/chat/emote/1/anangis.gif",
	"\\[sakit\\]":"assets/chat/emote/1/asakit.gif",
	"\\[bye\\]":"assets/chat/emote/1/bye.gif",
	"\\[maki-maki\\]":"assets/chat/emote/1/maki-maki.gif",
	"\\[marah1\\]":"assets/chat/emote/1/marah.gif",
	"\\[murung1\\]":"assets/chat/emote/1/murung.gif",
	"\\[nangis1\\]":"assets/chat/emote/1/nangis.gif",
	"\\[sedih1\\]":"assets/chat/emote/1/sedih.gif",
	"\\[senyum1\\]":"assets/chat/emote/1/smile.gif"
};
function stringReplaceAll(string, search, replacement) {
	return string.replace(new RegExp(search, 'g'), replacement);
}
// http://magp.ie/2011/01/20/addslashes-and-stripslashes-in-javascript/
function stripslashes(str) {
    str = str.replace(/\\'/g, '\'');
    str = str.replace(/\\"/g, '"');
    str = str.replace(/\\0/g, '\0');
    str = str.replace(/\\\\/g, '\\');
    return str;
}
function renderEmot(statusString) {
	var renderedString = statusString;
	var emotImageMapKeys = Object.keys(emotImageMap);
	console.log(emotImageMapKeys.length);

	for (var i = 0; i < emotImageMapKeys.length; i ++) {
		console.log('replacing ' + emotImageMapKeys[i] + 'with' + emotImageMap[emotImageMapKeys[i]]);
		renderedString = stringReplaceAll(renderedString, emotImageMapKeys[i], '<img title="'+emotImageMapKeys[i]+'" src="'+emotImageMap[emotImageMapKeys[i]]+'"">');
	}

	return renderedString;
}

function renderEmotTeman(statusStringTeman) {
	var renderedStringTeman = statusStringTeman;
	var emotImageMapKeys = Object.keys(emotImageMap);
	console.log(emotImageMapKeys.length);

	for (var i = 0; i < emotImageMapKeys.length; i ++) {
		console.log('replacing ' + emotImageMapKeys[i] + 'with' + emotImageMap[emotImageMapKeys[i]]);
		renderedStringTeman = stringReplaceAll(renderedStringTeman, emotImageMapKeys[i], '<img title="'+emotImageMapKeys[i]+'" src="'+emotImageMap[emotImageMapKeys[i]]+'"">');
	}

	return renderedStringTeman;
}

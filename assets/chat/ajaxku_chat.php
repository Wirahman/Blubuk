$(document).ready(function()
{
			var audio=$('#suara');
			audio.hide();

			//load emoticon
			$("#emot").popover({
			html: true,
			content: function(){
			// emoticon from www.animated-gifs.eu
			return "<img src='<?php echo $_GET['base_url']; ?>assets/chat/emote/standard/angel.png' title='[Malaikat]' onClick=\"addemot('[Malaikat]')\">"+
			"<img src='<?php echo $_GET['base_url']; ?>assets/chat/emote/standard/confused.png' title='[Bingung]' onClick=\"addemot('[Bingung]')\">"+
			"<img src='<?php echo $_GET['base_url']; ?>assets/chat/emote/standard/cool.png' title='[Keren]' onClick=\"addemot('[Keren]')\">"+
			"<img src='<?php echo $_GET['base_url']; ?>assets/chat/emote/standard/crying.png' title='[Menangis]' onClick=\"addemot('[Menangis]')\">"+
			"<img src='<?php echo $_GET['base_url']; ?>assets/chat/emote/standard/devilish.png' title='[Iblis]' onClick=\"addemot('[Iblis]')\">"+
			"<img src='<?php echo $_GET['base_url']; ?>assets/chat/emote/standard/eek.png' title='[Mata Belo]' onClick=\"addemot('[Mata Belo]')\">"+
			"<img src='<?php echo $_GET['base_url']; ?>assets/chat/emote/standard/error.png' title='[Stop]' onClick=\"addemot('[Stop]')\">"+
			"<img src='<?php echo $_GET['base_url']; ?>assets/chat/emote/standard/favorite.png' title='[Cinta]' onClick=\"addemot('[Cinta]')\">"+
			"<img src='<?php echo $_GET['base_url']; ?>assets/chat/emote/standard/glasses.png' title='[Belajar]' onClick=\"addemot('[Belajar]')\">"+
			"<img src='<?php echo $_GET['base_url']; ?>assets/chat/emote/standard/grin.png' title='[Nyengir]' onClick=\"addemot('[Nyengir]')\">"+
			"<img src='<?php echo $_GET['base_url']; ?>assets/chat/emote/standard/help.png' title='[Tanda Tanya]' onClick=\"addemot('[Tanda Tanya]')\">"+
			"<img src='<?php echo $_GET['base_url']; ?>assets/chat/emote/standard/idea.png' title='[Ide]' onClick=\"addemot('[Ide]')\">"+
			"<img src='<?php echo $_GET['base_url']; ?>assets/chat/emote/standard/important.png' title='[Peringatan]' onClick=\"addemot('[Peringatan]')\">"+
			"<img src='<?php echo $_GET['base_url']; ?>assets/chat/emote/standard/kiss.png' title='[Cium]' onClick=\"addemot('[Cium]')\">"+

			"<img src='<?php echo $_GET['base_url']; ?>assets/chat/emote/standard/monkey.png' title='[Monyet]' onClick=\"addemot('[Monyet]')\">"+
			"<img src='<?php echo $_GET['base_url']; ?>assets/chat/emote/standard/razz.png' title='[melet]' onClick=\"addemot('[melet]')\">"+
			"<img src='<?php echo $_GET['base_url']; ?>assets/chat/emote/standard/sad.png' title='[sedih]' onClick=\"addemot('[sedih]')\">"+
			"<img src='<?php echo $_GET['base_url']; ?>assets/chat/emote/standard/smile-big.png' title='[Ngakak]' onClick=\"addemot('[Ngakak]')\">"+
			"<img src='<?php echo $_GET['base_url']; ?>assets/chat/emote/standard/smile.png' title='[Senyum]' onClick=\"addemot('[Senyum]')\">"+
			"<img src='<?php echo $_GET['base_url']; ?>assets/chat/emote/standard/surprise.png' title='[Kejutan]' onClick=\"addemot('[Kejutan]')\">"+
			"<img src='<?php echo $_GET['base_url']; ?>assets/chat/emote/standard/warning.png' title='[Bahaya]' onClick=\"addemot('[Bahaya]')\">"+
			"<img src='<?php echo $_GET['base_url']; ?>assets/chat/emote/standard/wink.png' title='[Ngedip]' onClick=\"addemot('[Ngedip]')\">"+

			"<img src='<?php echo $_GET['base_url']; ?>assets/chat/emote/1/akasmaran.gif' title='[kasmaran]' onClick=\"addemot('[kasmaran]')\">"+
			"<img src='<?php echo $_GET['base_url']; ?>assets/chat/emote/1/akedip.gif' title='[kedip]' onClick=\"addemot('[kedip]')\">"+
			"<img src='<?php echo $_GET['base_url']; ?>assets/chat/emote/1/aketawa.gif' title='[ketawa]' onClick=\"addemot('[ketawa]')\">"+
			"<img src='<?php echo $_GET['base_url']; ?>assets/chat/emote/1/amarah.gif' title='[marah]' onClick=\"addemot('[marah]')\">"+
			"<img src='<?php echo $_GET['base_url']; ?>assets/chat/emote/1/amelet.gif' title='[melet]' onClick=\"addemot('[melet]')\">"+
			"<img src='<?php echo $_GET['base_url']; ?>assets/chat/emote/1/anangis.gif' title='[nangis]' onClick=\"addemot('[nangis]')\">"+
			"<img src='<?php echo $_GET['base_url']; ?>assets/chat/emote/1/asakit.gif' title='[sakit]' onClick=\"addemot('[sakit]')\">"+
			"<img src='<?php echo $_GET['base_url']; ?>assets/chat/emote/1/bye.gif' title='[bye]' onClick=\"addemot('[bye]')\">"+
			"<img src='<?php echo $_GET['base_url']; ?>assets/chat/emote/1/maki-maki.gif' title='[maki-maki]' onClick=\"addemot('[maki-maki]')\">"+
			"<img src='<?php echo $_GET['base_url']; ?>assets/chat/emote/1/marah.gif' title='[marah1]' onClick=\"addemot('[marah1]')\">"+
			"<img src='<?php echo $_GET['base_url']; ?>assets/chat/emote/1/murung.gif' title='[murung1]' onClick=\"addemot('[murung1]')\">"+
			"<img src='<?php echo $_GET['base_url']; ?>assets/chat/emote/1/nangis.gif' title='[nangis1]' onClick=\"addemot('[nangis1]')\">"+
			"<img src='<?php echo $_GET['base_url']; ?>assets/chat/emote/1/sedih.gif' title='[sedih1]' onClick=\"addemot('[sedih1]')\">"+
			"<img src='<?php echo $_GET['base_url']; ?>assets/chat/emote/1/smile.gif' title='[senyum1]' onClick=\"addemot('[senyum1]')\">";
			// "<img src='<?php echo $_GET['base_url']; ?>assets/chat/emote/1/bonus.png' title='[Apa Ini???]' onClick=\"addemot('[Apa Ini???]')\">";

			}
			});
			
			
});
// function add emot to chat form
function addemot(emot)
{
	message.value+=" "+emot;
}

var emotImageMap = {
	"\\[Malaikat\\]":"<?php echo $_GET['base_url']; ?>assets/chat/emote/standard/angel.png",
	"\\[Bingung\\]":"<?php echo $_GET['base_url']; ?>assets/chat/emote/standard/confused.png",
	"\\[Keren\\]":"<?php echo $_GET['base_url']; ?>assets/chat/emote/standard/cool.png",
	"\\[Menangis\\]":"<?php echo $_GET['base_url']; ?>assets/chat/emote/standard/crying.png",
	"\\[Iblis\\]":"<?php echo $_GET['base_url']; ?>assets/chat/emote/standard/devilish.png",
	"\\[Mata Belo\\]":"<?php echo $_GET['base_url']; ?>assets/chat/emote/standard/eek.png",
	"\\[Stop\\]":"<?php echo $_GET['base_url']; ?>assets/chat/emote/standard/error.png",
	"\\[Cinta\\]":"<?php echo $_GET['base_url']; ?>assets/chat/emote/standard/favorite.png",
	"\\[Belajar\\]":"<?php echo $_GET['base_url']; ?>assets/chat/emote/standard/glasses.png",
	"\\[Nyengir\\]":"<?php echo $_GET['base_url']; ?>assets/chat/emote/standard/grin.png",
	"\\[Tanda Tanya\\]":"<?php echo $_GET['base_url']; ?>assets/chat/emote/standard/help.png",
	"\\[Ide\\]":"<?php echo $_GET['base_url']; ?>assets/chat/emote/standard/idea.png",
	"\\[Peringatan\\]":"<?php echo $_GET['base_url']; ?>assets/chat/emote/standard/important.png",
	"\\[Cium\\]":"<?php echo $_GET['base_url']; ?>assets/chat/emote/standard/kiss.png",
	"\\[Monyet\\]":"<?php echo $_GET['base_url']; ?>assets/chat/emote/standard/monkey.png",
	"\\[melet\\]":"<?php echo $_GET['base_url']; ?>assets/chat/emote/standard/razz.png",
	"\\[sedih\\]":"<?php echo $_GET['base_url']; ?>assets/chat/emote/standard/sad.png",
	"\\[Ngakak\\]":"<?php echo $_GET['base_url']; ?>assets/chat/emote/standard/smile-big.png",
	"\\[Senyum\\]":"<?php echo $_GET['base_url']; ?>assets/chat/emote/standard/smile.png",
	"\\[Kejutan\\]":"<?php echo $_GET['base_url']; ?>assets/chat/emote/standard/surprise.png",
	"\\[Bahaya\\]":"<?php echo $_GET['base_url']; ?>assets/chat/emote/standard/warning.png",
	"\\[Ngedip\\]":"<?php echo $_GET['base_url']; ?>assets/chat/emote/standard/wink.png",
	"\\[kasmaran\\]":"<?php echo $_GET['base_url']; ?>assets/chat/emote/1/akasmaran.gif",
	"\\[kedip\\]":"<?php echo $_GET['base_url']; ?>assets/chat/emote/1/akedip.gif",
	"\\[ketawa\\]":"<?php echo $_GET['base_url']; ?>assets/chat/emote/1/aketawa.gif",
	"\\[marah\\]":"<?php echo $_GET['base_url']; ?>assets/chat/emote/1/amarah.gif",
	"\\[melet\\]":"<?php echo $_GET['base_url']; ?>assets/chat/emote/1/amelet.gif",
	"\\[nangis\\]":"<?php echo $_GET['base_url']; ?>assets/chat/emote/1/anangis.gif",
	"\\[sakit\\]":"<?php echo $_GET['base_url']; ?>assets/chat/emote/1/asakit.gif",
	"\\[bye\\]":"<?php echo $_GET['base_url']; ?>assets/chat/emote/1/bye.gif",
	"\\[maki-maki\\]":"<?php echo $_GET['base_url']; ?>assets/chat/emote/1/maki-maki.gif",
	"\\[marah1\\]":"<?php echo $_GET['base_url']; ?>assets/chat/emote/1/marah.gif",
	"\\[murung1\\]":"<?php echo $_GET['base_url']; ?>assets/chat/emote/1/murung.gif",
	"\\[nangis1\\]":"<?php echo $_GET['base_url']; ?>assets/chat/emote/1/nangis.gif",
	"\\[sedih1\\]":"<?php echo $_GET['base_url']; ?>assets/chat/emote/1/sedih.gif",
	"\\[senyum1\\]":"<?php echo $_GET['base_url']; ?>assets/chat/emote/1/smile.gif"};
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

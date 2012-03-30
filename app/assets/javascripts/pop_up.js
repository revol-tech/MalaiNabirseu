$(function() {

var popup = false;

$("#button,#button1,#button2,#button3,#button4").click(function(){
	if(popup == false){
		$("#overlayEffect").fadeIn("slow");
		$("#popupContainer").fadeIn("slow");
		$("#close").fadeIn("slow");
	    center();
		popup = true;
	}
	});

	$("#close").click(function(){
		hidePopup();
	});

	$("#overlayEffect").click(function(){
		hidePopup();
	});

function center(){
	var windowWidth = document.documentElement.clientWidth;
	var windowHeight = document.documentElement.clientHeight;
	var popupHeight = $("#popupContainer").height();
	var popupWidth = $("#popupContainer").width();
	$("#popupContainer").css({
		"position": "absolute",
		"top": windowHeight/2-popupHeight/2,
		"left": windowWidth/2-popupWidth/2
	});

	}
function hidePopup(){
	if(popup==true){
		$("#overlayEffect").fadeOut("slow");
		$("#popupContainer").fadeOut("slow");
		$("#close").fadeOut("slow");
		popup = false;
	}
}

} ,jQuery);
var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-24100845-1']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

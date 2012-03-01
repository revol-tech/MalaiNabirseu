// This is a manifest file that'll be compiled into including all the files listed below.
// Add new JavaScript/Coffee code in separate files in this directory and they'll automatically
// be included in the compiled file accessible from http://example.com/assets/application.js
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
//= require jquery
//= require jquery_ujs
//= require_tree .
//jquery for lower slider starts
function SlideLeft() {
  isMoving = true;
  $(".anyClass li:first").stop();
  $(".anyClass li:first").animate({ marginLeft: '-215px' }, 350, function() {
    $(".anyClass li:first").insertAfter($(".anyClass li:last"));
    $(".anyClass li:last").css("margin-left", "");
    isMoving = false;
  });
}

function SlideRight() {
  isMoving = true;
  $(".anyClass li:last").css("margin-left", "-215px");
  $(".anyClass li:last").insertBefore($(".anyClass li:first"));
  $(".anyClass li:first").stop();
  $(".anyClass li:first").animate({ marginLeft: '0px' }, 350, function() {
    isMoving = false;
  });
}


var isMoving = false;
var intPromoInterval = 0;
var intPromoTimer = 0;

$(document).ready(function() {

  $('.img_name').hide();

  startRotation();
  $(".prev").click(function(e) {
  stopRotation();

  $(this).blur();
  if(!isMoving){
    SlideRight();
  }

  restartRotation();
  return false;
});

  $(".next").click(function(e) {
    stopRotation();
    $(this).blur();
    if(!isMoving){
      SlideLeft();
    }
    restartRotation();
    return false;
  });

  $('.anyClass').find('a').hover(function(){
      $(this).next().fadeIn();
    },function(){
      $(this).next().fadeOut();
    }
  )

  $(".anyClass").bind("mouseenter", function() {
      stopRotation();
    }).bind("mouseleave", function() {
      startRotation();
    }
  );
});

function startRotation(){
  intPromoInterval = setInterval("SlideLeft();", 4000);
}

function stopRotation(){
  clearInterval(intPromoInterval);
  clearTimeout(intPromoTimer);
}
function restartRotation(){
  intPromoTimer = setTimeout("startRotation();",1000);
}
//jqyery for lower slider ends

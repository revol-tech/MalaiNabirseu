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
  intPromoInterval = setInterval("SlideLeft();", 3500);
}

function stopRotation(){
  clearInterval(intPromoInterval);
  clearTimeout(intPromoTimer);
}
function restartRotation(){
  intPromoTimer = setTimeout("startRotation();",3500);
}

function SlideLeft() {
  isMoving = true;
  var cur = $('.anyClass li:first');

  cur.stop().animate({ marginLeft: '-'+cur.width()+'px' }, 350, function() {
    cur.insertAfter(cur.siblings(":last")).css("margin-left", "");
    isMoving = false;
  });
}

function SlideRight() {
  isMoving = true;
  var cur = $('.anyClass li:first');

  cur.siblings(':last').css("margin-left", "-"+cur.widtn()+"px").insertBefore(cur);
  cur.stop().animate({ marginLeft: '0px' }, 350, function() {
    isMoving = false;
  });
}

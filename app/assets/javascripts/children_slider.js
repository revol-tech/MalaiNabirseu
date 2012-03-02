function SlideLeft() {
  isMoving = true;
  $(".manyClass li:first").stop();
  $(".manyClass li:first").animate({ marginLeft: '-215px' }, 350, function() {
    $(".manyClass li:first").insertAfter($(".manyClass li:last"));
    $(".manyClass li:last").css("margin-left", "");
    isMoving = false;
  });
}

function SlideRight() {
  isMoving = true;
  $(".manyClass li:last").css("margin-left", "-215px");
  $(".manyClass li:last").insertBefore($(".manyClass li:first"));
  $(".manyClass li:first").stop();
  $(".manyClass li:first").animate({ marginLeft: '0px' }, 350, function() {
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

  $('.manyClass').find('a').hover(function(){
      $(this).next().fadeIn();
    },function(){
      $(this).next().fadeOut();
    }
  )

  $(".manyClass").bind("mouseenter", function() {
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

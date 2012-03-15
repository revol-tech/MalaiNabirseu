$(document).ready(function(){
   var dim = getDim();

   setDim(dim,$('.anyClass'));
   //$('.anyClass').find('.resize').width((dim['w']*2)).height(dim['h'])
   setDim(dim,$('.anyClass').find('li'));
   setDim(dim,$('.anyClass').find('img'));

   $(window).resize(function(){

    dim = getDim();

    setDim(dim,$('.anyClass'));
    //$('.anyClass').find('.resize').width((dim['w']*2)).height(dim['h'])
    setDim(dim,$('.anyClass').find('li'));
    setDim(dim,$('.anyClass').find('img'));
   })


   function getDim(){
    var dim=[];
    dim['w'] = $(window).width();
    dim['h'] = $(window).height();
    dim['h'] = 0.3*dim['w'];
    return dim;
   };

   function setDim(dim,obj){
    obj.width(dim['w']).height(dim['h']);
   };
})

$(function(){
  $(".anyClass").jCarouselLite({
	  auto:true,
  	speed:3000,
  	visible:1,
  	resizeable:true,
  	showInfo:true,
  	info_on_hover:false
  });
})

$(function(){
  $("#children").jCarouselLite({
	    auto:true,
	    speed:1200,
	    visible:5,
	    showInfo:false,
	    info_on_hover:true
  });

})

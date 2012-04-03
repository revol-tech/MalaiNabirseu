$(function(){
			$.fn.supersized.options = {  
				startwidth: 640,  
				startheight: 480,
				vertical_center: 1,
				slideshow: 1,
				navigations: 1,
				transition: 1, //0-None, 1-Fade, 2-slide top, 3-slide right, 4-slide bottom, 5-slide left
				pause_hover: 1,
				slide_counter: 1,
				slide_captions: 1,
				slide_interval: 3000  
			};
	        $('#supersize').supersized(); 
	    });

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
    dim['h'] = 0.2622* dim['w'];
    return dim;
   };

   function setDim(dim,obj){
    obj.width(dim['w']).height(dim['h']);
   };
})

/*
$(function(){
  $(".anyClass").jCarouselLite({
	  auto:true,
  	speed:4000,
  	visible:1,
  	resizeable:true,
  	showInfo:true,
  	info_on_hover:false

  });
})
*/

$(function(){
  $("#children").jCarouselLite({
	    auto:true,
	    speed:1000,
	    visible:5,
	    showInfo:false,
	    info_on_hover:true,
	     btnPrev:'.prev',
       btnNext:'.next'

  });

})

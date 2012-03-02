$(document).ready(function(){
 var dim = getDim();

 setDim(dim,$('.anyClass'));
 $('.anyClass').find('.resize').width((dim['w']*2))
 setDim(dim,$('.anyClass').find('li'));
 setDim(dim,$('.anyClass').find('img'));

 $(window).resize(function(){
  dim = getDim();

  setDim(dim,$('.anyClass'));
  $('.anyClass').find('.resize').width((dim['w']*2))
  setDim(dim,$('.anyClass').find('li'));
  setDim(dim,$('.anyClass').find('img'));
 })

 function getDim(){
  var dim=[];
   var ratio=0.5;
  dim['w'] = $(window).width();
  dim['h'] = ratio * dim['w']
  return dim;
 };
 function setDim(dim,obj){
  obj.width(dim['w'])
 };
})

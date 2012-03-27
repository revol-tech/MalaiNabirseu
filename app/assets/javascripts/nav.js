$(function(){
   var path = location.pathname.substring(1);
   if ( path )
     $('#sidebar_content a[href$="' + path + '"]').attr('class', 'select');
 });

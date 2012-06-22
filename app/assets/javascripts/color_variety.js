$(document).ready(function(){
    $(".what_we_do_text h1").addClass(function(n)
        {  
        var i = n%3;      	
        return 'color_' + i;
        }); 
 });

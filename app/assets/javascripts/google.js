	function initialize() {
		var latlng = new google.maps.LatLng(27.73091, 85.29552);
		var settings = {
			zoom: 11,
			center: latlng,
			mapTypeControl: true,
			mapTypeControlOptions: {style: google.maps.MapTypeControlStyle.DROPDOWN_MENU},
			navigationControl: true,
			navigationControlOptions: {style: google.maps.NavigationControlStyle.SMALL},
			mapTypeId: google.maps.MapTypeId.ROADMAP
    };
    var map = new google.maps.Map(document.getElementById("map_canvas"), settings);
    var companyPos = new google.maps.LatLng(27.70000, 85.3401000);
  var companyMarker = new google.maps.Marker({
      position: companyPos,
      map: map,
      title:"Old Baneswor"


 


  });
}

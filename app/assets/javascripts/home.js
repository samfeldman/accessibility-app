$(document).ready (function () {
	$( ".modal_box" ).on( "click", function() {
    	$( "#back_block" ).hide();
		});

	




	function initialize() {
	    var mapDiv = document.getElementById('mapdiv');
	    var mapOptions = {
	      center: new google.maps.LatLng(40.720079, -73.949511),
	      zoom: 16,
	      mapTypeId: google.maps.MapTypeId.ROADMAP
	    }
	    var map = new google.maps.Map(mapDiv, mapOptions);
	   	var image = new google.maps.MarkerImage('./images/drinkglass.png',
			new google.maps.Size(129, 42),
			new google.maps.Point(0,0),
			new google.maps.Point(0,0)
		);
	   	var marker1 = new google.maps.Marker({
			position: new google.maps.LatLng(40.720079, -73.949511),
			map: map,
			icon: image
    	});
		google.maps.event.addListener(marker1, 'click', function() {
			infowindow1.open(map, marker1);
		});
		var infowindow1 = new google.maps.InfoWindow({
			content:  createInfo('Whiskey Business ', 'McCarren Park Pool, 776 Lorimer St. Brooklyn, NY, 11222')
		});	
		function createInfo(title, content) {
			return '<div class="infowindow"><strong>'+ title +'</strong>'+content+'</div>';
		}
	
	};
  	
  	google.maps.event.addDomListener(window, 'load', initialize);

});


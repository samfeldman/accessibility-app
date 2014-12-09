$(function() {
	
	$( ".modal_box" ).on( "click", function(){
		$( "#back_block" ).hide();
	});

	var latitude = 0;
	var longitude = 0;
	var map;
	var markers =[];

	google.maps.event.addDomListener(window, 'load', initialize);

	function initialize() {
		var mapOptions = {
			zoom: 9,
			center: new google.maps.LatLng(latitude, longitude)
		};

		map = new google.maps.Map(document.getElementById('mapdiv'),
	                          	  mapOptions);
	};

	if ("geolocation" in navigator){
		navigator.geolocation.getCurrentPosition(function(position){
			latitude = position.coords.latitude;
			longitude = position.coords.longitude;

			var geocoder = new google.maps.Geocoder();
			var address = "new york";
			var lat1 = nil;
			var lon1 = nil;

			geocoder.geocode( { 'address': address}, function(results, status) {

				if (status == google.maps.GeocoderStatus.OK) {
				    lat1 = results[0].geometry.location.latitude;
				    lon1 = results[0].geometry.location.longitude;
				    alert(latitude);
				} 
			}); 
		})
	}

	function dist_bet(lat1, lon1, lat2, lon2){

		if (typeof(Number.prototype.toRad) === "undefined") {
			Number.prototype.toRad = function() {
		    return this * Math.PI / 180;
			}
		}

		var R = 6371;
		var φ1 = lat1.toRad();
		var φ2 = lat2.toRad();
		var Δφ = (lat2-lat1).toRad();
		var Δλ = (lon2-lon1).toRad();

		var a = Math.sin(Δφ/2) * Math.sin(Δφ/2) +
		        Math.cos(φ1) * Math.cos(φ2) *
		        Math.sin(Δλ/2) * Math.sin(Δλ/2);
		var c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1-a));

		var d = R * c;

		console.log(d);

	};


	$.ajax({
		type: "GET",
		url: "/show",
	})
	.done(function( object ) {
		console.log(object)
		alert( object.latitude );
	});


});


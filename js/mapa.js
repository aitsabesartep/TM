 var map;
 var markers = [];
 var markerCluster;
 function initMap(){
     map = new google.maps.Map(document.getElementById("map"), {
         center: new google.maps.LatLng(39.6130537, 2.8864253),
         zoom: 9
     });
 }
 function addmarker(latilongi, info, last) {
     var marker = new google.maps.Marker({
         position: latilongi,
         title: 'titol',
         clickable: true,
         map: map
     });
     marker.info = info;
     google.maps.event.addListener(marker, 'click', function() {
     marker.info.open(map, marker);
     });
     markers.push(marker);
     if(last==1){
        markerCluster = new MarkerClusterer(map, markers);
     }
 }
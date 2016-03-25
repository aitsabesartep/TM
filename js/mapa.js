var markers = [];
var markerCluster;

function initMap(){
    var map;
    markers = [];
    markerCluster = null;
    map = new google.maps.Map(document.getElementById("map"), {
        center: new google.maps.LatLng(39.6130537, 2.8864253),
        zoom: 9
    });
    getFincas(map);
}
function addmarker(latilongi, info, last, map) {
    var marker = new google.maps.Marker({
        position: latilongi,
        title: 'titol',
        clickable: true,
        map: map
    });
    var infowindow = new google.maps.InfoWindow({
        content: info
    });
    marker.info = infowindow;
    google.maps.event.addListener(marker, 'click', function() {
        marker.info.open(map, marker);
    });
    markers.push(marker);
    if(last==1){
        markerCluster = new MarkerClusterer(map, markers);
    }
}

function pintarFinques(xml, map){
    var xmlDoc = xml.responseXML;
    var fincas = xmlDoc.getElementsByTagName("finca");
    var i;
    for (i = 0; i < fincas.length; i++) {
        var codi = fincas[i].childNodes[1].textContent;
        var long = fincas[i].childNodes[15].childNodes[1].textContent;
        var lat = fincas[i].childNodes[15].childNodes[3].textContent;
        var last = 0;
        if (i == fincas.length - 1) {last = 1;}
        var myLatlng = new google.maps.LatLng(lat,long);

        var info = '        <div id="content" style="width:100%; max-width:400px;">'
                + '            <div id="siteNotice">'
                + '            </div>'
                + '            <a><h1 id="firstHeading" class="firstHeading">'+fincas[i].childNodes[7].textContent+'</h1></a>'
                + '            <h4 id="firstHeading" class="firstHeading">'+fincas[i].childNodes[13].textContent+'</h4>'
                + '            <div id="bodyContent">'
                + '                <a><img class="img-responsive" src="'+fincas[i].childNodes[9].childNodes[1].textContent+'" style="width:100%; max-width:400px;">'
                + '                </img></a>'
                + '                <p style="margin-top:20px">'+fincas[i].childNodes[11].textContent+'</p>'
                + '            </div>'
                + '        </div>';
        addmarker(myLatlng, info, last, map);
    }
}

function getFincas(map) {
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
        if (xhttp.readyState == 4 && xhttp.status == 200) {
            pintarFinques(xhttp, map);
        }
    };
    xhttp.open("GET", "XML/fincas.xml", true);
    xhttp.send();
}


$( document ).ready(function() {
    $("#filtro").click(function(){
    	$("#target").toggle();
	});
});

function loadPropiedad(codi){
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
        if (xhttp.readyState == 4 && xhttp.status == 200) {
            $("#cos").html(xhttp.responseText);
            initPropiedad(codi);
        }
    };
    var str = 'php/propiedad.php?codi='+codi;
	xhttp.open("GET", str, true);
	xhttp.send();
}
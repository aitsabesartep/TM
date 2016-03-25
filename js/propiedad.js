 /*function initCal(d)
 {
 var dies = d;
 $('#date-range12').dateRangePicker({
 inline:true,
 customTopBar: 'Seleccione el día de entrada y salida',
 container: '#content',
 stickyMonths: true,
 startOfWeek: 'monday',
 language: 'es',
 alwaysOpen:true,
 beforeShowDay: function(t)
 {
 //Comprovar dies ja seleccionats
 var valid = true;
 for (var i = 0; i < dies.length; i++) {
 if (dies[i].getDate() == t.getDate()
 && dies[i].getMonth() == t.getMonth()
 && dies[i].getFullYear() == t.getFullYear()) {
 valid = false;
 break;
 }
 }
 var _class = valid ? '' : 'disabled';
 var _tooltip = valid ? '' : '1';
 return [valid,_class,_tooltip];
 }
 })
 .bind('datepicker-first-date-selected', function(event, obj)
 {
 $("#pagament").hide(500); 
 })
 .bind('datepicker-change',function(event,obj)
 {
 $("#pagament").show(500);
 });
 }*/

function startMap(p){
    var mapP = null;
    document.getElementById('mapP').innerHTML = "";
    var opt = {
        center: p,
        zoom: 10
    };
    mapP = new google.maps.Map(document.getElementById("mapP"), opt);
    return mapP;
}

 function addmarkerPropiedad(p, mapP) {
     var marker = new google.maps.Marker({
     position: p,
     title: 'titol',
     clickable: true,
     map: mapP
     });
 }

 //Nomes carregam el mapa si es clica damunt el boto
function mapa(long, latitud) {
    var w = screen.width;
    if(w > 800){
        w = w/3;
    }else{
        w = w/2;
    }
    var pos = new google.maps.LatLng(latitud, long);
    document.getElementById('mapP').style.height = w+'px';
    addmarkerPropiedad(pos, startMap(pos));
}
/*
var dies = [];
function pintarCalendari(xml, codi){
    var xmlDoc = xml.responseXML;
    var fincas = xmlDoc.getElementsByTagName("fincas");
    alert(fincas[0].nodeValue);
    var finca;
    var i;

    for (i = 0; i < fincas.length; i++) {
        if (parseInt(fincas[i].childNodes[0].nodeValue) == codi) {
            finca = fincas[i];
        }
    }
    alert(finca);

    var calendario = finca.getElementsByTagName("calendario");
    

    for (i = 0; i < calendario.length; i++) {
        var reg = calendario.childNodes[i];
        var dia = reg.childNodes[0];
        var mes = reg.childNodes[1];
        //Restam -1 xq es més comença a 0
        mes = mes - 1;
        var any = reg.childNodes[2];
        var cuants = reg.childNodes[3];
        d = new Date(any, mes, dia)
        dies.push(d);
        var idx;
        for (idx = 1; idx < cuants - 1; idx++) {
            var d1 = null;
            d1 = new Date(d.getTime());
            var inc = d1.getDate();
            inc = inc + idx;
            d1.setDate(inc);
            dies.push(new Date(d1));
        }
    }
}*/

function initPropiedad(response){
    initStar();
    initFlex();
}

function initFlex(){
    var div = 14;
    if (screen.width < 850) {
        div = 8;
    }else if (screen.width < 450) {
        div = 6;
    }
    var x = screen.availWidth;
    item = 0+(x/div);

    $('#carousel').flexslider({
        animation: "slide",
        controlNav: false,
        animationLoop: false,
        slideshow: false,
        itemWidth: item,
        itemMargin: 4,
        asNavFor: '#slider'
    });
    $('#slider').flexslider({
        animation: "slide",
        controlNav: false,
        animationLoop: false,
        slideshow: false,
        sync: "#carousel",
        start: function(slider){
            $('body').removeClass('loading');
        }
    });
};

/*
 $( "#preu" ).click(function() {
 $("html, body").animate({ scrollTop: $('#cal').offset().top }, 1000);
 });
*/

function initStar(){

    $("#input-id").rating({
        min:0,
        max:5,
        step:0.5,
        size:'sm', 
        stars:5,
        readonly: true,
        showClear: false,
        showCaption: false
    });

    $(".est_comment").rating({
        min:0,
        max:5,
        step:0.5,
        size:'xs', 
        stars:5,
        readonly: true,
        showClear: false,
        showCaption: false
    });
    $("#input-id2").rating({
        min:0,
        max:5,
        step:1,
        size:'xs', 
        stars:5,
        showClear: false,
        showCaption: false
    });
}

/*
 $( document ).ready(function() {
 $("#pagament").hide(); 
 initCal(dies);
 });*/
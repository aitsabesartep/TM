<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html id="ht" lang="es-ES" ><!-- Make sure the <html> tag is set to the .full CSS class. Change the background image in the full.css file. -->
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">

    <meta charset="utf-8"></meta>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"></meta></meta>
    <meta name="viewport" content="width=device-width, initial-scale=1"></meta>
    <meta name="description" content=""></meta>
    <meta name="author" content=""></meta>
    <link rel="icon" href="img/logo.png"></link>

    <title>Fincas En Mallorca</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet"></link>

    <!-- Custom CSS -->
    <link href="css/menu.css" rel="stylesheet"></link>
    <link href="css/mapa.css" rel="stylesheet"></link>

</head>

<body id="bd">
    <!-- Navigation -->
    <nav id="nav1" class="navbar-color navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div id="navhead" class="navbar-header navbar-color">
                <button id="tg" type="button" class="navbar-toggle" data-toggle="collapse" data-target="#menu">
                    <span class="sr-only">Navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="menu">
                <ul class="nav navbar-nav navbar-color-mobile">
                    <li>
                        <a id="item_text" href="index.html">Home</a>
                    </li>
                    <li>
                        <a id="item_text" href="fincas.xml">Fincas</a>
                    </li>
                    <li id="menu_active">
                        <a id="item_text" href="fincas_mapa.xml">Mapa</a>
                    </li>
                    <li>
                        <a id="item_text" href="#">Contacto</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
  </nav>

    <div id="contingut" class="container">
        <div id="map">
            <xsl:apply-templates select="fincas"/>
        </div>
    </div>

    <!-- jQuery -->
    <script src="js/jquery.js"></script>
    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.js"></script>
    <!-- <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBJM4SA9izScVEDXPtGpY1BqSoPcAS5C9E&amp;amp;callback=initMap"></script> -->
    

</body>
</html>
</xsl:template>


    <xsl:template match="fincas">
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBJM4SA9izScVEDXPtGpY1BqSoPcAS5C9E&amp;amp"></script>
    <script type="text/javascript">
        var map;

        function initMap(){
            map = new google.maps.Map(document.getElementById("map"), {
                center: new google.maps.LatLng(39.6130537, 2.8864253),
                zoom: 9,
            });
        }

        function addmarker(latilongi, info) {
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
        }

        initMap();
    </script>
    <xsl:apply-templates select="finca"/>
    </xsl:template>


  <xsl:template match="finca">
    <script>
        var lat = <xsl:value-of select="coordenadas/latitud"/>
        var long = <xsl:value-of select="coordenadas/longitud"/>
        var myLatlng = new google.maps.LatLng(lat,long);

        var contentString = '<div id="content">'+
            '<div id="siteNotice">'+
            '</div>'+
            '<h1 id="firstHeading" class="firstHeading"><xsl:value-of select="nombre"/></h1>'+
            '<h4 id="firstHeading" class="firstHeading"><xsl:value-of select="poblacion"/></h4>'+
            '<div id="bodyContent">'+
            '<p><b>Nom Finca</b>, also referred to as <b>Ayers Rock</b>, is a large ' +
            'sandstone rock formation in the southern part of the '+
            'Northern Territory, central Australia. It lies 335&#160;km (208&#160;mi) '+
            'south west of the nearest large town, Alice Springs; 450&#160;km '+
            '(280&#160;mi) by road. Kata Tjuta and Uluru are the two major '+
            'features of the Uluru - Kata Tjuta National Park. Uluru is '+
            'sacred to the Pitjantjatjara and Yankunytjatjara, the '+
            'Aboriginal people of the area. It has many springs, waterholes, '+
            'rock caves and ancient paintings. Uluru is listed as a World '+
            'Heritage Site.</p>'+
            '<p>Attribution: Uluru, <a href="https://en.wikipedia.org/w/index.php?title=Uluru&amp;ampoldid=297882194">'+
            'https://en.wikipedia.org/w/index.php?title=Uluru</a> '+
            '(last visited June 22, 2009).</p>'+
            '</div>'+
            '</div>';

        var info = new google.maps.InfoWindow({
          content: contentString
        });

        addmarker(myLatlng,info);

    </script>
  </xsl:template>

</xsl:stylesheet>
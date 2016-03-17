<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html lang="es-ES" >
        <head>
        <meta http-equiv="content-type" content="text/html; charset=UTF-8">

            <meta charset="utf-8"></meta>
            <meta http-equiv="X-UA-Compatible" content="IE=edge"></meta></meta>
            <meta name="viewport" content="width=device-width, initial-scale=1"></meta>
            <meta name="description" content=""></meta>
            <meta name="author" content=""></meta>

            <title> <xsl:value-of select="nombre"/></title>

            <link rel="icon" href="img/logo.png"></link>
            <link href="css/bootstrap.min.css" rel="stylesheet"></link>
            <link href="css/jquery-ui.min.css" rel="stylesheet"></link>
            <link href="css/full.css" rel="stylesheet"></link>
            <link href="css/menu.css" rel="stylesheet"></link>
            <link href="css/peu.css" rel="stylesheet"></link>
            <link href="css/propiedad.css" rel="stylesheet"></link>
            <link rel="stylesheet" href="css/slider/flexslider.css" type="text/css" media="screen"></link>
            <link href="css/star-rating.css" media="all" rel="stylesheet" type="text/css" />
            <link rel="stylesheet" href="css/range/daterangepicker.css" />


        </head>

        <body>
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
                            <li id="menu_active">
                                <a id="item_text" href="fincas.php">Fincas</a>
                            </li>
                            <li>
                                <a id="item_text" href="mapa.php">Mapa</a>
                            </li>
                            <li>
                                <a id="item_text" href="#">Contacto</a>
                            </li>
                        </ul>
                    </div>
                    <!-- /.navbar-collapse -->
                </div>
            </nav>

            <div id="tot" class="container">
                <div id="main_r" class="row">
                    <section>
                        <div id="contingut" class="col-xs-12 col-sm-12 col-md-8 col-md-offset-1 col-lg-8 col-lg-offset-1">
                            <section class="slider">
                                <div id="slider" class="flexslider">
                                  <ul class="slides">
                                    <li>
                                        <img id="i_gran" src="img/img_fincas/palacio/img0.jpg" />
                                    </li>
                                        <li>
                                        <img id="i_gran" src="img/img_fincas/palacio/img1.jpg" />
                                        </li>
                                        <li>
                                        <img id="i_gran" src="img/img_fincas/palacio/img2.jpg" />
                                        </li>
                                        <li>
                                        <img src="img/img_fincas/palacio/img3.jpg" />
                                    </li>
                                    <li>
                                        <img id="i_gran" src="img/img_fincas/palacio/img4.jpg" />
                                        </li>
                                        <li>
                                        <img id="i_gran" src="img/img_fincas/palacio/img5.jpg" />
                                        </li>
                                        <li>
                                        <img id="i_gran" src="img/img_fincas/palacio/img6.jpg" />
                                        </li>
                                        <li>
                                        <img id="i_gran" src="img/img_fincas/palacio/img7.jpg" />
                                    </li>
                                    <li>
                                        <img id="i_gran" src="img/img_fincas/palacio/img8.jpg" />
                                        </li>
                                        <li>
                                        <img id="i_gran" src="img/img_fincas/palacio/img9.jpg" />
                                        </li>
                                        <li>
                                        <img id="i_gran" src="img/img_fincas/palacio/img10.jpg" />
                                        </li>
                                        <li>
                                        <img id="i_gran" src="img/img_fincas/palacio/img11.jpg" />
                                    </li>
                                  </ul>
                                </div>
                                <div id="carousel" class="flexslider">
                                  <ul class="slides">
                                    <li>
                                        <img src="img/img_fincas/palacio/img0.jpg" />
                                    </li>
                                        <li>
                                        <img src="img/img_fincas/palacio/img1.jpg" />
                                        </li>
                                        <li>
                                        <img src="img/img_fincas/palacio/img2.jpg" />
                                        </li>
                                        <li>
                                        <img src="img/img_fincas/palacio/img3.jpg" />
                                    </li>
                                    <li>
                                        <img src="img/img_fincas/palacio/img4.jpg" />
                                    </li>
                                        <li>
                                        <img src="img/img_fincas/palacio/img5.jpg" />
                                        </li>
                                        <li>
                                        <img src="img/img_fincas/palacio/img6.jpg" />
                                        </li>
                                        <li>
                                        <img src="img/img_fincas/palacio/img7.jpg" />
                                    </li>
                                    <li>
                                        <img src="img/img_fincas/palacio/img8.jpg" />
                                        </li>
                                        <li>
                                        <img src="img/img_fincas/palacio/img9.jpg" />
                                        </li>
                                        <li>
                                        <img src="img/img_fincas/palacio/img10.jpg" />
                                        </li>
                                        <li>
                                        <img src="img/img_fincas/palacio/img11.jpg" />
                                    </li>
                              </ul>
                            </div>
                          </section>
                        </div>
                    </section>
                    <section>
                        <div class="col-xs-12 col-sm-12 col-md-3 col-lg-3">
                            <div id="contingut_dreta" class="row">
                                <div id="contignut_dreta_in" class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                    <h2 id="titol">Nom finca</h2>
                                    <h4>Ubicacio</h4>
                                    <hr></hr>
                                </div>
                                <div id="contignut_dreta_in" class="col-xs-7 col-sm-7 col-md-12 col-lg-12">
                                  <ul id="lista">
                                    <li><p>Capacidad: 12 <span class="glyphicon glyphicon-user"></span></p></p></li>
                                    <li><p>Nº Baños: 3</p></li>
                                    <li><p>Casa: 400 m<sup>2</sup></p></li>
                                    <li><p>Terreno: 1500m<sup>2</sup></p></li>
                                  </ul>
                                </div>
                                <div id="contignut_dreta_in" class="col-xs-5 col-sm-5 col-md-12 col-lg-12">
                                    <ul id="lista">
                                        <li><p><img src="img/icon/wifi.svg" style="max-width: 18px;"/> Wifi</p></li>
                                        <li><p>Comida <span class="glyphicon glyphicon-ok"></span></p></li>
                                        <li><p>Baño <span class="glyphicon glyphicon-ok"></span></p></li>
                                    </ul>
                                </div>
                            </div>                    
                            <div id="" class="row">
                                <div id="contingut_dreta_preu" class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                    <div id ="estrelles">
                                        <h4 id="val">Valoración usuarios</h4>
                                        <input id="input-id" value="4"></input>
                                    </div>
                                </div>
                            </div>
                            <div id="" class="row">
                                <div id="contingut_dreta_preu" class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                    <button id="preu" class="btn btn-success">
                                        Reservar ahora
                                    </button>
                                </div>
                            </div>
                        </div>
                    </section>
                </div>
                <div class="col-xs-12 col-sm-12 col-md-11 col-md-offset-1 col-lg-11 col-lg-offset-1">
                    <div id="descripcio">
                    <!-- Nav tabs -->
                      <ul class="nav nav-tabs" role="tablist">
                        <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">Descripción</a></li>
                        <li role="presentation"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">Precios</a></li>
                        <li id="loc" onclick="mapa()" role="presentation"><a href="#messages" aria-controls="messages" role="tab" data-toggle="tab">Localización</a></li>
                        <li role="presentation"><a href="#settings" aria-controls="settings" role="tab" data-toggle="tab">Comentarios</a></li>
                      </ul>

                      <!-- Tab panes -->
                      <div id="pad" class="tab-content">
                        <div role="tabpanel" class="tab-pane active" id="home">
                            <div>
                                La finca esta situada en las afueras....
                            </div>
                        </div>
                        <div role="tabpanel" class="tab-pane" id="profile">Adeuu</div>
                        <div role="tabpanel" class="tab-pane" id="messages">
                            <div id="map"></div>
                        </div>
                        <div role="tabpanel" class="tab-pane" id="settings">
                            <div class="row">
                                <div id="comentari" class="col-xs-12 col-sm-12 col-md-5 col-lg-5">
                                    <form class="form-horizontal" role="form" method="post" action="">
                                        <h4>Déjanos tu comentario</h4>
                                        <div class="form-group">
                                            <label for="name" class="col-sm-2 control-label">Name</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" id="name" name="name" placeholder="Nombre y apellido" value="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="email" class="col-sm-2 control-label">Rating</label>
                                            <div class="col-sm-10">
                                                <input id="input-id2" value="3"></input>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="message" class="col-sm-2 control-label">Mensaje</label>
                                            <div class="col-sm-10">
                                                <textarea class="form-control" rows="4" name="message"></textarea>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="col-sm-10 col-sm-offset-2">
                                                <input id="submit" name="submit" type="submit" value="Enviar" class="btn btn-primary">
                                            </div>
                                        </div>
                                    </form>
                                </div>
                                <div class="col-xs-12 col-sm-12 col-md-6 col-md-offset-1 col-lg-offset-1 col-lg-6">
                                    <div id="scr">
                                    <ul class="media-list">
                                      <li class="media">
                                        <div class="media-left">
                                        </div>
                                        <div id="cm" class="media-body">
                                          <h4 class="media-heading">Juan Antonio </h4>
                                          <p>Fantastic!</p>
                                          <input class="est_comment" value="5"></input>                                
                                        </div>
                                      </li>
                                      <li class="media">
                                        <div class="media-left">
                                        </div>
                                        <div id="cm" class="media-body">
                                          <h4 class="media-heading">Miguel Angel</h4>
                                          <p>Good expirience!</p>
                                          <input class="est_comment" value="4"></input>                                
                                        </div>
                                      </li>
                                      <li class="media">
                                        <div class="media-left">
                                        </div>
                                        <div id="cm" class="media-body">
                                          <h4 class="media-heading">Manolo </h4>
                                          <p>Muy mal</p>
                                          <input class="est_comment" value="0.5"></input>                                
                                        </div>
                                      </li>
                                    </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                      </div>
                      
                    </div>
                </div>
                <div id="cal" class="col-xs-12 col-sm-12 col-md-11 col-md-offset-1 col-lg-11 col-lg-offset-1">
                    <ul class="nav nav-tabs" role="tablist">
                        <li role="presentation" class="active"><a aria-controls="cal" role="tab" data-toggle="tab">Calendario</a>
                    </ul>
                    <div>
                        <div class="row">
                            <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                                <div id="content">
                                    <input id="date-range12" size="40" value=""/>
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                                <div id="pagament" style="margin-top: 25px; padding: 10px; background-color: red;">
                                        <form class="form-horizontal" role="form" method="post" action="">
                                            <h4>Datos reserva</h4>
                                            <div class="form-group">
                                                <label for="name" class="col-sm-2 control-label">Nombre</label>
                                                <div class="col-sm-10">
                                                    <input type="text" class="form-control" id="name" name="name" placeholder="Nombre y apellido" value="">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="dni" class="col-sm-2 control-label">Teléfono</label>
                                                <div class="col-sm-4">
                                                    <input type="number" class="form-control" id="dni" name="dni" placeholder="DNI" value="">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="sel1" class="col-sm-2 control-label">Personas</label>
                                                <div class="col-sm-4">
                                                    <select id="sel1" class="form-control" value="3">
                                                        <option>1</option>
                                                        <option>2</option>
                                                        <option>3</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="message" class="col-sm-2 control-label">Mensaje</label>
                                                <div class="col-sm-10">
                                                    <textarea class="form-control" rows="4" name="message"></textarea>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <div class="col-sm-10 col-sm-offset-2">
                                                    <input id="submit" name="submit" type="submit" value="Enviar" class="btn btn-primary">
                                                </div>
                                            </div>
                                        </form>
                                    </div>  
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
            <footer id="peu" style="margin-top: 30px;">
                <p id="textPeu" >Copyright 2016 All rights reserved.</p>
            </footer>


            <script src="js/jquery.js"></script>
            <script type="text/javascript" src="js/jquery_propiedad.js"></script>
            <script src="js/bootstrap.js"></script>
            <script src="js/slider/jquery.flexslider-min.js"></script>

            <script type="text/javascript">
                $( "#preu" ).click(function() {
                    $("html, body").animate({ scrollTop: $('#cal').offset().top }, 1000);
                });
            </script>

            <script type="text/javascript">

                $(function(){
                  SyntaxHighlighter.all();
                });
                $(window).load(function(){

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
                });
            </script>
              <!-- Syntax Highlighter -->
              <script type="text/javascript" src="js/slider/shCore.js"></script>
              <script type="text/javascript" src="js/slider/shBrushXml.js"></script>
              <script type="text/javascript" src="js/slider/shBrushJScript.js"></script>
              <script type="text/javascript" src="js/star-rating.js"></script>

              <script type="text/javascript">
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

              </script>

            <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBJM4SA9izScVEDXPtGpY1BqSoPcAS5C9E&amp;amp"></script>
            <script type="text/javascript">
                var map ='';
                function initMap(){
                    var opt = {
                        center: new google.maps.LatLng(39.6130537, 2.8864253),
                        zoom: 9
                    };
                    //Per assegurar que nomes carrega un unic pic
                    if(!map){
                        map = new google.maps.Map(document.getElementById("map"), opt);
                    }else{
                        map.setOptions(opt);
                    }
                }

                function addmarker(latilongi) {
                    var marker = new google.maps.Marker({
                        position: latilongi,
                        title: 'titol',
                        clickable: true,
                        map: map
                    });
                    markers.push(marker);
                }
                //Nomes carregam el mapa si es clica damunt el boto
                function mapa() {
                    var w = screen.width;
                    if(w > 800){
                        w = w/3;
                    }else{
                        w = w/2;
                    }
                    document.getElementById('map').style.height = w+'px';
                    initMap();
                    
                    /*$("#loc").click(function() {
                            $('html, body').animate({
                                scrollTop: $("#settings").offset().top + w
                            }, 500);
                    });*/
                }
            </script>

            <script src="js/range/moment.min.js"></script>
            <script src="js/range/jquery.daterangepicker.js"></script>
            <script>  
                $(function()
                {
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
                            var valid = !(t.getDate() == 10 || t.getDate() == 9 || t.getDate() == 8);  //disable saturday and sunday
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
                })
            </script>

        </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
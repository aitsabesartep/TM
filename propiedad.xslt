<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/finca">
        <html lang="es-ES" >
        <head>
        <meta http-equiv="content-type" content="text/html; charset=UTF-8">

            <meta charset="utf-8"></meta>
            <meta http-equiv="X-UA-Compatible" content="IE=edge"></meta></meta>
            <meta name="viewport" content="width=device-width, initial-scale=1"></meta>
            <meta name="description" content=""></meta>
            <meta name="author" content=""></meta>

            <title> <xsl:value-of select="nombre"/>&#160;-&#160;Fincas en Mallorca</title>

            <link rel="icon" href="img/logo.png"></link>
            <link href="css/bootstrap.min.css" rel="stylesheet"></link>
            <link href="css/jquery-ui.min.css" rel="stylesheet"></link>
            <link href="css/full.css" rel="stylesheet"></link>
            <link href="css/menu.css" rel="stylesheet"></link>
            <link href="css/peu.css" rel="stylesheet"></link>
            <link href="css/propiedad.css" rel="stylesheet"></link>
            <link rel="stylesheet" href="css/slider/flexslider.css" type="text/css" media="screen"></link>
            <link href="css/star-rating.css" media="all" rel="stylesheet" type="text/css"></link>
            <link rel="stylesheet" href="css/range/daterangepicker.css"></link>


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
                                    <xsl:apply-templates select="imagenes/url"/>
                                  </ul>
                                </div>
                                <div id="carousel" class="flexslider">
                                    <ul class="slides">
                                        <xsl:apply-templates select="imagenes/url"/>
                                    </ul>
                                </div>
                            </section>
                        </div>
                    </section>
                    <section>
                        <div class="col-xs-12 col-sm-12 col-md-3 col-lg-3">
                            <div id="contingut_dreta" class="row">
                                <div id="contignut_dreta_in" class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                    <h2 id="titol"><xsl:value-of select="nombre"/></h2>
                                    <h4><xsl:value-of select="poblacion"/></h4>
                                    <hr></hr>
                                </div>
                                <div id="contignut_dreta_in" class="col-xs-7 col-sm-7 col-md-12 col-lg-12">
                                  <ul id="lista">
                                    <li><p>Capacidad personas: <xsl:value-of select="capacidad_personas"/></p></li>
                                    <li><p>Nº Baños: <xsl:value-of select="num_banyos"/></p></li>
                                    <li><p>Casa: <xsl:value-of select="metros_casa"/> m<sup>2</sup></p></li>
                                    <xsl:choose>
                                        <xsl:when test="tipo/finc=1">
                                            <li><p>Terreno: <xsl:value-of select="metros_terreno"/> m<sup>2</sup></p></li>
                                        </xsl:when>
                                    </xsl:choose>
                                  </ul>
                                </div>
                                <div id="contignut_dreta_in" class="col-xs-5 col-sm-5 col-md-12 col-lg-12">
                                    <ul id="lista">
                                        <li><p><xsl:value-of select="servicios/*[1]"/>&#160;<span class="glyphicon glyphicon-ok"></span></p></li>
                                        <li><p><xsl:value-of select="servicios/*[2]"/>&#160;<span class="glyphicon glyphicon-ok"></span></p></li>
                                        <li><p><xsl:value-of select="servicios/*[3]"/>&#160;<span class="glyphicon glyphicon-ok"></span></p></li>
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
                                <xsl:value-of select="descripcion"/>
                            </div>
                        </div>
                        <div role="tabpanel" class="tab-pane" id="profile">
                            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                <div class="table-responsive">
                                    <table class="table">
                                        <thead>
                                            <tr>
                                                <th align="center">Enero</th>
                                                <th align="center">Febrero</th>
                                                <th align="center">Marzo</th>
                                                <th align="center">Abril</th>
                                                <th align="center">Mayo</th>
                                                <th align="center">Junio</th>
                                                <th align="center">Julio</th>
                                                <th align="center">Agosto</th>
                                                <th align="center">Septiembre</th>
                                                <th align="center">Octubre</th>
                                                <th align="center">Noviembre</th>
                                                <th align="center">Diciembre</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td><xsl:value-of select="precio/enero"/></td>
                                                <td><xsl:value-of select="precio/febrero"/></td>
                                                <td><xsl:value-of select="precio/marzo"/></td>
                                                <td><xsl:value-of select="precio/abril"/></td>
                                                <td><xsl:value-of select="precio/mayo"/></td>
                                                <td><xsl:value-of select="precio/junio"/></td>
                                                <td><xsl:value-of select="precio/julio"/></td>
                                                <td><xsl:value-of select="precio/agosto"/></td>
                                                <td><xsl:value-of select="precio/septiembre"/></td>
                                                <td><xsl:value-of select="precio/octubre"/></td>
                                                <td><xsl:value-of select="precio/noviembre"/></td>
                                                <td><xsl:value-of select="precio/diciembre"/></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
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
                                                <input type="text" class="form-control" id="name" name="name" placeholder="Nombre y apellido" value=""></input>
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
                                                <input id="submit" name="submit" type="submit" value="Enviar" class="btn btn-primary"></input>
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
                        <li role="presentation" class="active"><a aria-controls="cal" role="tab" data-toggle="tab">Calendario</a></li>
                    </ul>
                    <div>
                        <div class="row">
                            <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                                <div id="content">
                                    <input id="date-range12" size="40" value=""/>
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                                <div id="pagament" style="margin-top: 25px; padding: 10px;">
                                        <form class="form-horizontal" role="form" method="post" action="">
                                            <h4>Datos reserva</h4>
                                            <div class="form-group">
                                                <label for="name" class="col-sm-2 control-label">Nombre</label>
                                                <div class="col-sm-10">
                                                    <input type="text" class="form-control" id="name" name="name" placeholder="Nombre y apellido" value=""></input>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="dni" class="col-sm-2 control-label">Teléfono</label>
                                                <div class="col-sm-4">
                                                    <input type="number" class="form-control" id="dni" name="dni" placeholder="DNI" value=""></input>
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
                                                    <input id="submit" name="submit" type="submit" value="Enviar" class="btn btn-primary"></input>
                                                </div>
                                            </div>
                                        </form>
                                    </div>  
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </body>
            
        <footer id="peu" style="margin-top: 30px;">
            <p id="textPeu" >Copyright 2016 All rights reserved.</p>
        </footer>


            <script src="js/jquery.js"></script>
            <script type="text/javascript" src="js/jquery_propiedad.js"></script>
            <script src="js/bootstrap.js"></script>
            <script src="js/slider/jquery.flexslider-min.js"></script>
              <!-- Syntax Highlighter -->
              <script type="text/javascript" src="js/slider/shCore.js"></script>
              <script type="text/javascript" src="js/slider/shBrushXml.js"></script>
              <script type="text/javascript" src="js/slider/shBrushJScript.js"></script>
              <script type="text/javascript" src="js/star-rating.js"></script>

            <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBJM4SA9izScVEDXPtGpY1BqSoPcAS5C9E&amp;amp"></script>
            <script src="js/range/moment.min.js"></script>
            <script src="js/range/jquery.daterangepicker.js"></script>
            <script src="js/propiedad.js"></script>
        </html>
    </xsl:template>

    <xsl:template match="url">
        <li><img>
            <xsl:attribute name="src"><xsl:value-of select="."/></xsl:attribute>
        </img></li>
    </xsl:template>

</xsl:stylesheet>
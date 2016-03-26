<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
    <div id="cos_fincas" class="container">
        <div class="row">
        <div class="col-xs-10 col-xs-offset-1 col-sm-10 col-sm-offset-1 col-md-offset-1 col-md-10 col-lg-offset-0 col-lg-12">
                    <div class="row">
                        <div id="filter-panel" class="collapse filter-panel">
                            <div class="panel panel-default">
                                <div class="panel-body">
                                    <form class="form-inline" role="form">
                                        <div class="form-group">
                                            <label class="filter-col" style="margin-right:0;" for="pref-perpage">Rows per page:</label>
                                            <select id="pref-perpage" class="form-control">
                                                <option value="2">2</option>
                                                <option value="3">3</option>
                                                <option value="4">4</option>
                                                <option value="5">5</option>
                                                <option value="6">6</option>
                                                <option value="7">7</option>
                                                <option value="8">8</option>
                                                <option value="9">9</option>
                                                <option selected="selected" value="10">10</option>
                                                <option value="15">15</option>
                                                <option value="20">20</option>
                                                <option value="30">30</option>
                                                <option value="40">40</option>
                                                <option value="50">50</option>
                                                <option value="100">100</option>
                                                <option value="200">200</option>
                                                <option value="300">300</option>
                                                <option value="400">400</option>
                                                <option value="500">500</option>
                                                <option value="1000">1000</option>
                                            </select>                                
                                        </div>
                                        <div class="form-group">
                                            <label class="filter-col" style="margin-right:0;" for="pref-search">Search:</label>
                                            <input type="text" class="form-control input-sm" id="pref-search"/>
                                        </div>
                                        <div class="form-group">
                                            <label class="filter-col" style="margin-right:0;" for="pref-orderby">Order by:</label>
                                            <select id="pref-orderby" class="form-control">
                                                <option>Descendent</option>
                                            </select>                                
                                        </div> 
                                        <div class="form-group">    
                                            <div class="checkbox" style="margin-left:10px; margin-right:10px;">
                                                <label><input type="checkbox"/> Remember parameters</label>
                                            </div>
                                            <button type="submit" class="btn btn-default filter-col">
                                                <span class="glyphicon glyphicon-record"></span> Save Settings
                                            </button>  
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>    
                        <button type="button" class="btn btn-primary" data-toggle="collapse" data-target="#filter-panel">
                            <span class="glyphicon glyphicon-filter"></span> Filtros
                        </button>
                    </div>
            </div>
        </div>

        <section>
            <xsl:apply-templates select="fincas/finca"/>
        </section>
    </div>
    <footer id="peu">
        <p id="textPeu" >Copyright 2016 All rights reserved.</p>
    </footer>
</xsl:template>

  <xsl:template match="finca">
    <div class="row">
      <div id="cuadro_finca" class="col-xs-10 col-xs-offset-1 col-sm-10 col-sm-offset-1 col-md-offset-1 col-md-10 col-lg-offset-0 col-lg-12">
        <div class="col-md-12 col-lg-6">
            <a class="mouse_select"><xsl:attribute name="onclick">loadPropiedad(<xsl:value-of select="codi"/>)</xsl:attribute>
            <img id="img_finca" class="img-responsive">
                  <xsl:attribute name="src"><xsl:value-of select="imagenes/url"/></xsl:attribute>
            </img>
          </a>
        </div>
        <div id="descripcio" class="col-md-12 col-lg-6">
            <div id="rp" class="row">
                <div class="col-md-12">
                    <h3>
                    <a class="mouse_select">
                        <xsl:attribute name="onclick">loadPropiedad(<xsl:value-of select="codi"/>)</xsl:attribute>
                        <xsl:value-of select="nombre"/>
                    </a>
                    </h3>
                    <h5><xsl:value-of select="poblacion"/></h5>
                    <hr></hr>
                </div>
            </div>
          <div class="row">
              <div id="info" class="col-xs-12 col-sm-8 col-md-9 col-lg-7">
                <div id="subinfo">
                  <ul id="caracteristiques">
                    <li><p>Capacidad personas: <xsl:value-of select="capacidad_personas"/></p></li>
                    <li><p>Nº Baños: <xsl:value-of select="num_banyos"/></p></li>
                    <li><p>Casa: <xsl:value-of select="metros_casa"/> m<sup>2</sup></p></li>
                    <xsl:choose>
                        <xsl:when test="tipo/finc=1">
                            <li><p>Terreno: <xsl:value-of select="metros_terreno"/> m<sup>2</sup></p></li>
                        </xsl:when>
                    </xsl:choose>
                    <li><p><xsl:value-of select="servicios/*[1]"/>&#160;<span class="glyphicon glyphicon-ok"></span></p></li>
                    <li><p><xsl:value-of select="servicios/*[2]"/>&#160;<span class="glyphicon glyphicon-ok"></span></p></li>
                    <li><p><xsl:value-of select="servicios/*[3]"/>&#160;<span class="glyphicon glyphicon-ok"></span></p></li>
                  </ul>
                </div>
              </div>
              <div id="preu" class="col-xs-1 col-sm-2 col-md-3 col-lg-4">
                 <h3 id="preui" class="btn btn-success">
                    <a id="preui"><xsl:attribute name="onclick">loadPropiedad(<xsl:value-of select="codi"/>)</xsl:attribute>
                    <span id="desde">desde</span>&#160;<xsl:value-of select="precio/enero"/>&#160;€/noche
                    </a>
                </h3>
              </div>
        </div>
        </div>
      </div>
    </div>
  </xsl:template>

</xsl:stylesheet>
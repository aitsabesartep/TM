 
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

                $( "#preu" ).click(function() {
                    $("html, body").animate({ scrollTop: $('#cal').offset().top }, 1000);
                });

                
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
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Login_InfoToolsSV.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <title>UNI FEC Gym</title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link rel="stylesheet" href="Recursos/CSS/animate.css"/>
    <link rel="stylesheet" type="text/css" href="Recursos/CSS/style.css"/>
    <style>
        .wow:first-child {
            visibility: hidden;
        }
    </style>

</head>
<body>

    <!-- Start Header  -->
    <header>
        <div class="container">
            <div class="logo">
                <!--<a href="">UNI <span>GYM</span></a>-->
            </div>
            <a href="javascript:void(0)" class="ham-burger">
                <span></span>
                <span></span>
            </a>
            <div class="nav">
                <ul>
                    <li><a href="#home">Inicio</a></li>
                    <li><a href="/Index.aspx">Log-In</a></li>
                    <li><a href="#about">Acerca</a></li>
                    <li><a href="#service">Servicios</a></li>
                    <li><a href="#classes">Clases</a></li>
                    <li><a href="#schedule">Horarios</a></li>
                    <li><a href="#price">Precios</a></li>
                    <li><a href="#contact">Contacto</a></li>
                </ul>
            </div>
        </div>
    </header>
    <!-- End Header  -->
    <!-- Start Home -->
    <section class="home wow flash" id="home">
        <div class="container">
            <h1 class="wow slideInLeft" data-wow-delay="1s">Es <span>Hora</span> del <span>GYM!</span> Vamos!</h1>
            <h1 class="wow slideInRight" data-wow-delay="1s">Listos para <span>Ejercitarte!</span></h1>
        </div>
        <!-- go down -->
        <a href="#about" class="go-down">
            <i class="fa fa-angle-down" aria-hidden="true"></i>
        </a>
        <!-- go down -->

    </section>
    <!-- End Home -->
    <!-- Start About -->
    <section class="about" id="about">
        <div class="container">
            <div class="content">
                <div class="box wow bounceInUp">
                    <div class="inner">
                        <div class="img">
                            <img src="Recursos/CSS/assets/about1.jpg" alt="about" />
                        </div>
                        <div class="text">
                            <h4>Consulta Gratis</h4>
                            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries</p>
                        </div>
                    </div>
                </div>
                <div class="box wow bounceInUp" data-wow-delay="0.2s">
                    <div class="inner">
                        <div class="img">
                            <img src="Recursos/CSS/assets/about2.jpg" alt="about" />
                        </div>
                        <div class="text">
                            <h4>Mejor Entrenamiento</h4>
                            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries</p>
                        </div>
                    </div>
                </div>
                <div class="box wow bounceInUp" data-wow-delay="0.4s">
                    <div class="inner">
                        <div class="img">
                            <img src="Recursos/CSS/assets/about3.jpg" alt="about" />
                        </div>
                        <div class="text">
                            <h4>Entrena tu Cuerpo Perfecto</h4>
                            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End About -->
    <!-- Start Service -->
    <section class="service" id="service">
        <div class="container">
            <div class="content">
                <div class="text box wow slideInLeft">
                    <h2>Servicios</h2>
                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries</p>
                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries</p>
                    <a href="" class="btn">Start Now</a>
                </div>
                <div class="accordian box wow slideInRight">
                    <div class="accordian-container active">
                        <div class="head">
                            <h4>Equipamiento para Cardio</h4>
                            <span class="fa fa-angle-down"></span>
                        </div>
                        <div class="body">
                            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries</p>
                        </div>
                    </div>
                    <div class="accordian-container">
                        <div class="head">
                            <h4>Equipo Pesado</h4>
                            <span class="fa fa-angle-up"></span>
                        </div>
                        <div class="body">
                            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries</p>
                        </div>
                    </div>
                    <div class="accordian-container">
                        <div class="head">
                            <h4>Clases de Fitness</h4>
                            <span class="fa fa-angle-up"></span>
                        </div>
                        <div class="body">
                            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries</p>
                        </div>
                    </div>
                    <div class="accordian-container">
                        <div class="head">
                            <h4>Otros Servicios</h4>
                            <span class="fa fa-angle-up"></span>
                        </div>
                        <div class="body">
                            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End Service -->
    <!-- Start Classes -->
    <section class="classes" id="classes">
        <div class="container">
            <div class="content">
                <div class="box img wow slideInLeft">
                    <img src="Recursos/CSS/assets/class2.png" alt="classes" />
                </div>
                <div class="box text wow slideInRight">
                    <h2>Nuestras Clases</h2>
                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries,</p>
                    <div class="class-items">
                        <div class="item wow bounceInUp">
                            <div class="item-img">
                                <img src="Recursos/CSS/assets/class1.jpg" alt="classes" />
                                <div class="price">
                                    $99
                                </div>
                            </div>
                            <div class="item-text">
                                <h4>Ejercicios de Estiramiento</h4>
                                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
                                <a href="">Get Details</a>
                            </div>
                        </div>
                        <div class="item wow bounceInUp">
                            <div class="item-text">
                                <h4>Ejercicios de Estiramiento</h4>
                                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
                                <a href="">Get Details</a>
                            </div>
                            <div class="item-img">
                                <img src="Recursos/CSS/assets/class1.jpg" alt="classes" />
                                <div class="price">
                                    $99
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End Classes -->
    <!-- Start Today -->
    <section class="start-today">
        <div class="container">
            <div class="content">
                <div class="box text wow slideInLeft">
                    <h2>Empieza a Ejercitarte Hoy Mismo!</h2>
                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries,</p>
                    <a href="/login.html" class="btn">Empieza Ahora!</a>
                </div>
                <div class="box img wow slideInRight">
                    <img src="Recursos/CSS/assets/gallery4.jpg" alt="start today" />
                </div>

            </div>
        </div>
    </section>
    <!-- End Start Today -->
    <!-- Start Schedule -->
    <section class="schedule" id="schedule">
        <div class="container">
            <div class="content">
                <div class="box text wow slideInLeft">
                    <h2>Horario</h2>
                    <p>
                        Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries,
                    </p>
                    <img src="Recursos/CSS/assets/schedule1.png" alt="schedule" />
                </div>
                <div class="box timing wow slideInRight">
                    <table class="table">
                        <tbody>
                            <tr>
                                <td class="day">Monday</td>
                                <td><strong>9:00 AM</strong></td>
                                <td>Body Building <br /> 9:00 to 10:00 AM</td>
                                <td>Room No:210</td>
                            </tr>
                            <tr>
                                <td class="day">Tuesday</td>
                                <td><strong>9:00 AM</strong></td>
                                <td>Body Building <br /> 9:00 to 10:00 AM</td>
                                <td>Room No:210</td>
                            </tr>
                            <tr>
                                <td class="day">Wednesday</td>
                                <td><strong>9:00 AM</strong></td>
                                <td>Body Building <br /> 9:00 to 10:00 AM</td>
                                <td>Room No:210</td>
                            </tr>
                            <tr>
                                <td class="day">Thursday</td>
                                <td><strong>9:00 AM</strong></td>
                                <td>Body Building <br /> 9:00 to 10:00 AM</td>
                                <td>Room No:210</td>
                            </tr>
                            <tr>
                                <td class="day">Friday</td>
                                <td><strong>9:00 AM</strong></td>
                                <td>Body Building <br /> 9:00 to 10:00 AM</td>
                                <td>Room No:210</td>
                            </tr>
                            <tr>
                                <td class="day">Saturday</td>
                                <td><strong>9:00 AM</strong></td>
                                <td>Body Building <br /> 9:00 to 10:00 AM</td>
                                <td>Room No:210</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </section>
    <!-- End Schedule -->
    <!-- Start Gallery -->
    <section class="gallery" id="gallery">
        <h2>Workout Gallery</h2>
        <div class="content">
            <div class="box wow slideInLeft">
                <img src="Recursos/CSS/assets/gallery1.jpg" alt="gallery" />
            </div>
            <div class="box wow slideInRight">
                <img src="Recursos/CSS/assets/gallery2.jpg" alt="gallery" />
            </div>
            <div class="box wow slideInLeft">
                <img src="Recursos/CSS/assets/gallery3.jpg" alt="gallery" />
            </div>
            <div class="box wow slideInRight">
                <img src="Recursos/CSS/assets/gallery4.jpg" alt="gallery" />
            </div>
        </div>
    </section>
    <!-- End Gallery -->
    <!-- Start Price -->
    <section class="price-package" id="price">
        <div class="container">
            <h2>Elige tu Plan</h2>
            <p class="title-p">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, </p>
            <div class="content">
                <div class="box wow bounceInUp">
                    <div class="inner">
                        <div class="price-tag">
                            $59/Month
                        </div>
                        <div class="img">
                            <img src="Recursos/CSS/assets/price1.jpg" alt="price" />
                        </div>
                        <div class="text">
                            <h3>Body Building Training</h3>
                            <p>Get Free WiFi</p>
                            <p>Month to Month</p>
                            <p>No Time Restrictions</p>
                            <p>Gym and Cardio</p>
                            <p>Service Locker Rooms</p>
                            <a href="" class="btn">Join Now</a>
                        </div>
                    </div>
                </div>
                <div class="box wow bounceInUp" data-wow-delay="0.2s">
                    <div class="inner">
                        <div class="price-tag">
                            $69/Month
                        </div>
                        <div class="img">
                            <img src="Recursos/CSS/assets/price2.jpg" alt="price" />
                        </div>
                        <div class="text">
                            <h3>Body Building Training</h3>
                            <p>Get Free WiFi</p>
                            <p>Month to Month</p>
                            <p>No Time Restrictions</p>
                            <p>Gym and Cardio</p>
                            <p>Service Locker Rooms</p>
                            <a href="" class="btn">Join Now</a>
                        </div>
                    </div>
                </div>
                <div class="box wow bounceInUp" data-wow-delay="0.4s">
                    <div class="inner">
                        <div class="price-tag">
                            $99/Month
                        </div>
                        <div class="img">
                            <img src="Recursos/CSS/assets/price3.jpg" alt="price" />
                        </div>
                        <div class="text">
                            <h3>Body Building Training</h3>
                            <p>Get Free WiFi</p>
                            <p>Month to Month</p>
                            <p>No Time Restrictions</p>
                            <p>Gym and Cardio</p>
                            <p>Service Locker Rooms</p>
                            <a href="" class="btn">Join Now</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End Price -->
    <!-- Start Contact -->
    <section class="contact" id="contact">
        <div class="container">
            <div class="content">
                <div class="box form wow slideInLeft">
                    <form>
                        <input type="text" placeholder="Nombre">
                        <input type="text" placeholder="Correo Electronico">
                        <input type="text" placeholder="Numero de Telefono">
                        <textarea placeholder="Su Mensaje"></textarea>
                        <button type="submit">Enviar</button>
                    </form>
                </div>
                <div class="box text wow slideInRight">
                    <h2>Contactanos!</h2>
                    <p class="title-p">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.</p>
                    <div class="info">
                        <ul>
                            <li><span class="fa fa-map-marker"></span> Universidad Nacional de Ingenieria</li>
                            <li><span class="fa fa-phone"></span> +505 7788 9900</li>
                            <li><span class="fa fa-envelope"></span> fec@uni.com</li>
                        </ul>
                    </div>
                    <div class="social">
                        <a href=""><span class="fa fa-facebook"></span></a>
                        <a href=""><span class="fa fa-linkedin"></span></a>
                        <a href=""><span class="fa fa-skype"></span></a>
                        <a href=""><span class="fa fa-youtube-play"></span></a>
                    </div>

                    <div class="copy">
                        PowerBy &copy; Cafe y Bebidas Energeticas
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End Contact -->
    <!-- jquery -->

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script>
	$(document).ready(function(){

      $(".ham-burger, .nav ul li a").click(function(){

        $(".nav").toggleClass("open")

        $(".ham-burger").toggleClass("active");
      })
      $(".accordian-container").click(function(){
      	$(".accordian-container").children(".body").slideUp();
      	$(".accordian-container").removeClass("active")
      	$(".accordian-container").children(".head").children("span").removeClass("fa-angle-down").addClass("fa-angle-up")
      	$(this).children(".body").slideDown();
      	$(this).addClass("active")
      	$(this).children(".head").children("span").removeClass("fa-angle-up").addClass("fa-angle-down")
      })

       $(".nav ul li a, .go-down").click(function(event){
         if(this.hash !== ""){

              event.preventDefault();

              var hash=this.hash;

              $('html,body').animate({
                scrollTop:$(hash).offset().top
              },800 , function(){
                 window.location.hash=hash;
              });

              // add active class in navigation
              $(".nav ul li a").removeClass("active")
              $(this).addClass("active")
         }
      })
})

    </script>
    <script src="Recursos/CSS/wow.min.js"></script>
    <script>
    wow = new WOW(
      {
        animateClass: 'animated',
        offset:       0,
      }
    );
    wow.init();
    </script>
</body>
</html>

$( document ).ready(function() {

   if ($(window).width() < 1021) {
      $("#removecarousel").html('<img class="img-fluid" alt="2y3Agosto" src="/assets/dia.jpg" style="margin-top: 4rem;">');
      
   }

   if ($(window).width() > 1021) {
      $("#removecarousel").html("<div id='carouselExampleIndicators' class='carousel slide' data-ride='carousel'><ol class='carousel-indicators'><li data-target='#carouselExampleIndicators' data-slide-to='0' class='active'></li><li data-target='#carouselExampleIndicators' data-slide-to='1'></li><li data-target='#carouselExampleIndicators' data-slide-to='2'></li><li data-target='#carouselExampleIndicators' data-slide-to='3'></li></ol><div class='carousel-inner'><div class='carousel-item active'><img class='d-block w-100' alt='First slide' src='/assets/first_slide.jpg'></div><div class='carousel-item'><img class='d-block w-100' alt='Second slide' src='/assets/second_slide.jpg'></div><div class='carousel-item'><img class='d-block w-100' alt='Third slide' src='/assets/third_slide.jpg'></div><div class='carousel-item'><img class='d-block w-100' alt='Fourth slide' src='/assets/fourth_slide.jpg'></div></div><a class='carousel-control-prev' href='#carouselExampleIndicators' role='button' data-slide='prev'><span class='carousel-control-prev-icon' aria-hidden='true'></span><span class='sr-only'>Previous</span></a><a class='carousel-control-next' href='#carouselExampleIndicators' role='button' data-slide='next'><span class='carousel-control-next-icon' aria-hidden='true'></span><span class='sr-only'>Next</span></a></div>");
   }

   if ($(window).width() > 960) {
         $("#jueves").html("Jueves 2 de Agosto - Aquí es Donde Todo Comienza");
         $("#viernes").html("Viernes 3 de Agosto - Tienes que Vivirlo");
   }
   if ($(window).width() < 1200 && $(window).width() > 500) {
      $("#jueves").html("Jueves 2 de Agosto");
      $("#viernes").html("Viernes 3 de Agosto");
   }
   if ($(window).width() < 500) {
      $("#jueves").html("2 de Agosto");
      $("#viernes").html("3 de Agosto");
   }

   $(window).resize(function() {
      if ($(window).width() < 1021) {
         $("#removecarousel").html('<img class="img-fluid" alt="2y3Agosto" src="/assets/dia.jpg" style="margin-top: 4rem;">');
      }
      if ($(window).width() > 1021) {
         $("#removecarousel").html("<div id='carouselExampleIndicators' class='carousel slide' data-ride='carousel'><ol class='carousel-indicators'><li data-target='#carouselExampleIndicators' data-slide-to='0' class='active'></li><li data-target='#carouselExampleIndicators' data-slide-to='1'></li><li data-target='#carouselExampleIndicators' data-slide-to='2'></li><li data-target='#carouselExampleIndicators' data-slide-to='3'></li></ol><div class='carousel-inner'><div class='carousel-item active'><img class='d-block w-100' alt='First slide' src='/assets/first_slide.jpg'></div><div class='carousel-item'><img class='d-block w-100' alt='Second slide' src='/assets/second_slide.jpg'></div><div class='carousel-item'><img class='d-block w-100' alt='Third slide' src='/assets/third_slide.jpg'></div><div class='carousel-item'><img class='d-block w-100' alt='Fourth slide' src='/assets/fourth_slide.jpg'></div></div><a class='carousel-control-prev' href='#carouselExampleIndicators' role='button' data-slide='prev'><span class='carousel-control-prev-icon' aria-hidden='true'></span><span class='sr-only'>Previous</span></a><a class='carousel-control-next' href='#carouselExampleIndicators' role='button' data-slide='next'><span class='carousel-control-next-icon' aria-hidden='true'></span><span class='sr-only'>Next</span></a></div>");
      }
      if ($(window).width() > 960) {
         $("#jueves").html("Jueves 2 de Agosto - Aquí es Donde Todo Comienza");
         $("#viernes").html("Viernes 3 de Agosto - Tienes que Vivirlo");
      }
      if ($(window).width() < 1200 && $(window).width() > 500) {
         $("#jueves").html("Jueves 2 de Agosto");
         $("#viernes").html("Viernes 3 de Agosto");
      }
      if ($(window).width() < 500) {
         $("#jueves").html("2 de Agosto");
         $("#viernes").html("3 de Agosto");
      }
    });

    document.querySelectorAll('a[href^="#"]').forEach(anchor => {
        anchor.addEventListener('click', function (e) {
            e.preventDefault();

            document.querySelector(this.getAttribute('href')).scrollIntoView({
                behavior: 'smooth'
            });
        });
    });

  $("#jueves").click(function() {
      $("#tablebody").empty();
      $("#tablebody").append("<tr>");
      $("#tablebody").append('<td scope="row" style="border-bottom: 0.1rem solid #98bf13;">9:30 h</td>');
      $("#tablebody").append('<td style="border-bottom: 0.1rem solid #98bf13;">Registro</td>');
      $("#tablebody").append('<td style="border-bottom: 0.1rem solid #98bf13;">Centro Estudiantil</td>');
      $("#tablebody").append('</tr><tr>');
      $("#tablebody").append('<td scope="row" style="border-bottom: 0.1rem solid #98bf13;">10:00 h</td>');
      $("#tablebody").append('<td style="border-bottom: 0.1rem solid #98bf13;">Bienvenida</td>');
      $("#tablebody").append('<td style="border-bottom: 0.1rem solid #98bf13;">-</td>');
      $("#tablebody").append('</tr><tr>');
      $("#tablebody").append('<td scope="row" style="border-bottom: 0.1rem solid #98bf13;">10:30 h</td>');
      $("#tablebody").append('<td style="border-bottom: 0.1rem solid #98bf13;">Warmup</td>');
      $("#tablebody").append('<td style="border-bottom: 0.1rem solid #98bf13;">-</td>');
      $("#tablebody").append('</tr><tr>');
      $("#tablebody").append('<td scope="row" style="border-bottom: 0.1rem solid #98bf13;">11:00 h</td>');
      $("#tablebody").append('<td style="border-bottom: 0.1rem solid #98bf13;">Defile Borrego</td>');
      $("#tablebody").append('<td style="border-bottom: 0.1rem solid #98bf13;">-</td>');
      $("#tablebody").append('</tr><tr>');
      $("#tablebody").append('<td scope="row" style="border-bottom: 0.1rem solid #98bf13;">11:30 h</td>');
      $("#tablebody").append('<td style="border-bottom: 0.1rem solid #98bf13;">Start Your Journey</td>');
      $("#tablebody").append('<td style="border-bottom: 0.1rem solid #98bf13;">Gimnasio</td>');
      $("#tablebody").append('</tr><tr>');
      $("#tablebody").append('<td scope="row" style="border-bottom: 0.1rem solid #98bf13;">13:00 h</td>');
      $("#tablebody").append('<td style="border-bottom: 0.1rem solid #98bf13;">Comida</td>');
      $("#tablebody").append('<td style="border-bottom: 0.1rem solid #98bf13;">-</td>');
      $("#tablebody").append('</tr><tr>');
      $("#tablebody").append('<td scope="row" style="border-bottom: 0.1rem solid #98bf13;">14:30 h</td>');
      $("#tablebody").append('<td style="border-bottom: 0.1rem solid #98bf13;">Rally</td>');
      $("#tablebody").append('<td style="border-bottom: 0.1rem solid #98bf13;">-</td>');
      $("#tablebody").append('</tr><tr>');
      $("#tablebody").append('<td scope="row" style="border-bottom: 0.1rem solid #98bf13;">17:00 h</td>');
      $("#tablebody").append('<td style="border-bottom: 0.1rem solid #98bf13;">Been Tec Done That</td>');
      $("#tablebody").append('<td style="border-bottom: 0.1rem solid #98bf13;">-</td>');
      $("#tablebody").append('</tr><tr>');
      $("#tablebody").append('<td scope="row" style="border-bottom: 0.1rem solid #98bf13;">18:00 h</td>');
      $("#tablebody").append('<td style="border-bottom: 0.1rem solid #98bf13;">Team Back</td>');
      $("#tablebody").append('<td style="border-bottom: 0.1rem solid #98bf13;">-</td>');
      $("#tablebody").append('</tr><tr>');
      $("#tablebody").append('<td scope="row" >18:30 h</td>');
      $("#tablebody").append('<td>Cierre</td>');
      $("#tablebody").append('<td>-</td>');
      $("#tablebody").append('</tr>');
  });

  $( "#viernes" ).click(function() {
    $("#tablebody").empty();
      $("#tablebody").append("<tr>");
      $("#tablebody").append('<td scope="row" style="border-bottom: 0.1rem solid #ed8943;">9:00 h</td>');
      $("#tablebody").append('<td style="border-bottom: 0.1rem solid #ed8943;">Tienes Que Vivirlo</td>');
      $("#tablebody").append('<td style="border-bottom: 0.1rem solid #ed8943;">-</td>');
      $("#tablebody").append('</tr><tr>');
      $("#tablebody").append('<td scope="row" style="border-bottom: 0.1rem solid #ed8943;">10:30 h</td>');
      $("#tablebody").append('<td style="border-bottom: 0.1rem solid #ed8943;">Tienes Que Vivirlo</td>');
      $("#tablebody").append('<td style="border-bottom: 0.1rem solid #ed8943;">-</td>');
      $("#tablebody").append('</tr><tr>');
      $("#tablebody").append('<td scope="row" style="border-bottom: 0.1rem solid #ed8943;">12:20 h</td>');
      $("#tablebody").append('<td style="border-bottom: 0.1rem solid #ed8943;">Mensaje David Garza</td>');
      $("#tablebody").append('<td style="border-bottom: 0.1rem solid #ed8943;">Gimnasio</td>');
      $("#tablebody").append('</tr><tr>');
      $("#tablebody").append('<td scope="row" style="border-bottom: 0.1rem solid #ed8943;">13:20 h</td>');
      $("#tablebody").append('<td style="border-bottom: 0.1rem solid #ed8943;">Comida</td>');
      $("#tablebody").append('<td style="border-bottom: 0.1rem solid #ed8943;">-</td>');
      $("#tablebody").append('</tr><tr>');
      $("#tablebody").append('<td scope="row" style="border-bottom: 0.1rem solid #ed8943;">14:20 h</td>');
      $("#tablebody").append('<td style="border-bottom: 0.1rem solid #ed8943;">Tienes Que Vivirlo</td>');
      $("#tablebody").append('<td style="border-bottom: 0.1rem solid #ed8943;">-</td>');
      $("#tablebody").append('</tr><tr>');
      $("#tablebody").append('<td scope="row" style="border-bottom: 0.1rem solid #ed8943;">16:10 h</td>');
      $("#tablebody").append('<td style="border-bottom: 0.1rem solid #ed8943;">Bienvenida por Carrera</td>');
      $("#tablebody").append('<td style="border-bottom: 0.1rem solid #ed8943;">-</td>');
      $("#tablebody").append('</tr><tr>');
      $("#tablebody").append('<td scope="row" style="border-bottom: 0.1rem solid #ed8943;">17:10 h</td>');
      $("#tablebody").append('<td style="border-bottom: 0.1rem solid #ed8943;">Clausura</td>');
      $("#tablebody").append('<td style="border-bottom: 0.1rem solid #ed8943;">-</td>');
      $("#tablebody").append('</tr>');
  });
});

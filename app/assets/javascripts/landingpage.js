$( document ).ready(function() {

      $(window).resize(function() {
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
      $("#tablebody").append('<td style="border-bottom: 0.1rem solid #98bf13;">-</td>');
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
      $("#tablebody").append('<td style="border-bottom: 0.1rem solid #98bf13;">-</td>');
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
      $("#tablebody").append('<td scope="row" style="border-bottom: 0.1rem solid #98bf13;">9:30 h</td>');
      $("#tablebody").append('<td style="border-bottom: 0.1rem solid #98bf13;">Registro</td>');
      $("#tablebody").append('<td style="border-bottom: 0.1rem solid #98bf13;">-</td>');
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
      $("#tablebody").append('<td style="border-bottom: 0.1rem solid #98bf13;">-</td>');
      $("#tablebody").append('</tr><tr>');
      $("#tablebody").append('<td scope="row" style="border-bottom: 0.1rem solid #98bf13;">13:00 h</td>');
      $("#tablebody").append('<td style="border-bottom: 0.1rem solid #98bf13;">Comida</td>');
      $("#tablebody").append('<td style="border-bottom: 0.1rem solid #98bf13;">-</td>');
      $("#tablebody").append('</tr><tr>');
      $("#tablebody").append('<td scope="row" style="border-bottom: 0.1rem solid #98bf13;">14:30 h</td>');
      $("#tablebody").append('<td style="border-bottom: 0.1rem solid #98bf13;">Rally</td>');
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
});

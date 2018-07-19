$(document).ready(function(){
  $(".points_form").submit(function(){
    if( ($("#select_color").val()!="") && ($("#select_building").val()!="")){
      $(".invalid_feedback").append("Recuerda que solamente le puedes dar punto a un edificio o color a la vez");
      $(".invalid_feedback").css("color", "red");
      return false
    }
  });
});

$(document).ready(function(){
  $(".new_staff").submit(function(){
    if( ($("#staff_role").val() == "Capitán/a de edificio") && ($("#staff_building").val() == "")){
      $("#staff_building").addClass("is-invalid");
      $(".invalid_feedback").append("Si eres capitán/a de edificio, recuerda seleccionar el edificio al que perteneces")
      $(".invalid_feedback").css("color", "red");
      return false;
    }
  });
});

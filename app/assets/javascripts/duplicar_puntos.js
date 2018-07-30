$(document).ready(function(){
  $("#duplicar_puntos_staff").click(function(){
    $("#duplicar_puntos_staff").hide();
    var confirm_action = confirm("Duplicar puntos staff. Estas 100% seguro de lo que estas haciendo?");
    if(!confirm_action){
      location.reload();
      return false;
    }
    $.ajax({
          url: "/teams/duplicar_puntos_staff",
          type: 'POST'
        }).done(function(data){
          location.reload();
        })
  });
  $("#duplicar_puntos_student").click(function(){
    $("#duplicar_puntos_student").hide();
    var confirm_action = confirm("Duplicar puntos student. Estas 100% seguro de lo que estas haciendo?");
    if(!confirm_action){
      location.reload();
      return false;
    }
    var activity = $("#select_activity").val();
    $.ajax({
          url: "/teams/duplicar_puntos_student",
          type: 'POST',
          data: { activity: activity}
        }).done(function(data){
          location.reload();
        })
  });
});

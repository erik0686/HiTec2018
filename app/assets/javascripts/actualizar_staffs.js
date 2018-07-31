$(document).ready(function(){
  $("#actualizar_drive_staff").click(function(){
    $("#actualizar_drive_staff").hide();
    var confirm_action = confirm("Actualizar drive de staff. Estas 100% seguro de lo que estas haciendo?");
    if(!confirm_action){
      location.reload();
      return false;
    }
    $.ajax({
          url: "/staffs/actualizar_drive_staff",
          type: 'POST'
        }).done(function(data){
          location.reload();
        })
  });
});

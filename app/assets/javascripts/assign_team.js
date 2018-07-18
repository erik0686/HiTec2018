$(document).ready(function(){
  $(".student-register").submit(function(event){
    event.preventDefault();
    var matricula = $("#student-qr-code").val().substr(0,7);
    var id = $("#student-qr-code").val().substr(9);
    $.ajax({
          url: "/students/assign_team",
          type: 'POST',
          data: { matricula: matricula, id: id}
        }).done(function(data){
          $("#user_color").val(data.color);
          $("#user_building").val(data.edificio);
        })
    return false
  });
});

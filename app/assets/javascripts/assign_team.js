$(document).ready(function(){
  $(".student-register").submit(function(event){
    event.preventDefault();
    var id = $("#student-qr-code").val().substr(9);
    $.ajax({
          url: "/students/assign_team",
          type: 'POST',
          data: {id: id}
        }).done(function(data){
          $("#user_color").val(data.color);
          $("#user_building").val(data.edificio);
        })
    return false
  });
});

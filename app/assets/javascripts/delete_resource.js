$(document).ready(function(){
  $("#eliminarActividad").click(function(){
    var activity_id = $("#actividad-eliminar-HITEC").val();
    $.ajax({
          url: "/activities/borrar",
          type: 'DELETE',
          data: { activity_id: activity_id}
        }).done(function(data){
          alert("Actividad eliminada con éxito!");
          location.reload();
        })
  });

  $("#eliminarEdificio").click(function(){
    var building_name = $("#edificio-eliminar-HITEC").val();
    $.ajax({
          url: "/buildings/borrar",
          type: 'DELETE',
          data: { name: building_name}
        }).done(function(data){
          alert("Edificio eliminado con éxito!");
          location.reload();
        })
  });

  $("#eliminarColor").click(function(){
    var color_id = $("#color-eliminar-HITEC").val();
    $.ajax({
          url: "/colors/borrar",
          type: 'DELETE',
          data: { color_id: color_id}
        }).done(function(data){
          alert("Color eliminado con éxito!");
          location.reload();
        })
  });
})

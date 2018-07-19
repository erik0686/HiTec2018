$(document).ready(function(){
  $("#agregarColor").click(function(){
    $(".btn").hide();
    var color_name = $("#color-agregar-HITEC").val();
    if(color_name != ""){
      $.ajax({
            url: "/colors/agregar",
            type: 'POST',
            data: { name: color_name}
          }).done(function(data){
            alert("Color agregado con éxito!");
            location.reload();
          })
    }
  });

  $("#agregarEdificio").click(function(){
    $(".btn").hide();
    var building_name = $("#edificio-agregar-HITEC").val();
    if(building_name != ""){
      $.ajax({
            url: "/buildings/agregar",
            type: 'POST',
            data: { name: building_name}
          }).done(function(data){
            alert("Edificio agregado con éxito!");
            location.reload();
          })
      }
  });

  $("#agregarActividad").click(function(){
    $(".btn").hide();
    var activity_name = $("#actividad-agregar-HITEC").val();
    if(activity_name != ""){
      $.ajax({
            url: "/activities/agregar",
            type: 'POST',
            data: { name: activity_name }
          }).done(function(data){
            alert("Actividad agregada con éxito!");
            location.reload();
          })
    }
  });
})

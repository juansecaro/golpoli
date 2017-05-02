var globalJSON;
var miArray = new Array(48);
var mday;
var id;

$(document).on('turbolinks:load', function() {
  $('.datepicker').datepicker({
    onSelect: function(date) {
      mday = date.substring(0, 2);
      //Field id saved in hidden value
      id = document.getElementById("field_id").value;

      $.ajax({
          url: '/horarios',
          type: 'GET',
          dataType: 'json',
          cache: false,
          data: { day: mday, field_id: id },
          success: function(data) {
                // data is a json object
                globalJSON = data;
                // Start creating table with JSON's information
                createTable(data);

            },
          error: function() {
              console.log('error');
              alert('Error al cargar los horarios. Por favor, inténtelo de nuevo más tarde.');
          },
          complete: function(xhr) {
              console.log('complete json loading');
              console.log(xhr.getAllResponseHeaders());
          }
      });

    },
    firstDay: 1,
    monthNames: ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio', 'Julio', 'Agosto', 'Septiembre', 'Octubre', 'Noviembre', 'Diciembre'],
    monthNamesShort: ['Ene', 'Feb', 'Mar', 'Abr', 'May', 'Jun', 'Jul', 'Ago', 'Sep', 'Oct', 'Nov', 'Dic'],
    dayNames: ['Domingo', 'Lunes', 'Martes', 'Miércoles', 'Jueves', 'Viernes', 'Sábado'],
    dayNamesShort: ['Dom', 'Lun', 'Mar', 'Mié', 'Juv', 'Vie', 'Sáb'],
    dayNamesMin: ['Do', 'Lu', 'Ma', 'Mi', 'Ju', 'Vi', 'Sá'],
    weekHeader: 'Sm',
    dateFormat: 'dd/mm/yy',
    isRTL: false,
    showMonthAfterYear: false,
    yearSuffix: '',
    closeText: 'Cerrar',
    prevText: '< Ant',
    nextText: 'Sig >',
    currentText: 'Hoy',
    maxDate: "+1w",
    minDate: 0
  });

});


// Creation of void table with times and IDs
function createTable(json){
//Erasing previous data in case it had
    eraseTable();
    eraseReservations();

$('#dynamictable').append('<table></table>');
var table = $('#dynamictable').children();
table.append("<tr><td colspan='3'>Nombre de Pista</td></tr>");
table.append("<tr><td>Hora</td><td>30 min</td><td>30 min</td></tr>");
var root = "h";
var val1,val2;
for (h=0;h<24;h++){
  i=h*2;
  val1 = eval("json."+(root+i));//concat strings and values to access h vars
  val2 = eval("json."+(root+(i+1)));
  miArray[i] = val1;
  miArray[i+1] = val2;

  if (val1 != null &&  val2 != null){
    table.append("<tr><td>"+formattedH(h)+":00 </td> <td id="+i+">"+val1+"</td><td id="+(i+1)+">"+val2+"</td></tr>");
    switch(val1) {
        case 0:  $('#'+i).css({"background-color": "#8CFF83"});  break; //free
        case 1:  $('#'+i).css({"background-color": "#542604"});  break; //occupaid
        case 2:  $('#'+i).css({"background-color": "#FF740D"});  break; //unconfirmed
        case 3:  $('#'+i).css({"background-color": "#4C9DFF"});  break; //unavailable
        default: $('#'+i).css({"background-color": "#CCC"}); //out of time
    }
    switch(val2) {
        case 0:  $('#'+(i+1)).css({"background-color": "#8CFF83"});  break; //free
        case 1:  $('#'+(i+1)).css({"background-color": "#542604"});  break; //occupaid
        case 2:  $('#'+(i+1)).css({"background-color": "#FF740D"});  break; //unconfirmed
        case 3:  $('#'+(i+1)).css({"background-color": "#4C9DFF"});  break; //unavailable
        default: $('#'+(i+1)).css({"background-color": "#CCC"}); //out of time
    }
  }
  }
  console.log(miArray);
}


// Removing old tables for different days selections
function eraseTable(){
    var el = document.getElementById('dynamictable');
    while( el.hasChildNodes() ){
        el.removeChild(el.lastChild);
    }
}
function eraseReservations(){
  //Clean up html
    var el = document.getElementById('booking');
    while( el.hasChildNodes() ){
        el.removeChild(el.lastChild);
    }
    //Clean up array
    for (var i in miArray) {
      if (miArray[i]==9) {
        miArray[i]=0;
      }
    }
}
//Selection-Deselection specifics cells
$(document).on( 'turbolinks:load', function(){
     $("#dynamictable").on('click','td', function() {
         //alert($(this).attr('id'));
         var p = ($(this).attr('id'));//ID's selected point
         if (miArray[p] == 0){
            miArray[p] = 9;
            $('#'+ p).css({"background-color": "red"});
            $('#booking').append("<p id="+'m'+p+">"+hourById(p)+"<p>");
          }
          else if (miArray[p] == 9) {
            miArray[p]=0;
            $('#'+ p).css({"background-color": "#8CFF83"});
            $('#m'+p ).remove();

          }
     });
});
//Reconstruct JSON with changes to be validated
function JSONBack()
{

    $.ajax({
        url: '/horarios',
        type: 'GET',
        dataType: 'json',
        cache: false,
        data: { day: mday, field_id: id },
        success: function(data) {
            if (compareObjects(data,globalJSON)){




            // post con nuevo jSON






                console.log("Iguales");
                alert("All right"); }
            else {
                alert("Otro usuario ha hecho reservas en esta pista mientas decidias. Se actualizarán los horarios");
                location.reload(forceGet = true); //Page update from the server
                console.log("Diferentes");
              }
        },
        error: function() {
            console.log('error');
            alert('Error al cargar los horarios. Por favor, inténtelo de nuevo más tarde.');
        },
        complete: function(xhr) {
            console.log('complete json loading');
            console.log(xhr.getAllResponseHeaders());
        }
    });

}
function arrayToJSON(){









}
// Just put 0 back to the number if < 9
function formattedH (h)
{
  if (h<=9) {return ('0'+h)}
  else return h;
}
function compareObjects(obj1, obj2) {
    return JSON.stringify(obj1) === JSON.stringify(obj2);
}
//Given an ID, shows reservation selected
function hourById(id){
  var h = id/2;
  var hf;
  var exp;

  if (id%2 != 0){
     hf = Math.ceil(h) + ":00";
     h = Math.floor(h) + ":30";
    }
  else  {
    hf = Math.floor(h) + ":30";
    h = h + ":00";
    }

    exp = "De "+h+" a "+hf+" ";

  return exp;

}

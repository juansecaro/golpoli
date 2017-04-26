
$(document).on('turbolinks:load', function() {
  $('.datepicker').datepicker({
    onSelect: function(date) {
      var mday = date.substring(0, 2);
      //Field id saved in hidden value
      var id = document.getElementById("field_id").value;

      $.ajax({
          url: '/horarios',
          type: 'GET',
          dataType: 'json',
          cache: false,
          data: { day: mday, field_id: id },
          success: function(data) {
                // data is a json object.
                //console.log(data);
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
  if (val1 != null &&  val2 != null){
    table.append("<tr><td>"+formattedH(h)+":00 </td> <td id="+i+">"+val1+"</td><td id="+(i+1)+">"+val2+"</td></tr>");
    }
  }

}
// Just put 0 back to the number if < 9
function formattedH (h)
{
  if (h<=9) {return ('0'+h)}
  else return h;
}
function eraseTable(){
    var el = document.getElementById('dynamictable');
    while( el.hasChildNodes() ){
        el.removeChild(el.lastChild);
    }
}
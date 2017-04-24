
$(document).on('turbolinks:load', function() {
  $('.datepicker').datepicker({
    onSelect: function(date) {
      var mday = date.substring(0, 2);
      //Field id saved in hidden value
      var id = document.getElementById("field_id").value;
      $.get('/horarios', {day: mday, field_id: id}, function(data){});
          alert(id);

            //alert(Number(mday));
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
function createTable(){

$('#dynamictable').append('<table></table>');
var table = $('#dynamictable').children();
table.append("<tr><td colspan='3'>Nombre de Pista</td></tr>");
var j;
for (h=0;h<24;h++){
  i=h*2;
  table.append("<tr><td>"+h+":00 </td> <td id="+i+">c</td><td id="+(i+1)+">b</td></tr>");
  }
}

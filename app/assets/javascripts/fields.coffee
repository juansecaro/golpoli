
# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

#Restricting datepicker selecting options and translation to Spanish
$(document).on 'turbolinks:load', ->
  $('.datepicker').datepicker(
    firstDay: 1
    monthNames: ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio', 'Julio', 'Agosto', 'Septiembre', 'Octubre', 'Noviembre', 'Diciembre'],
    monthNamesShort: ['Ene','Feb','Mar','Abr', 'May','Jun','Jul','Ago','Sep', 'Oct','Nov','Dic'],
    dayNames: ['Domingo', 'Lunes', 'Martes', 'Miércoles', 'Jueves', 'Viernes', 'Sábado'],
    dayNamesShort: ['Dom','Lun','Mar','Mié','Juv','Vie','Sáb'],
    dayNamesMin: ['Do','Lu','Ma','Mi','Ju','Vi','Sá'],
    weekHeader: 'Sm',
    dateFormat: 'dd/mm/yy',
    isRTL: false,
    showMonthAfterYear: false,
    yearSuffix: ''
    closeText: 'Cerrar',
    prevText: '< Ant',
    nextText: 'Sig >',
    currentText: 'Hoy',
    maxDate: "+1w",
    minDate: 0
  )

#Dynamic table creation
#$(document).on 'turbolinks:load', ->
#  $('#dynamictable').append('<table></table>')
#  table = $('#dynamictable').children()
 


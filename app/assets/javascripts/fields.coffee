
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
$(document).on 'turbolinks:load', ->
  $('#dynamictable').append('<table></table>')
  table = $('#dynamictable').children()
  js_hash = loadHash()
  i for i in [0..47] by 2
    table.append("<tr><td id="i"></td><td id="i+1"></td></tr>")


loadHash = ->
  0:<%@field.schedule.h0%>
  1:<%@field.schedule.h1%>
  2:<%@field.schedule.h2%>
  3:<%@field.schedule.h3%>
  4:<%@field.schedule.h4%>
  5:<%@field.schedule.h5%>
  6:<%@field.schedule.h6%>
  7:<%@field.schedule.h7%>
  8:<%@field.schedule.h8%>
  9:<%@field.schedule.h9%>
  10:<%@field.schedule.h10%>
  11:<%@field.schedule.h11%>
  12:<%@field.schedule.h12%>
  13:<%@field.schedule.h13%>
  14:<%@field.schedule.h14%>
  15:<%@field.schedule.h15%>
  16:<%@field.schedule.h16%>
  17:<%@field.schedule.h17%>
  18:<%@field.schedule.h18%>
  19:<%@field.schedule.h19%>
  20:<%@field.schedule.h20%>
  21:<%@field.schedule.h21%>
  22:<%@field.schedule.h22%>
  23:<%@field.schedule.h23%>
  24:<%@field.schedule.h24%>
  25:<%@field.schedule.h25%>
  26:<%@field.schedule.h26%>
  27:<%@field.schedule.h27%>
  28:<%@field.schedule.h28%>
  29:<%@field.schedule.h29%>
  30:<%@field.schedule.h30%>
  31:<%@field.schedule.h31%>
  32:<%@field.schedule.h32%>
  33:<%@field.schedule.h33%>
  34:<%@field.schedule.h34%>
  35:<%@field.schedule.h35%>
  36:<%@field.schedule.h36%>
  37:<%@field.schedule.h37%>
  38:<%@field.schedule.h38%>
  39:<%@field.schedule.h39%>
  40:<%@field.schedule.h40%>
  41:<%@field.schedule.h41%>
  42:<%@field.schedule.h42%>
  43:<%@field.schedule.h43%>
  44:<%@field.schedule.h44%>
  45:<%@field.schedule.h45%>
  46:<%@field.schedule.h46%>
  47:<%@field.schedule.h47%>

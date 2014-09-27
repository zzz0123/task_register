$ ->
  $('#calendar').fullCalendar
    firstDay: 1
    timeFormat:
      '': 'HH:mm '
    buttonText:
      today: 'this month'

    selectable: true
    select: (select)->
      location.href = '/tasks/new?date=' + select.toISOString()

    allDayDefault: false
    events: '/tasks.json'
    eventClick: (event)->
      location.href = '/tasks/' + event.id + '/edit/'

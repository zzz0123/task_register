$ ->
  $('#calendar').fullCalendar
    firstDay: 1
    timeFormat:
      '': 'HH:mm '
    buttonText:
      today: 'this month'

    selectable: true
    select: ->
      location.href = '/tasks/new'

    allDayDefault: false
    events: '/tasks.json'
    eventClick: (event)->
      location.href = '/tasks/' + event.id + '/edit/'

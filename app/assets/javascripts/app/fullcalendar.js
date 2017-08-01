$(document).ready(function() {

  // page is now ready, initialize the calendar...

  $('#calendar').fullCalendar({
    // put your options and callbacks here
    editable: false, // Don't allow editing of events
    handleWindowResize: true,
    weekends: false, // Hide weekends
    defaultView: 'agendaWeek', // Only show week view
    minTime: '08:00:00', // Start time for the calendar
    maxTime: '19:00:00', // End time for the calendar
    theme: true,
    weekends: false,
    firstDay: 1,
    showNonCurrentDates: false,
    header: {
      left: 'prev,next today myCustomButton',
      center: 'title',
      right: 'month,agendaWeek,agendaDay'
    },
    buttonIcons: {
      prev: 'left-single-arrow',
      next: 'right-single-arrow',
      prevYear: 'left-double-arrow',
      nextYear: 'right-double-arrow'
    },
    events: '/account/dashboard.json',
    height: 675,
    locale: "fr"
  })
});
